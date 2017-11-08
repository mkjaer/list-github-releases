# list-github-releases

List latest github releases through a webserver and update them hourly

Example: `curl https://releases.kjr.dk`

## Configuration

Edit the repos.txt file with the repositories you want to list in the format mkjaer/list-github-releases

## Build

`docker build --tag=list-github-releases .`

## Run

`docker run -p 80:80 mikael84/list-github-releases`

### Advanced

`docker run -p 80:80 -e GITHUB_API_TOKEN=<github-token> -v repos.txt:/app/repos.txt mikael84/list-github-releases`

Without `GITHUB_API_TOKEN` set the hourly limit is 60 repositories to request data from.
The repos.txt file describes which repos to get data from (see the *Configuration* section).

