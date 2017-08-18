class User < ApplicationRecord
  has_secure_password

  validates :name,  presence: true
  validates :email, presence: true
  validates :role,  presence: true, inclusion: { in: %w(user guest admin),
                                                 message: "%{value} is not a valud role" }

  has_many :media, as: :consumable
end
