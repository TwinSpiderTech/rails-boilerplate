class Author < ApplicationRecord
    default_scope { order(:author_name) }
    has_many :books, dependent: :destroy

    def update_sale_revenue
        self.update(sale_revenue: books.sum(:revenue))
    end
end
