# rain-on-rails

This project was created running:
rails new . --spkip-webpack-install --skip-javascript

The entities was created using:
rails g scaffold place name image_url
rails g scaffold RainMeasure value:integer date:date place:belongs_to
