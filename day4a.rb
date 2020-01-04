class Book
  attr_accessor :title, :author
  def initialize (aTitle=nil, aAuthor=nil)
     @title=aTitle
     @author=aAuthor
  end
  def to_s
    "book name is #{@title}"
  end
end



b1=Book.new
puts b1.methods
puts b1

 #all classes are child classes of object clss
  # all the classes are subclasses of object class
  #overriding  
#zoom meetings
