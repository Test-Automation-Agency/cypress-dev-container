#!/bin/bash

set -e
pnpm install
exec cypress "$@"
