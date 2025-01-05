#!/usr/bin/env bash
set -euo pipefail
trap 's=$?; echo >&2 "$0: Error on line "$LINENO": $BASH_COMMAND"; exit $s' ERR

go test -bench ./... | tee result/result.txt
go run result/result.go
