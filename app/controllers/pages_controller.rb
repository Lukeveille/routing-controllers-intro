class PagesController < ApplicationController

  def about
    render :about
  end

  def welcome
    @header = "Some stuuuuuuuff"
    render :welcome
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
  end
end
