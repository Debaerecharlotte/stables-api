class Stable < ApplicationRecord
  validates :name, :city, :phone, presence: true
end
