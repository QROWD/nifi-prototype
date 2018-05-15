.PHONY : test build-processor
test: build-processor
	docker-compose up -d
	docker-compose restart
clean:
	docker-compose stop && docker-compose rm -f
start-nifi:
	docker-compose up -d
build-processor:
	cd test/nifi-test-processors && mvn clean install
	cd test/nifi-test-nar && mvn clean install

