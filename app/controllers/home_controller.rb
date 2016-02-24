class HomeController < BaseController
  def index
    p "aaaaaaaaaaaaaaaaa"
    p Settings
    p Settings.twitter.consumer_key
  end
end
