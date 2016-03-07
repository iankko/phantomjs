#!/bin/sh

ARGS="--webdriver=4444"

if [ "x${IGNORE_SSL_ERRORS}" = 'xtrue' ]
then
    ARGS="$ARGS --ignore-ssl-errors"
fi

./phantomjs ${ARGS}

