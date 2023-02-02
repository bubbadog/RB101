s = 'abc'
puts s.public_methods.inspect

# modify to only list the methods in the receiver (s)
# puts s.public_methods(false).inspect