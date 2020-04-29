test: build-processor sync
	docker-compose up -d
	docker-compose restart
sync:
	rm -rf ./projects/link-discovery-and-data-fusion
	cp -r ./../link-discovery-and-data-fusion ./projects/link-discovery-and-data-fusion
clean:
	docker-compose stop && docker-compose rm -f
start:
	docker-compose up -d
build-processor:
	cd processors/nifi-sparql-integrate-bundle && mvn clean install
	# cd processors/nifi-ckan-bundle && mvn clean install
	# cd processors/nifiCkanProcessor && mvn clean install
	# cd processors/nifi-file-from-template-processor && mvn clean install
