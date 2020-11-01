def check(a, b, c)
  result = 'ERROR'
  
  if ((a == 0) or (b == 0) or (c == 0))
    result = 'zero value'    
  elsif ((a < 0) or (b < 0) or (c < 0))
    result = 'negative value'
  elsif ((a+b <= c) or (a+c <= b) or (b+c <= a))
    result = 'invalid'
  elsif ((a == c) and (a == b) and (b == c))
    result = 'equaliteral'
  elsif ((a == c) or (a == b) or (b == c))
    result = 'isosceles'
  else     
    result = 'valid'
  end

  print result
end

if (ARGV.length != 3)
  print 'no args'
else
  a = ARGV[0].to_f
  b = ARGV[1].to_f
  c = ARGV[2].to_f
  check(a, b, c)
end
