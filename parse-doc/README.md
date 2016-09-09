Parse Doc on NodeJS + Ruby with Alpine Linux
=====

A container has the Parse Doc (https://github.com/ParsePlatform/docs)
serving with Jekyll.

I am using Alpine Linux 3.3 so that I don't have to build all ruby related
packages.

Webpack runs on NodeJS 6.5.0


Simply run below to forward the exposed port,

    docker run -p 4000:4000 neoalienson/parse-doc

Once it starts you can open the docs with your browser, e.g.,
http://docker.local:4000

