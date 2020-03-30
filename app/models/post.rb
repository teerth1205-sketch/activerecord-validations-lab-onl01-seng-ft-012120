class Post < ActiveRecord::Base
  validates :post presence :true 
  validates(:content, { :length => { :minimum => 250} })
  validates(:summary, { :length => { :maximum => 250} })
  validates :category, inclusion
end
