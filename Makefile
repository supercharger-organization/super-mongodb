
docker-run-detached:
	docker run -d --restart unless-stopped --name super-mongodb -p 27017:27017 robertrossilli/super-mongodb:1

docker-run:
	docker run --restart unless-stopped --name super-mongodb -p 27017:27017 robertrossilli/super-mongodb:1
