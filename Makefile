DOCKER=$(shell which docker)

build:
	$(DOCKER) build -t djmattyg007/wkhtmltopdf-server .
