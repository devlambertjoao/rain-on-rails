class HomeController < ApplicationController
  def index
    render component: 'pages/Home', props: {}
  end
end
