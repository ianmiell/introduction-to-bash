DEPLOY_DIR  :=/var/www/html/meirionconsulting/personal-website/talks/openshift_cluster_testing_april_2018
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
NAME        := intro-to-bash

build:
	PATH=${PATH}:./asciidoctor-reveal.js/bin bundle exec asciidoctor-revealjs $(NAME).asciidoc
	rm -f $(NAME).pdf $(NAME).tar
	asciidoctor-pdf $(NAME).asciidoc
	open $(NAME).html

deploy:
	rm -f $(NAME).tar.gz && tar -zcvf /tmp/$(NAME).tar.gz . && mv /tmp/$(NAME).tar.gz .
	mkdir -p $(NAME)
	cp -R $(NAME).html $(DEPLOY_DIR)/index.html
	cp -R images $(DEPLOY_DIR)

all: setup build deploy

setup:
	git clone git://github.com/asciidoctor/asciidoctor-reveal.js.git || true
	git clone git://github.com/hakimel/reveal.js.git || true
	bundle || sudo gem install bundler
	sudo bundle install
	sudo gem install prawn --version 1.3.0
	sudo gem install addressable --version 2.4.0
	sudo gem install prawn-svg --version 0.21.0
	sudo gem install prawn-templates --version 0.0.3
	sudo gem install asciidoctor-pdf --pre
	cd asciidoctor-reveal.js && git pull && npm i
	cd asciidoctor-reveal.js
	echo "source 'https://rubygems.org'\n\ngem 'asciidoctor-revealjs'" > Gemfile
	bundle config --local github.https true
	bundle --path=.bundle/gems --binstubs=.bundle/.bin
	touch $(NAME).asciidoc
