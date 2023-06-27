docker-compose up -d

CA_FINGERPRINT=$(docker run -v step:/home/step smallstep/step-ca step certificate fingerprint certs/root_ca.crt)
step ca bootstrap --ca-url https://localhost:9000 --fingerprint $CA_FINGERPRINT

echo "PASSWORD: $(docker run -v step:/home/step smallstep/step-ca cat secrets/password)"