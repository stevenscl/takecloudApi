echo 'build...'
gitbook build
rm -rf  /g/hdm/open/*
cp -R ./_book/* /g/hdm/open/
