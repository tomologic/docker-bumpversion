build:
	docker build --force-rm -t tomologic/bumpversion .
run:
	docker run tomologic/bumpversion
rmi:
	docker rmi tomologic/bumpversion
