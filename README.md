% Image de base pour la compilation de projets C/C++ sous jessie
% Didier Richard
% 12/03/2017

---

revision:
    - 0.0.1 : 17/09/2016
    - 0.0.2 : 20/10/2016
    - 0.0.3 : 19/02/2017
    - 0.0.4 : 11/03/2017

---

# Building #

```bash
$ docker build -t dgricci/build-jessie:$(< VERSION) .
$ docker tag dgricci/build-jessie:$(< VERSION) dgricci/build-jessie:latest
```

## Behind a proxy (e.g. 10.0.4.2:3128) ##

```bash
$ docker build \
    --build-arg http_proxy=http://10.0.4.2:3128/ \
    --build-arg https_proxy=http://10.0.4.2:3128/ \
    -t dgricci/build-jessie:$(< VERSION) .
$ docker tag dgricci/build-jessie:$(< VERSION) dgricci/build-jessie:latest
```     

# Use #

See `dgricci/jessie` README for handling permissions with dockers volumes.

The image only contains two scripts :

* `/usr/local/bin/01-install.sh` : install the C/C++ compilation tools ; one can
  pass an argument (default `n`) to clean the apt cache ;
* `/usr/local/bin/01-uninstall.sh` : uninstall the C/C++ compilation tools ;
  one can pass an argument (default `n`) to clean the apt cache.

This is used to build pieces of software and libraries by first install the
compilation environment, build and uninstall the compilation environment in
`Dockerfile`s (thus reducing the number of layers).

## Tests ##

```bash
$ docker run -it --rm dgricci/build-jessie bash -c "/usr/local/bin/01-install.sh && gcc --version"
Installing g++, gcc and co ...
...
gcc (Debian 4.9.2-10) 4.9.2
Copyright (C) 2014 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

__Et voilà !__


_fin du document[^pandoc_gen]_

[^pandoc_gen]: document généré via $ `pandoc -V fontsize=10pt -V geometry:"top=2cm, bottom=2cm, left=1cm, right=1cm" -s -N --toc -o build-jessie.pdf README.md`{.bash}

