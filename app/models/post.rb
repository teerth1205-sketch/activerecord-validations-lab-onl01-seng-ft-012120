class Post < ActiveRecord::Base
  validates :post presence :true 
  validates(:post_content, { :length => { :minimum => 250} })
  validates(:post_s, { :length => { :minimum => 250} })
end
