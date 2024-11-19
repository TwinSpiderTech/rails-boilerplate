class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.references :author, null: false, foreign_key: true
      t.float :price
      t.date :published_date
      t.integer :sold, default: 0

      t.timestamps
    end
  end
end
