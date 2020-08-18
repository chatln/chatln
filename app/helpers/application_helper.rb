module ApplicationHelper

# Retourner un titre basé sur la page.
  def title
    base_title = "CHATLN EDUCATION"
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

  #admin  " pas propre.. enum et les bon gem "

  #devrait etre bien gerer avec les role
  def admin_role(current_user)
    user_signed_in? && current_user.email == 'chatln.kamkara@gmail.com'
  end
#status professeur
  def teach_role(current_user)
   user_signed_in? && current_user.email == 'chatln.kamkara@gmail.com' || user_signed_in? && current_user.role == "XP1P2"
  end


  #status professeur
  def student_role(current_user)
   user_signed_in? && current_user.role == "X12"

  end

  def teach_content(current_user)
    user_signed_in? && current_user.id == @course.user_id
  end

  #avatar user
  def gravatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    url = "https://gravatar.com/avatar/#{gravatar_id}.png"
  end

end
