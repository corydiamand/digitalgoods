class RemoveAppParentIdFromGoods < ActiveRecord::Migration
  def change
    remove_reference :goods, :parent_app, index: true
  end
end
