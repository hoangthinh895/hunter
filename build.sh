apk add git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build
cd xmrig/scripts && ./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps -DBUILD_STATIC=ON
make -j$(nproc)
