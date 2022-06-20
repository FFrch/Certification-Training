class AdoptionsController < ApplicationController
  def new
    @tree = Tree.find(params[:tree_id])
    @adoption = Adoption.new
    @starts_at = Date.today
    @ends_at = @starts_at.year + 12
  end

  def create
    @adoption = Adoption.new(adoption_params)
    @tree = Tree.find(params[:tree_id])
    @adoption.tree = @tree
    if @adoption.save
      redirect_to tree_path(@tree)
    else
      render 'trees/show'
    end
  end

  private

  def adoption_params
    params.require(:adoption).permit(:starts_at, :ends_at, :user, :tree)
  end
end
