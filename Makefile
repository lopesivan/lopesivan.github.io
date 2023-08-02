build:
	bundle exec jekyll $@

server:
	./run &
	chrome http://127.0.0.1:4000/
