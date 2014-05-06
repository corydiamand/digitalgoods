class RemoveTypeFromGoods < ActiveRecord::Migration
  def change
    remove_column :goods, :type, :text
  end
end
