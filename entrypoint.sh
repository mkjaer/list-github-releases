#!/bin/bash

crond
exec nginx -g "daemon off;"

