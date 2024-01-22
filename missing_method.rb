# frozen_string_literal: true

# Missing methods
class MissingMethod
  # warning: redefining Object#method_missing may cause infinite loop.

  # id is the name of the method called, the * syntax collects
  # all the arguments in an array named 'arguments'
  def method_missing(id, *arguments)
    puts "Method #{id} was called, but not found. It has " +
         "these arguments: #{arguments.join(', ')}"
  end

  def respond_to_missing?
    true
  end
end

missing = MissingMethod.new
missing.__ :a, :b, 10
# => Method __ was called, but not found. It has these
# arguments: a, b, 10
