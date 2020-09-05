echo "Starting Tests for the maven App"
docker run --rm -v $(pwd)/mavenapp:/app -v /root/.m2:/root/.m2 -w /app maven:alpine "$@"


