sudo npm install -g sass
/bin/cp -ar ./mokk/assets ./gh-pages
/bin/cp -ar ./mokk/robots.txt ./gh-pages
sass ./mokk/_sass/main.scss ./gh-pages/assets/css/style.css
