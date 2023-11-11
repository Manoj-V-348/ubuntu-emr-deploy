echo "Switching to branch Main"
git checkout main

echo "Building app..."
npm run build

echo "Deploying files to server..."
sudo scp -r build/* root@178.16.139.169:/var/www/html/

echo "Done!"
