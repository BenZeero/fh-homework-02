class RenameFictionNonfictionToBookTypeBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :fiction_nonfiction, :book_type
  end
end
