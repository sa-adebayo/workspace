#!/usr/bin/env bash

echo "Powering up = >>> = >>>..."
sh power-up.sh
if [ $? -ne 0 ]; then
	echo "I couldn't powerup the commandline.. let's try again some other time..."
	exit 1
fi
echo "Successfully powered up the commandline"
