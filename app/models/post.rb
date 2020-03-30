class Post < ActiveRecord::Base
  validates :post presence :true 
  validates(:content, { :length => { :minimum => 250} })
  validates(:summary, { :length => { :minimum => 250} })
end
