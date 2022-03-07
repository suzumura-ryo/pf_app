class Recipe < ApplicationRecord
  belongs_to :user
  has_many :procedures
  default_scope -> { order(created_at: :desc) }
end
