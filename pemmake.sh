if test $# -ne 1; then
    echo "Usage: pemmake.sh <keyname>"
    exit 1
fi

key=$1

openssl genrsa -out rsaprivkey.pem 1024