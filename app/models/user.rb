class User < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name,presence:true,length:{maximum:50},uniqueness: { case_sensitive: false }#name必须唯一，防止使用相同的头像
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
    has_secure_password#密码加密后的值
    validates :password, presence: true, length: { minimum: 6 }
    
    def User.digest(string) 
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost 
        BCrypt::Password.create(string, cost: cost) 
    end
end
