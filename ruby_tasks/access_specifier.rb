class Person
  def public_method
    puts "public_method"
    private_method #without explicit receiver
    a = Person.new
    a.protected_method
    self.protected_method
  end
 private
  def private_method
    puts "private_method"
  end
 protected
  def protected_method
    puts "protected_method"
  end
end

p = Person.new
p.public_method
# p.protected_method cannot be called like this