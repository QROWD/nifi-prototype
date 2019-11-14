test: build-processor
	docker-compose up -d
	docker-compose restart
clean:
	docker-compose stop && docker-compose rm -f
start:
	docker-compose up -d
build-processor:
	cd processors/nifi-sparql-integrate-bundle && mvn clean install
	cd processors/nifi-ckan-bundle && mvn clean install
	cd processors/nifiCkanProcessor && mvn clean install
	cd processors/nifi-file-from-template-processor && mvn clean install
