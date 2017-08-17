class Admin < ApplicationRecord
  has_secure_password
  #attr_accessor :password_digest

  has_many :media, as: :consumable
end
