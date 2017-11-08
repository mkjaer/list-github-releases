#!/bin/sh
echo $(date) > /last_run.txt
/app/check_github_releases.sh
