P5_VERSION=1.11.5
go:
	wget https://github.com/processing/p5.js/releases/download/v$(P5_VERSION)/p5.zip
	unzip p5.zip
	ln -s p5/addons/p5.sound.min.js p5.sound.min.js
	ln -s p5/p5.min.js p5.min.js
	yes | rm -r .git
	rm Makefile
	git init

go-sub:
	ln -s ../p5/addons/p5.sound.min.js p5.sound.min.js
	ln -s ../p5/p5.min.js p5.min.js
	yes | rm -r .git
	rm Makefile
	git init

go-base:
	wget https://github.com/processing/p5.js/releases/download/v$(P5_VERSION)/p5.zip
	unzip p5.zip
	rm Makefile
