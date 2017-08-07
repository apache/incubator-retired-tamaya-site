# Apache Tamaya Incubating SITE repository

This repository contains the homepage of Apache Tamaya (incubating).
We are using jBake to generate a static page. It is enhanced by maven-generated artifacts such as Javadoc.

## Current status

### 2016-09: plan to migrate
* As of 2016-09 we started to migrate to a jbake setup since the maven-generated site was based on a deprecated maven skin and had SSL problems.
* Current working status: https://issues.apache.org/jira/browse/TAMAYA-178

### 2017-01

All old static pages are regenerated. Ready to add current contents and blog posts about the past of the project :-)

## Available branches
### Master branch

Contains the jbake original files and all binaries (images, fonts, static JS) and the base contents.

#### Templates

All [Thymeleaf-based](http://www.thymeleaf.org/) page templates can be found in the `templates` directory. These templates are footer, header and menu of the website.

#### Template variables

All variables are defined in `jbake.properties`

#### Static assets

Images, CSS and JS have to be put in the `assets` subfolder.

#### Other resources

All of the contents goes in `content`. The directory structure defines the menu subitems when the website is baked.

#### jBake itself

A full installation of jBake is checked in under `bin` in order to be able to reproducable generate the pages even if there is a problem with the project, internet or something else. It's meant as a matter of convenience and security.

#### Generated contents

Please do not check in the `output` directory as it contains the baked homepage! It needs to be checked in with a different structure in the branch `asf-site`!

### ASF-site branch

Is linked to
https://issues.apache.org/jira/browse/INFRA-12814
://tamaya.incubator.apache.org/jbake/
as requested via ttps://issues.apache.org/jira/browse/INFRA-12814

### How to generate a new page

#### Locally

In case you want to play with homepage locally:

1. Clone this repository.
1. Launch the bash script
```
$ ./bake.sh
```
1. Point your browser to http://localhost:8820/

#### Remote

You need write access to this repository and have to generate the javadoc manually!

1. Generate Javadoc for Tamaya Core
```
$ cd tamaya
$ mvn site
(since javadoc:javadoc does not generate a full report)
```
1. Launch the bash script to generate the homepage and switch the the asf branch:
```
$ git checkout master
$ ./copy-site.sh
```
1. Make sure you are on branch asf-site! Copy the generated Javadoc into apidocs
```
$ git checkout asf-site
$ cp -r pathToTamayaCoreRepo/target/site/apidocs .
```
1. If you do not want to change the already published Javadoc, make sure that your commit does not change the base index.html, that renders https://tamaya.incubator.apache.org/apidocs/index.html
1. Push your changes
```
$ git push
```
1. Wait a couple of minutes for the gitpubsub to happen.
1. Go to https://tamaya.incubator.apache.org/ in your browser

#### Jenkins / CI integration

There is a daily build job that triggers a site baking on ASF-Jenkins:
https://builds.apache.org/view/S-Z/view/Tamaya/job/Tamaya-Site-jBake-Master/
