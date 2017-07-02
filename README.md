**Application**

[Wkhtmltopdf Server](https://github.com/djmattyg007/wkhtmltopdf-server)

**Description**

Wkhtmltopdf and Wkhtmltoimage are programs designed to convert webpages into PDF, PNG or JPEG files. This Dockerfile runs Wkhtmltopdf Server, which accepts HTML in the body of a POST request and returns a PDF, PNG or JPEG file depending on which endpoint is called. It can also return the version of Wkhtmltopdf in use, or display its license text.

You can customise which port wkhtmltopdf-server listens on by setting the WKHTMLTOX\_PORT environment variable.

**Build notes**

This repository contains a compiled version of wkhtmltopdf-server v1.0.0, to avoid the need to manually build it within the container. This binary is covered by the same LICENSE text found within this repository, and is compiled by running 'make build' within the git repository for the wkhtmltopdf-server project. You can find the code and license for this binary at the following location:
https://github.com/djmattyg007/wkhtmltopdf-server
