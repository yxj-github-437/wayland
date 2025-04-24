#! /bin/sh

find $(dirname $0)/build/_deps/ -name "*-stamp" -type d | xargs -t rm -rf
