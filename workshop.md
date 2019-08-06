# Creating web-mapping applications with QGIS Server and QWC2

![](img/foss4g-2019-bucharest.jpg)

## Éric Lemoine

* Oslandia
* eric -DOT- lemoine -AT- oslandia -DOT- com
* @erilem on Twitter

## Agenda

## Introduction

This workshop teaches about creating web-mapping applications with **QGIS Server** and **QGIS Web
Client 2** (a.k.a. QWC2).

### QGIS Server

* « Map Engine »
* Competitor to MapServer and GeoServer
* OGC Server
* Supports WMS, WFS and WMTS
* Uses the same rendering engine as QGIS Desktop
* Maps are created and designed with QGIS Desktop

[QGIS Server Manual](https://docs.qgis.org/testing/en/docs/user_manual/working_with_ogc/server/index.html)

### QGIS Web Client 2

* A web client for QGIS Server
* Successor to QWC, with modern technologies (OpenLayers 3, React, Redux)
* Feature-rich
* Not just an application, but also a framework
* Flexible

[QWC2 Documentation](https://github.com/qgis/qwc2-demo-app/blob/master/doc/QWC2_Documentation.md)

Note: we, at Oslandia, have decided to use, and contribute to, QWC2 for our clients.

### This workshop

For this workshop you need to have [VirtualBox](https://www.virtualbox.org/) installed. VirtualBox
is used to run a Virtual Machine (VM) pre-installed with all the software necessary for the
workshop.

The workshop VM is based on [OSGeoLive](https://live.osgeo.org) version 12.0, itself based on
[Lubuntu](https://lubuntu.net/). OSGeoLive contains a collection of more than 50 pre-installed
OSGeo-related applications and librairies. OSGeoLive also includes sample data which we'll
use for the workshop.

![](img/osgeolive.png)

Note : many thanks to the OSGeoLive developers and maintainers! OSGeoLive has become a very
precious resource.

**Hands-on exercise 1 : start the VM**

First, extract the `workshop-qwc2.ova` file from the `workshop-qwc2.ova.7z.00*` 7z volume files. On
Linux this can be done using the `7z` command as follows:

```shell
$ 7z x workshop-qwc2.ova.7z.001
```

Optionally you can now check that the resulting `workshop-qwc2.ova` file is not corrupted:

```shell
$ md5sum -c workshop-qwc2.ova.md5
```

Now launch the VirtualBox user interface and import the virtual appliance `workshop-qwc2.ova`. In
the "Appliance settings" window make sure you give enough RAM to the VM. 8196 MB should be enough.
See the screenshot below.

![](img/virtualbox-appliance-settings.png)
