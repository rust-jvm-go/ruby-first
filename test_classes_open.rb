# frozen_string_literal: true

# Ruby classes are open. You can open them up, add to them, and change them at any time.
# Even core classes, like Integer or even Object, the parent of all objects. Ruby defines
# a bunch of methods for dealing with time on Integer.
# Watch:
class Integer
  def hours
    self * 3600 # number of seconds in an hour
  end
  alias hour hours
end

# 14 hours from 00:00 January 1st
# (aka when you finally wake up ;)
Time.mktime(2006, 1, 1) + 14.hours # => Sun Jan 01 14:00:00
