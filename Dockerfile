FROM alpine
LABEL org.opencontainers.image.title="Neo4j" \
    org.opencontainers.image.description="Neo4j Extension for Docker Desktop" \
    org.opencontainers.image.vendor="Ajeet Singh Raina" \
    com.docker.desktop.extension.api.version="0.3.0" \
    com.docker.extension.screenshots="[ \
    {\"url\": \"https://raw.githubusercontent.com/collabnix/neo4j-docker-extension/main/neo4j-sensor.png\", \"alt\": \"Screenshot\"} \
    ]" \
    com.docker.extension.categories="Databases" \
    com.docker.desktop.extension.icon="https://raw.githubusercontent.com/collabnix/neo4j-docker-extension/main/neo4j.svg"  \
    com.docker.extension.detailed-description="Neo4j is a highly scalable, robust native graph database. Neo4j is known for its scalability, performance, and flexibility. It supports a wide range of programming languages, including Java, Python, and .NET, and it offers a variety of tools and libraries for working with graph data. Additionally, Neo4j provides a number of features for data visualization, querying, and analytics, making it a popular choice for companies and organizations looking to leverage the power of graph data.	<br><br>To login to the local Neo4j database, you can use the username 'neo4j' and the password 'password' " \
    com.docker.extension.publisher-url='[{"title":"GitHub", "url":"https://github.com/collabnix/neo4j-docker-extension/"}]' \
    com.docker.extension.additional-urls='[{"title":"GitHub","url":"https://github.com/collabnix/neo4j-docker-extension/"}]' \
    com.docker.extension.changelog=""

COPY docker-compose.yaml .
COPY metadata.json .
COPY neo4j.svg .
COPY ui ui
