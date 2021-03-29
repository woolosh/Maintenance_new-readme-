class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :category
      t.string :name
      t.string :date
      t.string :description
      t.integer :price
      t.timestamps
    end
  end
end
