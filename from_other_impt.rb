# frozen_string_literal: true

# Everything has a value
x = 10
y = 11
z = if x < y
      true
    else
      false
    end
z

# Method names are allowed to start with capital letters. This can lead to confusion:
Constant = 10
def Constant
  11
end
# Now Constant is 10, but Constant() is 11.
Constant
Constant()

# Keyword arguments
def deliver(from: "A", to: nil, via: "mail")
  "Sending from #{from} to #{to} via #{via}."
end

deliver(to: "B")
# => "Sending from A to B via mail."
deliver(via: "Pony Express", from: "B", to: "A")
# => "Sending from B to A via Pony Express."

# The universal truth
# In Ruby, everything except nil and false is considered true.
if 0
  puts "0 is true"
else
  puts "0 is false"
end
