module ApplicationHelper
    def gravatar_for(email, options= {size: 80})
        hash = Digest::MD5.hexdigest(email)
        size=options[:size]
        url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
        image_tag(url, alt: 'user-avatar')
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def is_logged_in?
        !!current_user
    end

end
