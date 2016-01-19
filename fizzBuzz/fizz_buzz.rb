# Multiples of three print "Fizz" instead of the number
# and for the multiples of five print "Buzz".
# For numbers which are multiples of both three and five print "FizzBuzz"

WORDMAP = ["FizzBuzz","Buzz", "Fizz"]

def process(n, x, y)
  
  if (n%x == 0 && n%y == 0)
    WORDMAP[0]
    
  elsif n%x == 0
    WORDMAP[1]
    
  elsif n%y == 0
    WORDMAP[2]
    
  else
    
    n
  end
  
end

x=3
y=5
(1..100).each do |num|
  
  puts process(num, x, y)
  
end