#!/usr/bin/bash

main()
{
	# setup
}

termux_setup()
{

}

setup_linux()
{

}

device()
{
	if [[ -d /usr/bin ]]; then
		if [ $(id -u) -ne 0 ]; then
			echo "This script must be ran as root"
			exit
		fi
		setup_linux
	elif [[ -d /data/data/com.termux/files/usr/bin ]]; then
		setup_termux
	fi
}
