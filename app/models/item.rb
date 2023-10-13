class Item < ApplicationRecord
  belongs_to :user
  validates :item_name, :item_type, :description, :price,  presence: true
end
