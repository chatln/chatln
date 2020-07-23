module ApplicationHelper

# Retourner un titre basé sur la page.
  def title
    base_title = "CHATLN Education"
    if @title.nil?
      base_title
    else
      "#{@title} | #{base_title}"
    end
  end

  #SIGN UP AND SIGN IN FORM ANYWHERE
  def resource_name
    :user
  end

  def resource_class
     User
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end



  #admin
  #devrait etre bien gerer avec les role
  def admin_role(current_user)
    user_signed_in? && current_user.email == 'chatln.kamkara@gmail.com'
  end
#status
  #revoir la  condition
  def status_user(current_user)
   user_signed_in? && current_user.status == "1"

  end

def author_content(current_user)
  user_signed_in? && current_user.id == @course.user_id
end

#avatar user
  def gravatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    url = "https://gravatar.com/avatar/#{gravatar_id}.png"
  end

end
