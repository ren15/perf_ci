set -xe
export DEBIAN_FRONTEND=noninteractive
apt update -y && apt upgrade -y
apt install -y \
    curl \
    gcc g++ \
    cmake \
    ninja-build \
    git \
    python3 python3-pip \
    make

apt install -y \
    libssl-dev

apt install -y \
    wget \
    unzip