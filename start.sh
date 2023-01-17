CID=$(docker ps -a | grep linux | cut -d' ' -f1)

if [ "x${CID}" != "x" ]
then
	echo "Stopping..."
	docker stop $CID >/dev/null 2>&1
	docker rm $CID >/dev/null 2>&1
fi

echo "Starting..."
docker run -it --name linux -v $(pwd)/docs:/home/vpez/docs docker.io/vpez/linux:dev
