cd /tmp

# try to remove the repo if it already exists
rm -rf node-nforce-demo; true

git clone https://github.com/jeremywallace/node-nforce-demo.git

cd node-nforce-demo

npm install

npm start
