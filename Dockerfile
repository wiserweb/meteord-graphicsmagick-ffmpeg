FROM meteorhacks/meteord:base

RUN  apt-get update && apt-get -y dist-upgrade && echo "deb http://www.deb-multimedia.org wheezy main" >> /etc/apt/sources.list && apt-get update && apt-get dist-upgrade &&  apt-get install -y --force-yes \
	deb-multimedia-keyring \
	graphicsmagick \
	graphicsmagick-imagemagick-compat \
	ffmpeg \
&& apt-get autoremove && apt-get clean \
&& rm -rf /var/lib/apt/lists/*
