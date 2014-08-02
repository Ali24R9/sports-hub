class WelcomeController < ApplicationController
  require 'twitter'

  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = 
      config.consumer_secret = 
      config.access_token = 
      config.access_token_secret = 
    end

    @nba = client.search('nba').take(4)
    @nfl = client.search('nfl').take(4)
    @worldcup = client.search('worldcup').take(4)
  end

end
