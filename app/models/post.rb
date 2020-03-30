class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates(:content, { :length => { :minimum => 250} })
  validates(:summary, { :length => { :maximum => 250} })
 validates :category, inclusion: { in: %w(Fiction Non-Fiction)} 
 
 @@phrases = [/won't believe/, /secret/, /top \d/, /guess/]
 
 def isclickbaity
  valid = false
   if @@phrases.each {|phrase| self.title =~ phrase} 
     valid = true
   else 
     errors[:title] << "Need a beter title"
   end 
   
 end 
end
