class CreateGuitars < ActiveRecord::Migration[7.0]
  def change
    create_table :guitars do |t|
      t.string :model, null: false
      t.integer :year

      t.timestamps
    end
  end
end
