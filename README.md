[![](https://imagelayers.io/badge/kevineye/ddclient:latest.svg)](https://imagelayers.io/?images=kevineye/ddclient:latest 'Get your own badge on imagelayers.io')

[DDclient](http://ddclient.sf.net) is a Perl client used to update dynamic DNS entries for accounts on Dynamic DNS Network Service Provider.

## Setup

You need to figure out a [ddclient.conf file](https://sourceforge.net/p/ddclient/wiki/usage/#configuring-ddclient).

## Run

    docker run -d \
        -v /path/to/your/ddclient.conf:/etc/ddclient/ddclient.conf
        kevineye/ddclient

If needed, add some diagnostic options:

    docker run -d \
        -v /path/to/your/ddclient.conf:/etc/ddclient/ddclient.conf
        kevineye/ddclient
        ddclient -daemon 0 -debug -verbose -noquiet
