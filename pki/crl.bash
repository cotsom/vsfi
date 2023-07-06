while :
do
    for i in ./*.key; do
    domain=$(echo "$i" | tr -d ".key" | tr -d "/")
    echo $domain
    step ca renew --force $domain.crt $domain.key
    
    exitCode=$(echo $?)
    echo $exitCode

    if [[ $exitCode == 1 ]]; then
        mv $domain.key revoked-certs/
        mv $domain.crt revoked-certs/
    fi
    done

    sleep 10
done