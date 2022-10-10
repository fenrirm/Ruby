def matrix(n)
  m = []

  n.times {
    |i|
    row = []
    n.times {
      |j|
      if i == j
        row.push(1)
      else
        row.push(1)
      end
    }
    m.push(row)
  }
  m
end



m = matrix(2)

puts "first matrix"
puts m.to_a

(0..m.size - 1).each { |i|

}




