
test: build-processor
	docker-compose up -d
	docker-compose restart
clean:
	docker-compose stop && docker-compose rm -f
start:
	docker-compose up -d
build-processor:
	# cd nifi-sparql-integrate-bundle && mvn clean install
	cd nifi-ckan-bundle && mvn clean install
	cd nifiCkanProcessor && mvn clean install
	cd nifi-file-from-template-processor && mvn clean install
