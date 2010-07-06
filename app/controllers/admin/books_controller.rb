class Admin::BooksController < Admin::TagsController
  administrate_me do |admin|
    admin.search 'books.title', 'books.abstract'
    admin.order 'books.published_on DESC, books.title'
    admin.filters do |filter|
      filter.combo :category_id do
        Category.to_select
      end
    end
  end
end

