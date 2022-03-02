![Unit Tests & Lint](https://github.com/Devyatiyarov/Tasklist-online/workflows/Unit%20Tests%20&%20Lint/badge.svg)
# Task list online

## Require
* Ruby 3.0.3
### PostgreSQL installation
* sudo apt install postgresql
* sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"
### Set up
* gem install bundler
* bundle install
* sudo apt install yarn
* bundle exec rails webpacker:install
* bundle exec rake db:create
* rake db:migrate
### Rspec
* bundle exec rspec
### Rubocop
* bundle exec rubocop
### Run
* rails s

