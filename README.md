# Apache Nifi Prototype

## Table of Contents

- [Installation](#installation)
- [URLs](#urls)
- [Known Issues](#known-issues)
- [Possible Processors](#possible-processors)

## Knowledge

- [Developing A Custom Apache Nifi Processor (JSON)](http://www.nifi.rocks/developing-a-custom-apache-nifi-processor-json/)

## Installation

1. [Install Pybossa](https://docs.pybossa.com/installation/vagrant/).
2. [Install PYBOSSA command line client](https://github.com/Scifabric/pbs).
3. Start Pybossa
4. Goto [Pybossa](http://localhost:5000/) and create account.
5. Upload Pybossa project to pybossa.
6. `docker-compose up`
7. Goto Nifi group and adjust variables

## URLs

- [NiFi](http://localhost:9090/nifi/)
- [PyBossa - PyBossa by Scifabric](http://localhost:5000/)
- [Virtuoso SPARQL Query Editor](http://localhost:8890/sparql)

## Known Issues

- [Vagrant up after a halt fails to start pybossa server · Issue #1799 · Scifabric/pybossa](https://github.com/Scifabric/pybossa/issues/1799)

## Possible Processors

- sparql-integrate
- query-sparql
- sparql-update
- limes
- rdf-converter
- ckan upload
- insert dcat
- merge rdf
- insert triples
