class Author < ActiveRecord::Base
   validates :name, presence: true
   validates :name, uniqueness: true
   validates(:registration_number, { :length => { :is => 6 } })
  
end
