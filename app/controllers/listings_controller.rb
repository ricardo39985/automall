# frozen_string_literal: true

class ListingsController < ApplicationController
  def index
    @listings= Listing.all
   end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to @listing

    else
      # byebug
      render 'new'
    end
  end

  def update; end

  def delete; end

  private

  def listing_params
    params.require(:listing).permit(:year, :make, :model, :color, :features, :miles)
  end
end
