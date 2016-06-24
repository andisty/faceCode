module ApplicationHelper
  def gravatar_for(user, options = { size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "http://www.adweek.com/socialtimes/files/2014/08/anonymous.jpg"
    image_tag(gravatar_url, alt: user.email)
  end
end
