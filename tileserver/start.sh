docker run --rm -it -p 8080:80 -v $(pwd)/..:/data maptiler/tileserver-gl -c tileserver/config.json -p 80
