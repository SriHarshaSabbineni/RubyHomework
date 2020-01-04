#access specifiers

class A

  public
  def m1
    puts "1"
  end
  def m2
    puts "2"
  end

#public :m1,:m2
end

a1=A.new
a1.m1
a1.m2

#by default initialized methods are private???????
#In protected all methods can be accessed from child class
# can child class access attributes of parent class?
  
