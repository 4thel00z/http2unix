#! /usr/bin/env zsh
#
# usage: port_forward <unix-domain-socket> <port-to-expose>"
#

VERSION="v1.1.0"
### PORT_FORWARD START - v1.1.0
port_forward(){
	if [ $# -lt 2 ]
	then
		echo "usage: $0 <unix-domain-socket> <port-to-expose>"
		return 64
	fi

	echo "Running on localhost:$2"
	docker run --rm -it -p $2:8080 -v $1:/tmp/target.sock ransomwarezz/http2unix
}
### PORT_FORWARD END

grep "### PORT_FORWARD START - $VERSION" $HOME/.zshrc  > /dev/null
is_installed= [ $? -eq 1 ]
$is_installed && echo "$VERSION is already installed"
$is_installed || sed -n '/^### PORT_FORWARD START - '$VERSION'$/,/^### PORT_FORWARD END$/p' $0 >> $HOME/.zshrc
