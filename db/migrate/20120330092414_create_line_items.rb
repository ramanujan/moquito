class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :cart
      t.references :product
      t.integer :qty

      t.timestamps
    end
    add_index :line_items, :cart_id
    add_index :line_items, :product_id
  end
end
