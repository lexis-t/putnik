putnik
======
Mobile GIS Application with Vector Maps and Routing Directions

# Development branches
* Android

# Development Roadmap

## Initial Phase
* Build mapnik with dependences
* Render samle OSM map
* Show current position at real spb map
* Track current position at runtime
* Create simple UI

## Routing
* Design route calculation model
* Implement route calculation
* Show route at map
* Rework UI for routing feature

# Current status

Setting up build on OS X

* clone github repo recursively with submodules:
```bash
$ git clone --recursive git@github.com:lexis-t/putnik.git
```

* create build folder and cd inside:
```bash
$ mkdir putnik/build
$ cd putnik/build
```

* run make
```bash
$ make -f ../Makefile libs
```
