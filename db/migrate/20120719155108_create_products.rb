class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :price
      t.references :supplier
      t.timestamps
    end
  end
end
