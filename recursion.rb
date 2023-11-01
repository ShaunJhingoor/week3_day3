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

class Array
    def deep_dup
        arr=[]
        self.each_with_index do |el,i|
           if self[i].is_a?(Array)
            
               arr.push(self[i].deep_dup)
           else
                arr<<self[i]
           end
        end
        return arr
    end

end

array = [[1,2], 3,[4]]

copy = array.deep_dup 
p copy[0].object_id
p array[0].object_id




