# Node.js Hello World

Node.js Hello World on Ubuntu 12.04 LTS using [docker][].

## Prerequisites

Setup docker program.

-   Install `curl`:

        $ sudo apt-get install curl

## Getting Started

-   Get clone:

        $ git clone https://github.com/idoth2o/docker_nodejs_helloworld.git
        $ cd docker_nodejs_helloworld

-   Build docker image:

        $ sudo docker build -t .h2o/node-hello .
        # Please wait for some time (:p

-   Run docker:

        $ sudo docker run -p 127.0.0.1:8080:8080 -d -i -t .h2o/node-hello /usr/bin/node src/index.js
        $ curl http://localhost:8080/

    It should print `Hello World` to the console.

## Acknowledgements

Many thanks to @gasi and @dotCloud team for docker.


## Reference

original code:	https://github.com/gasi/docker-node-hello

my blog:	http://d.hatena.ne.jp/dot_h2o2/20131115/

	
