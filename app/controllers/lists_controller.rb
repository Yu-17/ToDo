class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)

    list.save
    redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end


  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to lists_path
  end


  def destroy
    list = List.find(params[:id])
    list.destroy
    respond_to do |format|
      format.html { redirect_to lists_path, notice: "Task was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
