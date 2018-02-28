echo 'build...'
gitbook build
rm -rf  /c/share/open/*
cp -R ./_book/* /c/share/open/
