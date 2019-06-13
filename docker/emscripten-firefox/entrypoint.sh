#!/bin/bash
set -e
/emsdk_portable/emsdk_env.sh
Xvfb :10 -ac &
exec "$@"