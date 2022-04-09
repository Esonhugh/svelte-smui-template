function build_by_local() {
  echo "dependencies sync ........."
  npm install
  echo "prebuild static CSS ..........."
  npm run prepare
  echo "build apps ..........."
  npm run build
  cp -r ./public/ ./output
  echo "build success: at dir `pwd`/output"
}

function build_by_action() {
  git clone ${Project_url} --branch app
}