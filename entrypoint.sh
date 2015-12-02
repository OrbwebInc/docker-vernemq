#!/bin/bash
set -e

vernemq start
exec "$@"
