#!/bin/sh

export RAILS_ENV=production
export SECRET_KEY_BASE=70f6a311323cb296a3ee8791ee8a586c126bafa16f6de5fa1c876116b1aae19b4c35396983a4a3b8d6112a10fd14cc7f7767af62f45a7ce5ea5a5b3a8f592ac6
bundle exec ./bin/rails server -b 0.0.0.0
