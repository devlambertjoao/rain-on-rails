# rain-on-rails

This project was created running:
rails new . --spkip-webpack-install --skip-javascript

The entities was created using:
rails g scaffold place name image_url
rails g scaffold RainMeasure value:integer date:date place:belongs_to

## I was added react in this way:
On Gemfile i was added:
gem 'webpacker', '~> 4.0'
gem 'react-rails'

and runned this commands:
$ bundle install
$ rails webpacker:install
$ rails webpacker:install:react
$ rails generate react:install

for create home page i was used:
rails g controller home index
rails g react:component pages/home
