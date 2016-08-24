SVN Server Sandbox
=====

A simple SVN (subversion) server for sand-boxing with
* full access from anyone
* contains a repository 'sandbox'
* the repository has initial structure, i.e., trunk, branches, tags.

Start the svn container
-----
To simply start the container and forward the listening port 3690

```
docker run --name svn-server-sandbox -d -p 3690:3690 \
  neoalienson/svn-server-sandbox
```

A container with name 'svn-server-sandbox' is created.

Keeping the SVN repoistory outside the container
-----
If you want to persist the repository to a local volume on ~/svn. However,
you will need to create the repository and the structure

```
docker run --name svn-server-sandbox -d -p 3690:3690 \
  -v ~/svn:/var/opt/svn \
  neoalienson/svn-server-sandbox

docker exec -it svn-server-sandbox \
    svnadmin create sandbox

docker exec -it svn-server-sandbox \
    svn mkdir \
    file:///var/opt/svn/sandbox/tags \
    file:///var/opt/svn/sandbox/branches \
    file:///var/opt/svn/sandbox/trunk \
    -m 'inital structure'

```

After starting the container, you checkout the 'sandbox' repository with
`svn co svn://[docker]/sandbox`, or checkout by any svn client with svn URL
svn://[docker]/sandbox
