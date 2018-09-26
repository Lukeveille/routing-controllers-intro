class PagesController < ApplicationController

  def about
    render :about
  end

  def welcome
    @header = "Some stuuuuuuuff"
    render :welcome
  end
end
