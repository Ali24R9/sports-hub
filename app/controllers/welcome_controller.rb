class WelcomeController < ApplicationController
  require 'twitter'

  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'sINjDitlNubm6ZflEf4clUgor'
      config.consumer_secret = 'ue9WpZNpAiSh2F98STn9AebXNInMTNbHJvbhHrGvsiBDorx3p9'
      config.access_token = '2451963320-WLrz17FIBX7OaIiL8oKFB9K4QIdMQEps5qcmgtr'
      config.access_token_secret = 'rMK61AaFGGzulutaEfj8GptIU0Tp6WPmzWbIRxs4ZokvO'
    end

    @nba = client.search('nba').take(4)
    @nfl = client.search('nfl').take(4)
    @worldcup = client.search('worldcup').take(4)
  end

end
