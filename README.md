# What?

This repository contains simple scripts (using reproducible docker images) that builds support libraries for dcmtk builds.

* iconv
  * Windows 64-bit
    * Shared
    * Static
  * Debian 64-bit
    * Shared
    * Static
* openssl
  * Windows 64-bit
    * Shared
    * Static
  * Debian 64-bit
    * Shared
    * Static
    
# How?

## Precompiled

TODO

## Build yourself*: 

First, prepare the docker image.

```
> ./prepare-docker-image.sh
```

Then, run the build script.

```
> ./build-all.sh
```
