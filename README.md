gitleaks-by-user.sh
=============
A dumb BASH script to let you easily run gitleaks against all the repos associated with a particular user. 

I love [gitleaks](https://github.com/zricethezav/gitleaks) as a means of finding secrets (passwords, keys, certs) in not only your git repos but also your commits.

However I was surprised to find that there's no way to recursively search all the repos associated with a user, you can only supply them one URL at a time.

This fixes that!

##Requirements:##

This script requires that you have [gitleaks](https://github.com/zricethezav/gitleaks) and jq installed. Follow the instructions on the gitleaks page for installation. For jq, just emerge|apt-get|yum|whatever in your favorite distro.

Before running the script besure to nano/pico/vi/edlin the script and add a GitHub API key to the GITAPIKEY variable. You only need a token that has read access, so don't go nuts with the API key permissions.

More info about generating access tokens can be [found here](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)

##Example##

**Usage:** ./gitleaks-by-user.sh GITHUBUSER

$ ./gitleaks-by-user.sh noid23

##TODO:##

- [ ] Add multi output support - TSV, CSV, JSON, Text
- [ ] Add support for searching organizations
- [ ] Add support for private repos
