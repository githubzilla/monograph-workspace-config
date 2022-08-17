#!/bin/sh
find . -name "*.envsubst" -exec sh -c 'envsubst < "$1" > "${1%.envsubst}"' sh {} \;
