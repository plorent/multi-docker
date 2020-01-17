docker build -t plorent/multi-client:latest -t plorent/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t plorent/multi-server:latest -t plorent/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t plorent/multi-worker:latest -t plorent/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push plorent/multi-client:latest
docker push plorent/multi-server:latest
docker push plorent/multi-worker:latest

docker push plorent/multi-client:$SHA
docker push plorent/multi-server:$SHA
docker push plorent/multi-worker:$SHA