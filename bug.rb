```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle missing methods here
    puts "Method '#{method_name}' not found"
  end
end

my_object = MyClass.new(10)
my_object.non_existent_method #This will execute the method_missing method
my_object.value #This will throw an exception as the instance variable is not accessible directly
```