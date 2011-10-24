# class has to be declared before it can be used (unlike JavaScript)
# the latest method with the same name overrides any other prior method with the same name
# there is only 1 method signature allowed
class SimpleClass
  def self.static
    begin
     @@class_attr += 1
    rescue
     @@class_attr = 0
    end
     puts 'static singleton method' + @@class_attr.to_s
  end

  def method1 a, b
    puts a + b
  end

  def method1 a
    puts a
  end
end

2.times { SimpleClass.static }
x = SimpleClass.new
x.method1 'zebra'
