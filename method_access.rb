# frozen_string_literal: true

# Method access
class TestMethodAccess
  # public by default
  def identifier
    99
  end

  def ==(other)
    identifier == other.identifier
  end
end

t1 = TestMethodAccess.new  # => #<TestMethodAccess:0x######>
t2 = TestMethodAccess.new  # => #<TestMethodAccess:0x######>
t1 == t2                   # => true

# now make `identifier' protected; it still works
# because protected allows `other' as receiver

class TestMethodAccess
  protected :identifier
end  # => true

# now make `identifier' private

class TestMethodAccess
  private :identifier
end

t1 == t2
# NoMethodError
