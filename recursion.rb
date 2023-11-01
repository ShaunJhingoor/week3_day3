def range(first, last) # (1, 5)
    return [] if last  == first
    range(first + 1, last).unshift(first)
  
end
def exp(b,n)
    return  1 if n == 0
    return b if n== 1
    b * exp(b,n - 1) 
end
def exp1(b,n)
    return  1 if n == 0
    return b if n== 1
    return b * b  if n==2
    exp1(b,n/2) * exp1(b,n/2) if n.even? 
    b * exp1(b,(n- 1)/2) * exp1(b,(n - 1)/2) if n.odd?
end
p exp1(3,5)
p exp1(3,11)

