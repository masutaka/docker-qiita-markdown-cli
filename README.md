# docker-qiita-markdown-cli

[![Docker Stars](https://img.shields.io/docker/stars/masutaka/qiita-markdown-cli.svg?style=flat-square)][dockerhub]
[![Docker Pulls](https://img.shields.io/docker/pulls/masutaka/qiita-markdown-cli.svg?style=flat-square)][dockerhub]
[![Docker Automated buil](https://img.shields.io/docker/automated/masutaka/qiita-markdown-cli.svg?style=flat-square)][dockerhub]
[![License](https://img.shields.io/github/license/masutaka/docker-qiita-markdown-cli.svg?style=flat-square)][license]

[dockerhub]: https://hub.docker.com/r/masutaka/qiita-markdown-cli/
[license]: https://github.com/masutaka/docker-qiita-markdown-cli/blob/master/LICENSE.txt

Dockerized [qiita-markdown-cli](https://rubygems.org/gems/qiita-markdown-cli)

## Installation

    $ docker pull masutaka/qiita-markdown-cli
    $ mkdir -p ~/bin && cd $_
    $ curl -LO https://raw.githubusercontent.com/masutaka/docker-qiita-markdown-cli/master/bin/qmc
    $ chmod +x qmc
    $ export PATH=$HOME/bin:$PATH

[Whalebrew](https://github.com/bfirsh/whalebrew) gives an easy installation to you.

    $ whalebrew install masutaka/qiita-markdown-cli -n qmc

## Usage

`qmc` outpts renderd html to STDOUT.

    $ qmc README.md
