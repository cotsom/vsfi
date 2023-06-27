# docker-compose up -d

docker run -d -v step:/home/step \
    -p 9000:9000 \
    -e "DOCKER_STEPCA_INIT_NAME=Smallstep" \
    -e "DOCKER_STEPCA_INIT_DNS_NAMES=localhost,$(hostname -f)" \
    -e "DOCKER_STEPCA_INIT_PASSWORD=qwerty"\
    smallstep/step-ca

CA_FINGERPRINT=$(docker run -v step:/home/step smallstep/step-ca step certificate fingerprint certs/root_ca.crt)
step ca bootstrap --ca-url https://localhost:9000 --fingerprint $CA_FINGERPRINT

echo "PASSWORD: $(docker run -v step:/home/step smallstep/step-ca cat secrets/password)"