class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates(:content, { :length => { :minimum => 250} })
  validates(:summary, { :length => { :maximum => 250} })
 validates :category, inclusion: { in: %w(Fiction Non-Fiction)} 
   validate :is_clickbait()

 
 def is_clickbait(record)
  
   if @@reqs.detect {|phrase| record.title.include?(phrase)}.nil?
     record.errors[:title] << "Need a beter title"
      
   end 
   
 end 
 
@@reqs = ["Won't Believe", "Secret", "Top[number]", "Guess"]
end
