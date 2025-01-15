```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle missing methods here
    puts "Method '#{method_name}' not found"
    return nil #Explicitly return to avoid further errors
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
my_object.non_existent_method
puts my_object.value #Corrected: Accessing instance variable through a getter method
```