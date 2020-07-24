class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


   #configure desise to add more fields
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username,
                                       :contact, :matricule, :role])

    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :username, :contact,
                                      :matricule, :role, :classe, :resume, :city, :gender,
                                      :level_id])
  end

 def after_sign_up_path_for(resource)
    #page profile
  end
end
