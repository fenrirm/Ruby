arrayA = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]

arrayC = []

def create_array(arrayA, arrayC)

  j = (arrayA.size/2).to_i

  (0..(arrayA.size/2)-1).each { |i|
    arrayC[i] = arrayA[j-1]
    j = j -1
  }

  k = arrayA.size.to_i

  (arrayA.size / 2..arrayA.size-1).each { |i|
    arrayC[i] = arrayA[k-1]
    k=k-1
  }
end

create_array(arrayA, arrayC)

(0..arrayC.size).each { |i|
  puts arrayC[i]
}



