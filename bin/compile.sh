indent() {  
  sed -u 's/^/       /'
}

BUILD_DIR=$1  
BAZEL_DIR=$BUILD_DIR/vendor/bazel  
BIN_DIR=$BAZEL_DIR/bin  
PROFILED_DIR=$BUILD_DIR/.profile.d  
APP_BIN_DIR=/app/vendor/bazel/bin  
URL="https://github.com/bazelbuild/bazel/releases/download/0.5.3/bazel-0.5.3-dist.zip" 

echo "-----> Installing bazel"  
mkdir -p $BIN_DIR

echo Vendoring $URL | indent  
wget $URL
unzip bazel-0.5.3-dist.zip
cd bazel-0.5.3-dist
bash ./compile.sh 


