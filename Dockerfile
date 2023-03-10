FROM alpine
LABEL org.opencontainers.image.title="Neo4j" \
    org.opencontainers.image.description="Neo4j Extension for Docker Desktop" \
    org.opencontainers.image.vendor="Ajeet Singh Raina" \
    com.docker.desktop.extension.api.version="0.3.0" \
    com.docker.extension.screenshots="" \
    com.docker.extension.categories="Databases" \
    com.docker.desktop.extension.icon="https://www.vectorlogo.zone/util/preview.html?image=/logos/neo4j/neo4j-ar21.svg" \
    com.docker.extension.detailed-description="Neo4j is a highly scalable, robust native graph database. It is more suitable for certain big data and analytics applications." \
    com.docker.extension.publisher-url="https://github.com/collabnix/neo4j-docker-extension" \
    com.docker.extension.additional-urls='[{"title":"Documentation","url":"https://neo4j.com/docs/"}, {"title":"Support","url":"https://support.neo4j.com/hc/en-us"}, {"title":"Terms of Service","url":"https://neo4j.com/terms/"}, {"title":"Privacy policy","url":"https://neo4j.com/privacy-policy/"}]' \
    com.docker.extension.changelog="https://raw.githubusercontent.com/collabnix/neo4j-docker-extension/main/CHANGELOG.md"

COPY docker-compose.yaml .
COPY metadata.json .
COPY neo4j.svg .
COPY ui ui
