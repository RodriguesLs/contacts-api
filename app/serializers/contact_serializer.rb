class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :remark
  has_one :address
  has_many :phones
end
