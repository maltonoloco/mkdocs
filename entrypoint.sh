#!/bin/sh
set -e

# Fix SSH key permissions
chmod 600 /root/.ssh/id_ed25519 || true
chown root:root /root/.ssh/config || true

if [ ! -d /docs/.git ]; then
  echo "No .git folder found in /docs. Cloning repository..."
  rm -rf /docs/* 2>/dev/null || true
  git clone https://github.com/maltonoloco/mkdocs_test_doc.git docs/
else
  echo "Git repository found in /docs. Pulling latest changes..."
  cd /docs/
  git pull
fi

# switch branch to gh-pages
cd /docs
echo "Switch branch to gh-pages"
git checkout gh-pages

# Start MkDocs dev server on port 8000
mkdocs serve -f /mkdocs.yml -a 0.0.0.0:8000