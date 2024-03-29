#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/cloudfoundry-incubator/credhub-cli/releases/download

dl()
{
    local ver=$1
    local os=$2
    local archive_type=${3:-tgz}
    local platform=${os}
    local file=credhub-${platform}-${ver}.${archive_type}
    local url=$MIRROR/${ver}/$file
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform `sha256sum $lfile | awk '{print $1}'`
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin
    dl $ver linux
    dl $ver windows
}

dl_ver ${1:-2.9.12}
