class AddSaleRevenueToAuthor < ActiveRecord::Migration[7.0]
  def up
    add_column :authors, :sale_revenue, :flot, default: 0

    update_revenue
  end
  
  def down
    remove_column :authors, :sale_revenue
  end
end

def update_revenue
  Author.find_each do |author|
    total_revenue = author.books.sum(:revenue)
    author.update(sale_revenue: total_revenue)
    puts author.reload.sale_revenue
  end
end
