class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :description
      t.float :price
      t.references :user
      t.references :product
      t.references :supplier
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
