class Contact < ApplicationRecord
  belongs_to :kind
  has_one :address, :dependent => :destroy
  has_many :phones

  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :phones, allow_destroy: true
end
