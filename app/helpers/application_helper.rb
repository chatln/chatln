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


  #admin
  #devrait etre bien gerer avec les role
  def admin_role(current_user)
    user_signed_in? && current_user.email == 'kamate@gmail.com' || 'odienne@gmail.com'
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
