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

def fibonacci(n)
    return [0,1].take(n) if n <=2
    previous = fibonacci(n-1)
    previous << previous[-1] + previous[-2]
end

def bsearch(arr,target)
    count = mid_index(arr)
    return nil if !arr.include?(target)
    return arr.index(target) if arr[mid_index(arr)] == target
    
    count += 1
    return count if arr.length == 1
    if target > mid_index(arr)
        arr.select!{ |ele| ele >= arr[mid_index(arr)]}
        bsearch(arr,target)
        
    else
        
       arr.select!{|ele| ele <= arr[mid_index(arr)]}
        bsearch(arr,target)
    end
    
    return counter
end

def mid_index(arr)
    if arr.length.even? 
        return (arr.length/2) - 1
    else 
        return arr.length/2
    end
end
p bsearch([1, 2, 3], 3) # => 0
p bsearch([2, 4, 6, 8, 10], 6) # => 2






