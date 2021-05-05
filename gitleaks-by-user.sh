#/bin/bash
#Put your GitHub API key here. You only need read access, so don't go making an admin key

GITAPIKEY=aaabbbcccdddeeefffggghhhiii

if [ -n "$1" ]; then
	githubuser=$1
	for row in $((/usr/bin/curl -s https://api.github.com/users/$githubuser/repos?per_page=500 | /usr/bin/jq -r '.[].html_url | @sh') | tr -d \'); do
	printf "Hunting for secrets in repo: ${row}\n";
	~/go/bin/gitleaks -v --access-token=$GITAPIKEY --repo-url=${row}
	done
else
	echo "Usage: ./git-hunting.sh githubusername"
	exit 1
fi
