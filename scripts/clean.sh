cd example
rm -rf node_modules
rm -rf .expo
cd ios
pod deintegrate
cd ..
npm install
rm -rf package-lock.json
