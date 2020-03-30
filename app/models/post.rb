class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates(:content, { :length => { :minimum => 250} })
  validates(:summary, { :length => { :maximum => 250} })
 validates :category, inclusion: { in: %w(Fiction Non-Fiction)} 
   validate :is_clickbait
 @@phrases = [/won't believe/, /secret/, /top \d/, /guess/]
 
 def is_clickbait
  
   if @@phrases.each {|phrase| self.title && self.title.downcase =~ phrase} 
      true
   else 
     errors[:title] << "Need a beter title"
   end 
   
 end 
end
