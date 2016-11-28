# Apache Tamaya Incubating SITE repository

This repository contains the homepage of Apache Tamaya (incubating).
We are using jBake to generate a static page. It is enhanced by maven-generated artifacts such as Javadoc.

## Current status

### 2016-09: plan to migrate
* As of 2016-09 we started to migrate to a jbake setup since the maven-generated site was based on a deprecated maven skin and had SSL problems.
* Current working status: https://issues.apache.org/jira/browse/TAMAYA-178

## Available branches
### Master branch

Contains the jbake original files and all binaries (images, fonts, static JS) and the base contents.

tbd:
* basic file layout?
* what goes where?

### ASF-site branch

Is linked to ....
https://issues.apache.org/jira/browse/INFRA-12814

### How to generate a new page

#### Locally

tbd

1. Clone this repository.
1. Launch the bash script
```
$ ./bake.sh
```
1. Point your browser to http://localhost:8820/

#### Remote

tbd

1. Generate Javadoc for Tamaya
```
$ cd tamaya
$ mvn javadoc:javadoc
```
1. Launch the bash script to generate the homepage and switch the the asf branch:
```
$ git checkout master
$ ./copy-site.sh
```
1. Make sure you are on branch asf-site! Copy the generated Javadoc into apidocs
```
$ git checkout asf-site
$ cp -r pathToJavadoc/* ./apidocs/
```
1. Push your changes
```
$ git push
```
1. Wait a couple of minutes for the gitpubsub to happen.
1. Go to xyz/tbd in your browser
