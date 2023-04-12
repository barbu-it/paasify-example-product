#!/bin/bash
# Fix stack permissions

set -eu

STACK_DIR=${0%/*}

mkdir -p $STACK_DIR/grafana/data
chown 472:0 $STACK_DIR/grafana/data

mkdir -p $STACK_DIR/prometheus/data
chown 65534:65534 $STACK_DIR/prometheus/data
