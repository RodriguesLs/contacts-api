class Contact < ApplicationRecord
  belongs_to :kind
  has_one :address
  has_many :phones

  accepts_nested_attributes_for :address, :phones, allow_destroy: true
end
