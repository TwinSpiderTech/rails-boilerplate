class AddRevenueToBooks < ActiveRecord::Migration[7.0]
  def up
    add_column :books, :revenue, :flot, default: 0

    execute <<-SQL
      UPDATE books
      SET revenue = sold * price
    SQL
  end
  
  def down
    remove_column :books, :revenue
  end
  
end
