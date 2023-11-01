def range(first, last) # (1, 5)
    return [] if last  == first
    range(first + 1, last).unshift(first)
  
end

p range(1, 5)