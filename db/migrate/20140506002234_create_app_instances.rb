class CreateAppInstances < ActiveRecord::Migration
  def change
    create_table :app_instances do |t|
      t.references :parent_app, index: true
      t.integer :unique_identifier
      t.references :user, index: true

      t.timestamps
    end
  end
end
