deploy:

	rm -rf ./build
	wintersmith build -c config-build.json 
	cd ./build && \
	git init . && \
	git add . && \
	git commit -m "Deploy"; \
	git push "git@github.com:apoorvasrinivasan/cocreatechange.git" master:gh-pages --force && \
	rm -rf .git
	
