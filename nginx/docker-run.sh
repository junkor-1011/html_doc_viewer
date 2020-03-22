#!/bin/bash


# default port
PORT_USING=5444

# https://qiita.com/b4b4r07/items/dcd6be0bb9c9185475bb
# https://qiita.com/ko1nksm/items/cea7e7cfdc9e25432bab
args=`getopt -o p: -l port: -- "$@"`

if [ $? != 0 ]; then
    echo "Usage: $0 [-p port | --port port] " 1>&2
    exit 1
fi
#set -- $args
eval "set -- $args"
for OPT in "$@"
do
    case $OPT in
#        -a) A_FLAG=1
#            shift
#            ;;
        -p | --port) PORT_USING=$2
            shift 2
            ;;
        --) shift
            break
            ;;
    esac
done

# docker run
# docker-composeと異なり、相対パスは使えないので注意(絶対パスに変換する)
# https://qiita.com/KentoDodo/items/24117025924d64998110
docker run \
        --name nginx_${PORT_USING} \
        --rm \
        -p ${PORT_USING}:443 \
        -v $PWD/nginx/default.conf:/etc/nginx/conf.d/default.conf \
        -v $PWD/../html_base:/usr/share/nginx/html \
        -v $PWD/../doc:/usr/share/nginx/html/doc \
        -v $PWD/../test_sphinx:/usr/share/nginx/html/doc/test_sphinx \
        -d \
        nginx-doc-viewer

