server.pem: server.conf
	openssl req -new -x509 -keyout server.pem -out server.pem -days 365 -nodes -config server.conf

.PHONY: serve
serve: server.pem
	python simple-https-server.py