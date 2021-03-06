class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :user, index: true
      t.references :buyer, index: true
      t.string :name 
      t.float :price
      t.timestamps
    end
  end
end
