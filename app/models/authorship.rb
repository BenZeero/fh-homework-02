class Authorship < ApplicationRecord

  belongs_to :author  # author_id is the field in the DB
  belongs_to :book    # book_id is the field in the DB

end
