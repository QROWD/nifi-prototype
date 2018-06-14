
test: build-processor
	docker-compose up -d
	docker-compose restart
clean:
	docker-compose stop && docker-compose rm -f
start:
	docker-compose up -d
build-processor:
	cd nifi-sparql-integrate-bundle && mvn clean install
