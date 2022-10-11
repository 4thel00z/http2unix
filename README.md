# http2unix

## Motivation

Problem: You've got a unix socket and want to expose it over http.
Solution: socat in a docker container + zsh function for convenience

## Prerequisites

- docker
- sed
- grep
- zsh

## Installation

```
make
```

## Usage

```
port_forward <unix-domain-socket> <port-to-export>
```

## License

This project is licensed under the GPL-3 license.
