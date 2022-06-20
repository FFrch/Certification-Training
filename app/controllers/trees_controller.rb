class TreesController < ApplicationController

  def index
    @trees = Tree.all
  end

  def new
    @tree = Tree.new
  end
end
