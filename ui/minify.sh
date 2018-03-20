npm run uglify

SHA=`sha256sum out/main.min.js`

NEW_NAME="out/main.min.$SHA.js"

echo $NEW_NAME
