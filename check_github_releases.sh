#!/bin/bash

if [[ "$GITHUB_API_TOKEN" ]]; then 
 GITHUB_TOKEN='-H "Authorization: token '$GITHUB_API_TOKEN'"'
fi

cd $(dirname $0)

for REPO in $(cat repos.txt); do 
 echo -n "Latest "${REPO}" version is: " >> output.html 
 curl "${GITHUB_TOKEN}" --silent https://api.github.com/repos/"${REPO}"/releases | jq '.[] .tag_name' | grep -viE "rc|beta|alpha|zstd" | sort -rV | head -n1 >> output.html
done

echo ""
echo "Last updated: $(date)" >> output.html

mv output.html /www/index.html
