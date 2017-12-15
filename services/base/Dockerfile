FROM pritunl/archlinux:2017-12-02

RUN pacman -Sy --noconfirm \
    gcc \
    python2 \
    python2-pip

RUN pacman -Sy --noconfirm \
    uwsgi-plugin-python2

COPY requirements.txt /

RUN pip2 install -r /requirements.txt

RUN mkdir -p /app

WORKDIR /app

