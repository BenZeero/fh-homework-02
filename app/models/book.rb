class Book < ApplicationRecord

  has_many :authorships
  has_many :authors, through: :authorships
  
  def self.classifications
    [
      'General Works', 
      'Encyclopedias',
      'Philosophy',
      'Psychology',
      'Religion',
      'History',
      'Auxiliary Sciences',
      'History (except American)',
      'General U.S. History',
      'Local U.S. History',
      'Geography', 
      'Anthropology', 
      'Recreation',
      'Social Sciences',
      'Political Science',
      'Law',
      'Education',
      'Music', 
      'Fine Arts', 
      'Language and Literature', 
      'Science','Medicine', 
      'Agriculture',
      'Technology', 
      'Military', 
      'Naval Science', 
      'Bibliography',
      'Library Science'
    ]
  end

  def self.book_types
    [
      'Fiction',
      'Nonfiction'
    ]
  end



  def author_info
    authors.map(&:full_name).join(", ")
  end
  
end
