def bad_two_sum?(arr,target)
  arr.each_with_index do |el,i|
    arr.each_with_index do |el2,j|
      next if i ==j
      return true if el+ el2 == target
    end
  end
  return false
end

def okey_two_sum?(arr,target)
  arr.sort!
  arr.each_with_index do |el,i|
    new_target = target - el
    new_arr = arr.dup
    new_arr.delete(el)
    bsearch(new_arr,new_target)
    return true if !bsearch(new_arr,new_target).nil?
  end
  false
end

def bsearch(arr,target)
  return nil if arr.length < 1
  mid = arr.length / 2
  case arr[mid] <=> target
  when -1
    bsearch(arr.take(mid),target)
  when 0
    return arr[mid]
  when 1
    bsearch(arr.drop(mid),target)
  end
end
arr = [0, 1, 5, 7]
p okey_two_sum?(arr, 6) # => should be true
p okey_two_sum?(arr, 10)

def two_sum?(arr,target)
  hash = {}

  arr.each_with_index do |el,i|
    hash[el] = el
  end

  arr.each do |el|
    new_target = target - el
    return true if hash.has_key?(new_target)
  end

  false
end
arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10)
