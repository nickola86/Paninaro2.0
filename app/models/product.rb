class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :supplier, :orders
  belongs_to :supplier
  has_many :orders
  validates_presence_of :price,:description,:name
end
