FROM squidfunk/mkdocs-material

WORKDIR /
COPY mkdocs.yml /mkdocs.yml

RUN pip install mkdocs-macros-plugin
RUN pip install mkdocs-glightbox
RUN pip install mike

# Configure Git identity
RUN git config --global user.name "maltonoloco" \
 && git config --global user.email "malte.kottmann@web.de"

# Add github hostkey to known_hosts
RUN mkdir -p /root/.ssh \
 && ssh-keyscan github.com >> /root/.ssh/known_hosts

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]