class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :first_name
      t.string :last_name
      t.string :book_name
      t.integer :book_quantity
      t.string :address
      t.timestamps
    end
  end
end
