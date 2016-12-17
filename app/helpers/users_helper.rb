module UsersHelper#辅助方法在任意视图中都可用
    
    # 返回指定用户的 Gravatar
    def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
end
