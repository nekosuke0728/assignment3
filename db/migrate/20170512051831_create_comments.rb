class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :book_id
      t.text :body
      t.string :nickname

      t.timestamps
    end
  end
end
