# Author: Hsiaoming Yang <lepture@me.com>
# Website: http://lab.lepture.com/chinalaw

.PHONY: build-doc publish clean server

build-doc:
	@nico build -C nico.json -v

server:
	@nico server -C nico.json --watch

publish: clean build-doc
	@ghp-import _site -p

clean:
	@rm -fr _site
