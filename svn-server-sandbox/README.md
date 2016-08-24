SVN Server Sandbox
=====

A simple SVN (subversion) server for sandboxing

To simply start the container and forward the listening port 3690

```
docker run --name svn-server-sandbox -d -p 3690:3690 \
  neoalienson/svn-server-sandbox
```

If you want to persist you changes to a local volume on /home/svn

```
docker run --name svn-server-sandbox -d -p 3690:3690 \
  -v /home/svn:/var/opt/svn \
  neoalienson/svn-server-sandbox
```
