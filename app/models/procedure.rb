class Procedure < ApplicationRecord
  belongs_to :recipe
  default_scope -> { order(created_at: :desc) }
end
