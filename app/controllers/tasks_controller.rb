class TasksController < ApplicationController
  def create
    board = Board.find(params[:task][:board_id])
    board.tasks.create!(text: params[:task][:text])
    redirect_to board.otdel
  end

  def update
    task = Task.find(params[:id])
    task.update!(done: true)
    redirect_to task.board.otdel
  end

  def destroy
    task = Task.find(params[:id])
    otdel = task.board.otdel
    task.destroy!
    redirect_to otdel
  end
end
