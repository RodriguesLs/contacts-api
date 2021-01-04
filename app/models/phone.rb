class Phone < ApplicationRecord
  belongs_to :kind_phone
  belongs_to :contact
end
