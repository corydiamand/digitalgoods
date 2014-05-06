class RemoveUserFromGoods < ActiveRecord::Migration
  def change
    remove_reference :goods, :user, index: true
  end
end
