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

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to welcome_path
  end

  def secrets
    if params[:magic_word] == "platypus"
        render :secrets
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to welcome_path
    end
  end
end
