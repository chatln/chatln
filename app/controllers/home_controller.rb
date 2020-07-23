class HomeController < ApplicationController

  def index
    @courses = Course.all.order('created_at desc')
    @matieres = Matiere.all
    #@levels = Level.all
  end

  def connect

  end

end

#if user_signed_in?
#      @user = current_user
#      ids = current_user.levels.pluck(:id)
#      ids << current_user.level_id
#
#      @courses = Course.where(promotion_name: ids)
#      repond_to do |format|
#        format.html
#        format.js { render "courses/courses"}
#      end
