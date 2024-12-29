def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    return(arr[-index])
end

def first_element(arr)
    # return the first element of the array
    return(arr[0])
end

def last_element(arr)
    # return the last element of the array
    return(arr.last)
end

def first_n(arr, n)
    # return the first n elements of the array
    return(arr.take(n))
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    return(arr.drop(n))
end
def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    return(arr.push(element))
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    return(arr.unshift(element))
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    return(arr.insert(index, element))
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    return(arr.insert(index, "1","2"))
end
def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    return(arr.pop)
    
end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    return(arr.shift)
    
end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    return(arr.delete_at(index))
    
end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    return arr.delete(val)
    
end

def select_arr(arr)
    # select and return all odd numbers from the Array variable `arr`
      arr.select {|a| !(a%2==0)}
  end
  
  def reject_arr(arr)
    # reject all elements which are divisible by 3
      arr.reject {|a| a % 3==0}
  end
  
  def delete_arr(arr)
    # delete all negative elements
      arr.delete_if {|a| a < 0}
  end
  
  def keep_arr(arr)
    # keep all non negative elements ( >= 0)
      arr.keep_if {|a| a < 0}
  end


  #--------------------------  HASHES  --------------------------

  # Initialize 3 variables here as explained in the problem statement
empty_hash  = Hash.new

default_hash = Hash.new(1)

hackerrank = Hash.new
hackerrank["simmy"] = 100
hackerrank["vivmbbs"] = 200

def iter_hash(hash)
    # your code here
    # defined hash has key, and value as k,v
    hash.each do |k, v|
        puts k
        puts v
    end
end