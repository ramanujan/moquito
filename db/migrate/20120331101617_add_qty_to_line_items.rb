class AddQtyToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :qty, :integer, :default=>1

  end
end
