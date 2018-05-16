# Apache Nifi Prototype

## Table of Contents

- [Knowledge](#knowledge)
- [Pybossa Nifi Adapter](#pybossa-nifi-adapter)
  - [Installation](#installation)
  - [URLs](#urls)
  - [Known Issues](#known-issues)
- [Nifi Test Processor](#nifi-test-processor)
  - [Running and Debugging](#running-and-debugging)
- [Possible Processors](#possible-processors)

## Knowledge

- [Developing A Custom Apache Nifi Processor (JSON)](http://www.nifi.rocks/developing-a-custom-apache-nifi-processor-json/)
- [Chaffelson/nipyapi: A convenient Python wrapper for Apache NiFi](https://github.com/Chaffelson/nipyapi)
- [nifi/nifi-toolkit/nifi-toolkit-cli at nifi-registry-toolkit · bbende/nifi](https://github.com/bbende/nifi/tree/nifi-registry-toolkit/nifi-toolkit/nifi-toolkit-cli)

## Pybossa Nifi Adapter

### Installation

1. [Install Pybossa](https://docs.pybossa.com/installation/vagrant/).
2. [Install PYBOSSA command line client](https://github.com/Scifabric/pbs).
3. Start Pybossa
4. Goto [Pybossa](http://localhost:5000/) and create account.
5. Upload Pybossa project to pybossa.
6. `docker-compose up`
7. Goto Nifi group and adjust variables

### URLs

- [NiFi](http://localhost:9090/nifi/)
- [PyBossa - PyBossa by Scifabric](http://localhost:5000/)
- [Virtuoso SPARQL Query Editor](http://localhost:8890/sparql)

### Known Issues

- [Vagrant up after a halt fails to start pybossa server · Issue #1799 · Scifabric/pybossa](https://github.com/Scifabric/pybossa/issues/1799)

## Nifi Test Processor

### Running and Debugging

1. Build, copy nar and restart nifi.
   ```
   make test
   ```
2. For debugging connect remote debugger to `http://localhost:4364`

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
