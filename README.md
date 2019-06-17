Bumpversion in a Docker container
=================================
[![](https://badge.imagelayers.io/tomologic/bumpversion:latest.svg)](https://imagelayers.io/?images=tomologic/bumpversion:latest 'Get your own badge on imagelayers.io')

Packaging the bumpversion utility.
Source: https://github.com/c4urself/bump2version
PyPI: https://pypi.python.org/pypi/bump2version

Usage
-----
The utility needs to know where to find your current version and which files to search/replace. You can either keep a .bumpversion.cfg file as described in the links above, or do something like this:
```
docker run -v $PWD:/src \
           -w /src \
           tomologic/bumpversion --current-version $(cat VERSION) \
           minor \
           VERSION setup.py
```
The code above mounts your current directory at /src and makes sure that is also the working directory. Current version is read from VERSION file, a minor bump is applied and version is replaced in VERSION and setup.py files.

Git tag
-------
You can also let bumpversion make a tag:
```
docker run -v $PWD:/src \
           -w /src \
           tomologic/bumpversion --current-version $(cat VERSION) \
           --tag \
           minor \
           VERSION setup.py
```
Don't forget to push the tags afterwards:
```
git push --follow-tags
```

Limitations
-----------
Does not handle the --commit flag because the container needs to identify itself to git. This is the error output:
```
*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.
```

Build your own
--------------
```
make build
```
