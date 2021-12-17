#!/bin/bash

source ../.hugobook.env
# export BASE_URL=http://books.tangx.in/

hugo --gc --minify --cleanDestinationDir    \
    --baseURL=$BASE_URL


