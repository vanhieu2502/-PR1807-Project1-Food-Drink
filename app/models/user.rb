class User < ApplicationRecord
  has_many  :addresses, dependent: :destroy
  validates :name, presences: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }	
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  VALID_PHONE_REGEX =  ^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$
  validates :phone, presence: true, length: { is: 10 },
                    format: { with: VALID_PHONE_REGEX },
                    uniqueness: { case_sensitive: false }    

end
