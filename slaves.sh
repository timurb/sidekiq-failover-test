#!/bin/sh

redis-cli -p 26371 sentinel slaves mymaster
