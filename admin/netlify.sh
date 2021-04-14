curl -s https://raw.githubusercontent.com/Dirout/dokkoo/master/Cargo.toml --output Cargo.toml > /dev/null
version=$( awk -F ' = ' '$1 ~ /version/ { gsub(/[\"]/, "", $2); printf("%s",$2) }' Cargo.toml )
curl -s -L https://github.com/Dirout/dokkoo/releases/download/v${version}/dokkoo_${version}_amd64.deb --output dokkoo_${version}_amd64.deb > /dev/null
apt-get -qq install ./dokkoo_${version}_amd64.deb > /dev/null
printf "Installed Dokkoo v${version}"
dokkoo build .
npm install -g sass
/bin/cp -ar ./assets ./output
/bin/cp -ar ./robots.txt ./output
sass ./_sass/main.scss ./output/assets/css/style.css
/bin/cp -ar ./admin/config.yml ./output/admin/config.yml
touch .nojekyll
