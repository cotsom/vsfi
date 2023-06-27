## Health check

`curl https://localhost:9000/health`

## check password

`docker run -v step:/home/step smallstep/step-ca cat secrets/password`

## Get certs for localhost domain

`step ca certificate localhost localhost.crt localhost.key`