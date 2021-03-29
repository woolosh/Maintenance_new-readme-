class CreateMaintenances < ActiveRecord::Migration[6.0]
  def change
    create_table :maintenances do |t|
      t.string :description
      t.integer :price
      t.string :date
      t.timestamps
    end
  end
end
