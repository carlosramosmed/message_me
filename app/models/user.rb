class User < ApplicationRecord
  validates :username, 
    presence: true, 
    uniqueness: true, 
    length: { 
      in: 3..15, 
      too_short: "Must be minimum 3 characters long", 
      too_long: "Must be maximum 15 characters long" 
    }
  has_many :messages
  has_secure_password
end