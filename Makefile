.PHONY : test build-processor
test: build-processor
	docker-compose up -d
	docker-compose restart
	cd test && mvn dependency:sources
	cd test && mvn dependency:unpack-dependencies -Dclassifier=sources -Dmdep.failOnMissingClassifierArtifact=false
clean:
	docker-compose stop && docker-compose rm -f
start-nifi:
	docker-compose up -d
build-processor:
	cd test && mvn clean install
