ifndef image
$(echo "Please specify an image and tag"; exit 1)
endif


ifndef tag
tag = latest
endif

login:
	# Get AWS ECR creds
	$(aws ecr get-login --no-include-email --region eu-west-1)


build:
	docker build -t ${image} .

run:
	docker run -it --network=host --rm  -p 0.0.0.0:27015:27015 -p 0.0.0.0:27005:27005 --name=gmod-ttt ${image}:${tag}

push: login
	# Tag and push tag
	docker tag ${image} 517511976823.dkr.ecr.eu-west-1.amazonaws.com/${image}
	docker push 517511976823.dkr.ecr.eu-west-1.amazonaws.com/${image}


pull: login
	docker pull 517511976823.dkr.ecr.eu-west-1.amazonaws.com/${image}