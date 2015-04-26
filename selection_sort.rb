class Array

 def selection_sort
    length = self.size
    sorted = self
    for i in 0..length-1 do
      # puts sorted.join("")
      search_array = sorted[i..-1]
      current_num = sorted[i]
      min_num = search_array.min
      switch_index = i + search_array.index(min_num)
      sorted[i] = min_num
      sorted[switch_index] = current_num
    end
    sorted
  end


end

arr = [15,1346,71,513,617]
p arr.selection_sort
