# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def parse_coderay(text)
    text.scan(/(<code\:([a-z].+?)>(.+?)<\/code>)/m).each do |match|
      text.gsub!(match[0],CodeRay.scan(match[2], match[1].to_sym).div( :line_numbers => :table,:css => :class))
    end
    return text
  end

  def email
    return( "rogerio@rogerionascimento.com" )
  end
  
  def email_href
    local_email = email
    return "<a href='mailto:#{local_email}'>#{local_email}</a>"
  end
  
  def email_href_with(text)
    local_email = email
    return "<a href='mailto:#{local_email}'>#{text}</a>"
  end

end
