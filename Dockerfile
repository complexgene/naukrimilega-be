FROM java:8-jdk
WORKDIR "/app"
COPY run.sh .
COPY api/target/api-*.jar app.jar
COPY api/src/main/resources/stage/config.yaml config.yaml
CMD ["sh", "run.sh"]