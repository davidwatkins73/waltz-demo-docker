#!/bin/sh
pg_dump -d waltz -U waltz -p 5632 -h localhost > dump.sql
