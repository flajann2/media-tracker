class Medium < ApplicationRecord
  include PgSearch
  belongs_to :consumable, polymorphic: true

  validates :title, presence: true
  validates :description, presence: true
  validates :uri, presence: true
  validates :media_type, presence: true
end
