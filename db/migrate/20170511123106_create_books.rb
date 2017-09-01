class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.text :description
      t.string :evaluation

      t.timestamps
    end
  end
end
