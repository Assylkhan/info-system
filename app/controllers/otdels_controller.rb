class OtdelsController < ApplicationController
  def index
    @otdels = Otdel.all
    @otdel = Otdel.new
  end

  def show
    @otdel = Otdel.find(params[:id])
  end

  def create
    Otdel.create!(name: params[:otdel][:name])
    redirect_to otdels_path
  end

  def destroy
    puts params
    Otdel.find(params[:id]).destroy
    redirect_to otdels_path
  end
end
