class Customer < ApplicationRecord
  has_many :customeritems
  has_many :item,   through: :customeritems
end
