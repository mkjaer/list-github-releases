# list-github-releases

List latest github releases through a webserver

## Configuration

Edit the repos.txt file with the repositories you want to list in the format mkjaer/list-github-releases

## Build

`docker build --tag=list-github-releases .`

## Run

`docker run -p 80:80 list-github-releases`

