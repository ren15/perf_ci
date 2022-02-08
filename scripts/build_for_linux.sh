set -xe

# for example 5.4
VERSION=$1

wget -c -q https://github.com/torvalds/linux/archive/refs/tags/v${VERSION}.zip
unzip -q v${VERSION}.zip
make -C linux-${VERSION}/tools/perf
mkdir linux_${VERSION}_perf
mv linux-${VERSION}/tools/perf linux_${VERSION}_perf/
tar cvzf linux_${VERSION}_perf.tar.gz ./linux_${VERSION}_perf
rm -rf v${VERSION}.zip linux-${VERSION}

