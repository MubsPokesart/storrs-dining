#!/bin/bash
# Quick query script for local D1 database
# Usage: ./scripts/query-local.sh "SELECT * FROM locations"

QUERY="${1:-SELECT * FROM locations}"

wrangler d1 execute dining-db --local --command="$QUERY"
