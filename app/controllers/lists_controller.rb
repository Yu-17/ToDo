class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/'
  end

  def index
    @list = List.all.order(created_at: 'desc')


  end

  private
  def list_params
    params.require(:list).permit(:title, :text)
  end
end
