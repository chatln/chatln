class UsersController < ApplicationController
 before_action :authenticate_user!
  before_action :slug_user, only:[ :show, :edit, :update]


  def show
    #@courses = @user.courses.order('created_at desc')
  end

  def edit
    #current_user.edit(user_params)
    #redirect_to current_user
  end

  def update
  end

  private
   def slug_user
    @user = User.friendly.find(params[:id])
   end

  def user_params
   params.require(:user).permit(:username, :contact, :city, :school,
                                 :level_id, :role, :resume, :gender,
                                 :matricule, :slug)
  end
end
