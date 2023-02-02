def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# expect to print
#=> [4,5,3]

# actual => [4,5,3,6]
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end
Here b and c have default values. If you send only two arguments to this method:

my_method(1, 4)
You will see ruby print [1, 2, 3, 4].

If you send three arguments:

my_method(1, 5, 6)
You will see ruby print [1, 5, 3, 6].

Describing this in words gets complicated and confusing. I'll describe it in variables and values instead.

First 1 is assigned to a, then 6 is assigned to d. This leaves only the arguments with default values. Since 5 has not been assigned to a value yet, it is given to b and c uses its default value of 3.