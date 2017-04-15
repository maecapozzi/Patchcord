class UsersController < ApplicationController
  def index
    if params[:searching_for] == "1"
      @users = User.where(role: "musician");
    else
      @users = User.where(role: "booker");
    end
  end
end
