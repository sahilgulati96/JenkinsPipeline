echo "Starting Build of the maven App"
docker run --rm -v $(pwd)/JenkinsPipeline/mavenapp:/app -v /root/.m2:/root/.m2 -w /app maven:alpine "$@"

echo "Copy the Jar file to build Directory"
cp ./mavenapp/target/*jar ./

echo "Creating dockerimage for the Jar"
docker build -t app:$BUILD_TAG -f dockerfileRunningJar --no-cache .

