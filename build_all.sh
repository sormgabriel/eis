#!/usr/bin/env sh
set -e
cd ejemplo_banco
bundle install
bundle exec rake
cd ..
cd chopper
bundle install
bundle exec rake
cd ..
cd stone_paper_scissors_monkey
bundle exec rake
cd ..
cd base_cucumber
bundle install
bundle exec rake
