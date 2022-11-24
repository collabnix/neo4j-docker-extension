FROM alpine
LABEL org.opencontainers.image.title="The Neo4j Docker Extension" \
    org.opencontainers.image.description="Neo4j Extension for Docker Desktop" \
    org.opencontainers.image.vendor="Docker Inc." \
    com.docker.desktop.extension.api.version="0.3.0" \
    com.docker.extension.screenshots="" \
    com.docker.extension.detailed-description="" \
    com.docker.extension.publisher-url="" \
    com.docker.extension.additional-urls="" \
    com.docker.extension.changelog=""

COPY docker-compose.yaml .
COPY metadata.json .
COPY docker.svg .
COPY neo4j.svg .
COPY ui ui
