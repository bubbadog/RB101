a = %w(a b c d e)                         #=> a = ["a", "b", "c", "d", "e"]
puts a.fetch(7)                           #=> IndexError: index 7 is outside of array bounds
puts a.fetch(7, 'beats me')               #=> 'beats me', prints the default value, returns nil
puts a.fetch(7) { |index| index**2 }      #=> 49 , returns 14 since if a block is given it will 
                                          # only be executed when an invalid index is referenced.