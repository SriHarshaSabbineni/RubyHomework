# inheritance => code reusability
#has a relationship(class has students)- no inheritance
#is a relationship (car is a vehicle)- apply inheritance

class A
  def m1
   puts "parent class"
  end
end

class B<A#inheritance symbol
  def m2
    puts "child class"
  end
end

a1=A.new
a1.m1

b1=B.new
b1.m1
b1.m2
