class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :menu
  belongs_to :supplier
  belongs_to :product
  attr_accessible :user, :menu, :product, :supplier
end
