
flutter config --enable-web


flutter build web

git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin <your-repo-url>
git subtree push --prefix build/web origin gh-pages
