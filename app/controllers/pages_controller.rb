class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def about
    render :about
  end

  def welcome
    @header = "Some stuuuuuuuff"
    render :welcome
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
  end

  def kitten
  end

  def kittens
  end
end
