class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :item
      t.float :price
      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
