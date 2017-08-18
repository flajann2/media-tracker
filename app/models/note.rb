class Note < ApplicationRecord
  include PgSearch
  belongs_to :medium
end
