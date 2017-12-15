
all: build serve

build:
	cd services/base; docker build -t wstestapp-base:latest .
	cd services/web; docker build -t wstestapp-web .
	cd services/web-uwsgi-wsgi; docker build -t wstestapp-web-wsgi .
	cd services/web-uwsgi-ws; docker build -t wstestapp-web-ws .
	cd services/lb; docker build -t wstestapp-lb .
	cd services/kontena-lb; docker build -t wstestapp-lb .

setup:
	virtualenv2 .env
	.env/bin/pip install -r requirements.txt

serve:
	docker-compose -f docker-compose.uwsgi.yaml up -d
	docker-compose -f docker-compose.uwsgi.yaml logs --tail 50 -tf lb
