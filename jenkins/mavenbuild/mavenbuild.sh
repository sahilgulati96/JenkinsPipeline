echo "Starting Build of the maven App"
docker run --rm -v $(pwd)/../../mavenapp:/app -v /root/.m2:/root/.m2 -w /app maven:alpine "$@"

echo "Copy the Jar file to build Directory"
cp ../../mavenapp/target/*jar ./

echo "Creating dockerimage for the Jar"
docker-compose build --no-cache

echo "Removing Residue"
rm *jar
