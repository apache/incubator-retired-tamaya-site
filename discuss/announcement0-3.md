#  DRAFT of an announcement message
https://issues.apache.org/jira/browse/TAMAYA-284

## Guidelines from a mail from Sally (2015-06-13)

```
Hello PMCs --a quick reminder that messages sent to announce@apache.org feature prominently in the weekly Apache News Round-ups [1].

In order for your announcement be happily moderated through, don't forget to:

0) write "[ANNOUNCE]", "[ANN]", or "[SECURITY]" in the subject line as appropriate

1) send the email in PLAINTEXT --all else will be rejected

2) include the appropriate URL for downloading the release or more information regarding the announcement

3) include the DOAP! Whilst you may know what your project is, there's a chance that others don't, particularly those with funky names/acronyms. Hone your message and polish that one-liner!

3a) speaking of DOAP, relationships are nice --does your project involve/play with other technologies? If so, state the relationship.

4) include a way for folks to learn more. Link to the project home page or a mailing list or some other relevant resource.

5) personalize your closing --whether your choose to sign off using your name or (on behalf of) the collective PMC, doing something friendly reinforces the "community" aspect of the ASF.


Thanks so much,
Sally


[1] https://blogs.apache.org/foundation/date/20150612
```

## Subject: [ANNOUNCE] Apache Tamaya Incubating 0.3 released
## To: announce@apache.org, dev@tamaya.incubator.apache.org

## Body

We are pleased to announce the availability of Apache Tamaya Incubating 0.3.

Abstract
========
Apache Tamaya provides a flexible and powerful configuration solution for Java developers using Java SE as well as for more complex usage scenarios like cloud or Java EE. It provides a modern type-safe property based Configuration API combined with a powerful environment model and a flexible SPI.

This release is the first with a new repository structure and our new project homepage.

Main features
=============
* We fixed a lot of bugs.
* We reduced the log "noise" on startup.
* We introduced PropertyValue as a SPI artifact to support meta-entries.
* We integrated the builder extension within the existing builder API.
* We simplified a couple of APIs so working with explicit builders is as straightforward as using auto-discovery features.
* It is now possible to inject configuration values into any kind of beans/templates, without being annotated at all as well.
* We resolved possible license issues by replacing corresponding dependencies with Apache variants.
* We added converters for File and Path.
* We removed the binary distribution package in favour of the source distribution and the uploaded maven artifacts.

Project structure
=================

The slim Tamaya API and core implementation is enhanced by different kinds of production-ready extensions modules, while a sandbox contains different alpha-grade modules.

Details on how to use Tamaya can be found on our site: http://tamaya.incubator.apache.org/
With this release we also separated the homepage code completely from the project code, to ease independent lifecycles.

You may download the release via:
http://www.apache.org/dyn/closer.cgi/incubator/tamaya/0.3-incubating
or in your pom.xml from Maven central:
<dependency>
    <groupId>org.apache.tamaya</groupId>
    <artifactId>tamaya-core</artifactId>
    <version>0.3-incubating</version>
</dependency>

When downloading, please verify signatures using the KEYS file:
https://www.apache.org/dist/incubator/tamaya/0.3-incubating/apiandcore/KEYS

The list of changes included in this release can be found at:
https://issues.apache.org/jira/projects/TAMAYA/versions/12329052

Questions, comments, new committers and bug reports are always welcome on
dev@tamaya.incubator.apache.org or via the TAMAYA-Jira.

On behalf of the Apache Tamaya incubating team, thanks to everyone who helped with this release!

Me

*Disclaimer*

Apache Tamaya is an effort undergoing incubation at The Apache Software
Foundation (ASF), sponsored by the name of Apache Incubator PMC. Incubation
is required of all newly accepted projects until a further review indicates
that the infrastructure, communications, and decision making process have
stabilized in a manner consistent with other successful ASF projects. While
incubation status is not necessarily a reflection of the completeness or
stability of the code, it does indicate that the project has yet to be
fully endorsed by the ASF.
