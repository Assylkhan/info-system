class BoardsController < ApplicationController
  def create
    otdel = Otdel.find(params[:board][:otdel_id])
    if otdel.boards.count < 4 then
      otdel.boards.create!(name: params[:board][:name])
    end
    redirect_to otdel
  end

  def destroy
    board = Board.find(params[:id])
    otdel = board.otdel
    board.destroy!
    redirect_to otdel
  end
end
