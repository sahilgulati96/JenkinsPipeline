WORKSPACE=/home/sahil/jenkins_home/workspace/mavenproject

echo "Starting Tests for the maven App"
docker run --rm -v /home/sahil/jenkins_home/workspace/mavenproject/mavenapp:/app -v /root/.m2:/root/.m2 -w /app maven:alpine "$@"


