.PHONY : test build-processor
test: build-processor
	docker-compose up -d
	docker-compose restart
clean:
	docker-compose stop && docker-compose rm -f
start-nifi:
	docker-compose up -d
build-processor:
	cd test && mvn clean install
