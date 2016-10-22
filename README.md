% Image de base pour la compilation de projets C/C++ sous jessie
% Didier Richard
% rév. 0.0.1 du 17/09/2016
% rév. 0.0.2 du 20/10/2016

---

# Building #

```bash
$ docker build -t dgricci/build-jessie:0.0.2 -t dgricci/build-jessie:latest .
```

## Behind a proxy (e.g. 10.0.4.2:3128) ##

```bash
$ docker build \
    --build-arg http_proxy=http://10.0.4.2:3128/ \
    --build-arg https_proxy=http://10.0.4.2:3128/ \
    -t dgricci/build-jessie:0.0.2 -t dgricci/build-jessie:latest .
```     

# Use #

See `dgricci/jessie` README for handling permissions with dockers volumes.

## Tests ##

```bash
$ docker run -it --rm dgricci/build-jessie gcc --version
gcc (Debian 4.9.2-10) 4.9.2
Copyright (C) 2014 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

__Et voilà !__


_fin du document[^pandoc_gen]_

[^pandoc_gen]: document généré via $ `pandoc -V fontsize=10pt -V geometry:"top=2cm, bottom=2cm, left=1cm, right=1cm" -s -N --toc -o build-jessie.pdf README.md`{.bash}

