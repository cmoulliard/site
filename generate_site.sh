#!/usr/bin/env bash

rm -rf _site
jekyll build --config _config_github.yml
rm -rf gh-pages && git clone https://github.com/cmoulliard/site.git gh-pages
cd gh-pages && git checkout gh-pages
git rm -rf .
cp -r ../_site/ .
git add .
git commit -am "Site updated"
git push origin gh-pages