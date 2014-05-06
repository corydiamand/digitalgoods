class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.text :name
      t.text :type
      t.references :user, index: true
      t.references :parent_app, index: true
      t.references :app_instance, index: true

      t.timestamps
    end
  end
end
