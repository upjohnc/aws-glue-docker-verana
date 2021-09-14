build-3-0:
	docker build -t aws-glue:v3-0 -f docker/Dockerfile-aws-glue-3-0 .

run-3-0:
	docker run -itd aws-glue:v3-0