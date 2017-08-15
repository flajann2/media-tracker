class Medium < ApplicationRecord
  include PgSearch
  belongs_to :consumable, polymorphic: true
end
