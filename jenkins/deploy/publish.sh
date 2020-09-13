export IMAGE=$(sed -n '1p' /tmp/.auth)
export BUILD_TAG=$(sed -n '2p' /tmp/.auth)
docker-compose up -d
