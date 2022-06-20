class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    @tree.save

    redirect_to trees_path(@trees)
  end

  def edit
    @tree = Tree.find(params[:id])
  end

  def update
    @tree = Tree.find(params[:id])
    @tree.update(tree_params)

    redirect_to tree_path(@tree)
  end

  private

  def tree_params
    params.require(:tree).permit(:name, :address, :fruits, :description, :quantity_by_year, :price_per_year)
  end
end
