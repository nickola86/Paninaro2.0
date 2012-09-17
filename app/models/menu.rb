class Menu < ActiveRecord::Base
  attr_accessible :item, :price
  belongs_to :supplier
  has_many :orders
end
