class AddUserRefToGoods < ActiveRecord::Migration
  def change
    add_reference :goods, :user, index: true
  end
end
