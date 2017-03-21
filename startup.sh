#!/bin/env bash

#jupyter notebook "$@"

if [-f /tmp/.X0-lock && -f /tmp/.X11-unix/X0]; then
	rm /tmp/.X0-lock /tmp/.X11-unix/X0
fi
