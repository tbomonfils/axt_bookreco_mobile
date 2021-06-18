docker build -t perso_onnx:0.1 -f dockerfile.dev .

docker run -it \
	-p 8888:8888 -p 5000:5000 -p 6006:6006 --rm \
	-v //c/Users/Thibaud/Desktop/D2F/perso_saliency_detec_mobile:/usr/src/app/ \
	-e DISPLAY=192.168.99.1:0 -v /tmp/.X11-unix:/tmp/.X11-unix \
	perso_onnx:0.1 /bin/bash

#Docker run
docker run -it \
	-p 8888:8888 -p 5000:5000 -p 6006:6006 --rm \
	-v //c/Users/Thibaud/Desktop/D2F/*repository_dir*:/home/app/ \
	-e DISPLAY=192.168.99.1:0 -v /tmp/.X11-unix:/tmp/.X11-unix \
	*image_name*:dev \
	jupyter notebook --ip=0.0.0.0 --allow-root &