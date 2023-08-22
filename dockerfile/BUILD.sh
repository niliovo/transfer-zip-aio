#!/bin/sh
apk add --no-cache git nodejs npm
git clone https://github.com/robinkarlberg/transfer.zip-web.git tmp
mv tmp/* .
cd signaling-server
npm i
cd ..
cp web-server/nginx.conf /etc/nginx/conf.d/nginx.conf
mkdir -p /var/www/static
cp -R web-server/src/static /var/www/
rm /etc/nginx/conf.d/default.conf
echo "#!/bin/sh

npm start --prefix signaling-server &

nginx -g 'daemon off;' &

wait" > web-server/run-server
cp web-server/run-server /usr/local/bin
sed -i "s|http://signaling-server:8001|http://0.0.0.0:8001|g" /etc/nginx/conf.d/nginx.conf