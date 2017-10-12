def my_min_phase1(arr)
  arr.each_with_index do |el, idx|

    lowest = true
    arr.each_with_index do |el2,idx2|
      next if idx == idx2
      lowest = false if el2 < el
    end

    return el if lowest
  end

end

  def my_min_phase2(arr)
    lowest = arr[0]

    arr.drop(1).each do |el|
      lowest = el if el < lowest
    end
    lowest
  end



list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

p my_min_phase1(list)
p my_min_phase2(list)

def largest_cont_phase1(arr)
  largest = arr[0]

  arr.each_with_index do |el, idx|
    (idx+1...arr.length).each do |idx2|
      if arr[idx..idx2].inject(&:+) > largest
        largest = arr[idx..idx2].inject(&:+)
      end
    end
  end
  largest

end

list2 = [5, 3, -7]
p largest_cont_phase1(list2)


def largest_cont_phase2(arr)
  largest = arr[0]
  current_sum = 0
  arr.each do |el|
    current_sum += el
    largest = current_sum if current_sum > largest
    if current_sum < 0
      current_sum = 0
    end
  end
  largest
end
list4 = [-5, -1, -3]
list3 = [2, 3, -6, 7, -6, 7]
p largest_cont_phase2(list4)
