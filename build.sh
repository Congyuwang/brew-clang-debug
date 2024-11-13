eval "$(brew shellenv)"
export LLD=${HOMEBREW_PREFIX}/opt/lld/bin/ld64.lld
export CC=${HOMEBREW_PREFIX}/opt/llvm/bin/clang
${CC} -O3 --target=arm64-apple-macosx10.14 -fuse-ld=${LLD} --sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -o main main.c
