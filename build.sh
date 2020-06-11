echo 'build...'
gitbook build
rm -rf  /e/hdm/open/*
cp -R ./_book/* /e/hdm/open/
