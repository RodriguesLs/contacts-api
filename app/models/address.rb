class Address < ApplicationRecord
  belongs_to :contact

  validates :street, :neighborhood, :state, :country, presence: true
end
