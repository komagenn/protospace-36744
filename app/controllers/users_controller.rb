class UsersController < ApplicationController

  def index
    @user = User.all
  
  end

  def show
    @user = User.find(params[:id])
    @prototype = Prototype.all
  end
end
