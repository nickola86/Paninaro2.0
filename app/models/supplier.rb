class Supplier < ActiveRecord::Base
  attr_accessible :name, :phone, :address, :email
  has_many :orders
  has_many :products
end
