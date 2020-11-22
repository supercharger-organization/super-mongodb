docker-build:
	docker build --tag super-mongodb:1.0 .

docker-run-detached:
	docker run -d --restart unless-stopped -p 27017:27017 --name super-mongodb super-mongodb:1.0

docker-run:
	docker run --restart unless-stopped -p 27017:27017 --name super-mongodb super-mongodb:1.0 

## DANGER ## 
## populates database with default data
mongorestore-default:
	@( read -p "DANGER: Are you sure you want to populate the database with default data? [y/N]: " sure && case "$$sure" in [yY]) true;; *) false;; esac )
	mongorestore -h localhost:27017 --db SDB_Testing --gzip dump/SDB_Testing/