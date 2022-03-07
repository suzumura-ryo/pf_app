class Procedure < ApplicationRecord
  belongs_to :recipes
  default_scope -> { order(created_at: :desc) }
end
