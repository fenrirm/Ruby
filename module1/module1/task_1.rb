def f(x, a = 0, b = 0, c = 0)
  ac = a.ceil
  bc = b.ceil
  cc = c.ceil

  param = x
  if ((ac && bc) + cc)%2 != 0
    param = x.ceil
  end

  if param < 1 && c != 0
    a*param**2 + b/c
  elsif param > 15 && c == 0
    (param - a) / (param - c)**2
  else
     x**2/c**2
  end
end

def run(xs, xe, xd, a, b, c)
  current = xs

  puts "A:    #{a}\tB:    #{b}\tC:    #{c}"
  while current < xe
    puts "X:    #{current}\tRes:    #{f current, a, b, c}"
    current += xd
  end
end

run(0, 10, 0.75, 1, 6, 9)