class SearchController < ApplicationController
  def search
    @query_string = params[:q]
    @tasks = Task.where("text like ?", "%#{@query_string}%")
    @otdels = Otdel.where("name like ?", "%#{@query_string}%")
    @boards = Board.where("name like ?", "%#{@query_string}%")
  end
end
