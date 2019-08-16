#!/bin/sh

gatsby build

cp -R /src/public/* /public

chown -R $USERID:$GROUPID /public
