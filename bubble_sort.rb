
class Array

  def sorted?
    each_cons(2).all?{|a,b| (a<=>b) <= 0 }
  end

  def bubble_sort
    length = self.size
    until self.sorted?
      for i in (0..length-2) do
        compare = [self[i], self[i+1]]
        if compare[0] > compare[1]
          switch_num = self[i]
          self[i] = self[i+1]
          self[i+1] = switch_num
        end
      end
    end
    self
  end

end

# has_method_sorted = Object.constants.grep(/Array/).methods#.grep(/sorted?/)
# p has_method_sorted
arr = [3,2,5,12,6,2]

p arr.bubble_sort
