class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :matricule, :contact, :role,
                                   :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :username, :contact, :city, :school,
                                :level_id, :classe, :matricule, :avatar, :gender,
                                 :resume, :password, :password_confirmation, :current_password)
  end

end
