## Install step

`wget https://dl.smallstep.com/gh-release/cli/docs-cli-install/v0.23.4/step-cli_0.23.4_amd64.deb`

`sudo dpkg -i step-cli_0.23.4_amd64.deb`

## Health check

`curl https://localhost:9000/health`

## check password

`docker run -v step:/home/step smallstep/step-ca cat secrets/password`

## Get certs for localhost domain

`step ca certificate localhost localhost.crt localhost.key`