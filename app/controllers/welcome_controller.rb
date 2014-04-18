class WelcomeController < ApplicationController
  require 'twitter'

  def index
    @users = User.all
    end

    # @nba = client.search('nba').first


end
