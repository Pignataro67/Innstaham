# require 'bcrypt'
class User < ApplicationRecord
  validates_confirmation_of :password
  # has_secure_password
  
  def authenticate(plaintext_password)
    BCrypt::Password.new(self.password_digest) == plaintext_password
  end

  # def set_img_url
  #   self.img_url.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'snowflake.png')), filename: 'snowflake.png', content_type: 'image/png')	    self.img_url.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'snowflake.png')), filename: 'snowflake.png', content_type: 'image/png')
  # end	 
end