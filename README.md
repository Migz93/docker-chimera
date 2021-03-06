# docker-chimera

[![Docker Version](https://images.microbadger.com/badges/version/miguel1993/docker-chimera.svg)](https://microbadger.com/images/miguel1993/docker-chimera) [![Docker Image](https://images.microbadger.com/badges/image/miguel1993/docker-chimera.svg)](https://microbadger.com/images/miguel1993/docker-chimera) [![Docker Pulls](https://img.shields.io/docker/pulls/miguel1993/docker-chimera.svg)](https://microbadger.com/images/miguel1993/docker-chimera) [![Docker Stars](https://img.shields.io/docker/stars/miguel1993/docker-chimera.svg)](https://microbadger.com/images/miguel1993/docker-chimera) [![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Configure Chimera - First Run (Copy line by line):
```
docker run -d -p 0.0.0.0:5001:5000 -v /mnt/user/system/appdata/chimera:/db -v /mnt/user/media/downloads:/downloads -e CONFIGURE=TRUE --name chimera miguel1993/docker-chimera
docker exec -it chimera /bin/bash
python3.7 main.py

browse to http://IP:5001/configure
```

## Chimera API mode (Copy line):
```
docker stop chimera ; docker rm chimera ; docker run -d -p 0.0.0.0:5001:5000 -v /mnt/user/system/appdata/chimera:/db -v /mnt/user/media/downloads:/downloads -e CONFIGURE=TRUE --name chimera miguel1993/docker-chimera
```

## Configure Chimera - Subsequent Runs (Copy line by line):
```
docker stop chimera ; docker rm chimera ; docker run -d -p 0.0.0.0:5001:5000 -v /mnt/user/system/appdata/chimera:/db -v /mnt/user/media/downloads:/downloads -e CONFIGURE=TRUE --name chimera miguel1993/docker-chimera
docker exec -it chimera /bin/bash
python3.7 main.py
setup chimera

browse to http://IP:5001/configure
```

## Details
| Parameter | Function  |
| :----: | --- |
|`-p 0.0.0.0:5001:5000` | Modify left side port, chimera runs on port 5000 |
|`-v /mnt/user/system/appdata/chimera:/db` | Location to store chimera database. |
|`-v /mnt/user/media/downloads:/downloads` | Mapped location for downloads |
|`-e CONFIGURE=TRUE` | Enable configure mode, this requires exec'ing into the container. This also disables the API |
|`--name chimera` | Name the container |
