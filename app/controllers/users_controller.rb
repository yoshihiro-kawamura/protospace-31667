class UsersController < ApplicationController

  def show 
    user = User.find(params[:id])
    @users = user.users
    @profile = user.profile
    @occupation = user.occupation
    @position = user.position
    @prototypes = Prototype.all
  end
end
