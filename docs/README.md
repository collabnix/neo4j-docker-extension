# Building Your First Extension

Prereq:
- NodeJS
- Go
- Docker Desktop 4.8+




```
docker extension init neo4jext
```
```
cd neo4jext
docker build -t ajeetraina/neo4j-ext:latest .
docker extension install ajeetraina/neo4j-ext:latest
```
