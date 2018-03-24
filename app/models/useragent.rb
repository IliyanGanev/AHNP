class Useragent < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  validates :agent, presence: true, uniqueness: true


end
