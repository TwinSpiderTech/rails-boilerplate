class Book < ApplicationRecord
  default_scope { order(:title) }

  belongs_to :author, counter_cache: true

  before_save :update_revenue
  after_save :update_author_sale_revenue

  def update_revenue
    self.revenue=price*sold
  end

  def update_author_sale_revenue
    self.author.update_sale_revenue
  end
  
  
end
