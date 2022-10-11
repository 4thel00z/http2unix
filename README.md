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

OR

```
TARGET_PATH=...
TARGET_PORT=...
docker run --rm -it -p $TARGET_PORT:8080 -v $TARGET_PATH:/tmp/target.sock ransomwarezz/http2unix
```

## License

This project is licensed under the GPL-3 license.
