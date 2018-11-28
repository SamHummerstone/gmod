# docker run -it --rm  -p 27015:27015 -p 27005:27005 --name=gmod sjhummerstone/gmod-server:latest ./gmodserver start --host 127.0.0.1 --user gmod
docker run -it --network=host --rm  -p 0.0.0.0:27015:27015 -p 0.0.0.0:27005:27005 --name=gmod sjhummerstone/gmod-server:latest /bin/bash
