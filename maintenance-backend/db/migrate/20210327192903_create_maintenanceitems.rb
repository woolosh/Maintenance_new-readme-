class CreateMaintenanceitems < ActiveRecord::Migration[6.0]
  def change
    create_table :maintenanceitems do |t|
      t.integer :item_id
      t.integer :maintenance_id
      t.timestamps
    end
  end
end
