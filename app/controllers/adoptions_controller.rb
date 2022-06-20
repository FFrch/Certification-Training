class AdoptionsController < ApplicationController
  def new
    @tree = Tree.find(params[:tree_id])
    @adoption = Adoption.new
  end

  def create
    @adoption = Adoption.new(adoption_params)
    @tree = Tree.find(params[:tree_id])
    @adoption.tree = @tree
    @adoption.save
    redirect_to tree_path(@tree)
  end

  private

  def adoption_params
    params.require(:adoption).permit(:starts_at, :ends_at, :user, :tree)
  end
end
