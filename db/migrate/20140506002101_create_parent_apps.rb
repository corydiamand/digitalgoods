class CreateParentApps < ActiveRecord::Migration
  def change
    create_table :parent_apps do |t|
      t.text :name

      t.timestamps
    end
  end
end
