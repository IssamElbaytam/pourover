#!/bin/sh

git pull --commit origin gh-pages
git checkout master examples
jekyll build
docco examples/*.js -o examples/examples_build
git commit -am "JEKYLL BUILD"
git push origin gh-pages
