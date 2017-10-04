require 'pry'

class CustomArray
  def flatten(arr)
    arr.reduce([]) do |final_arr, item|
      if array?(item)
        item.each { |a_single_item| final_arr << a_single_item }
      else
        final_arr << item
      end
      if reflattenify(final_arr)
        flatten(final_arr)
      else
        final_arr
      end
    end
  end

  def reflattenify(arr)
    arr.any? { |item| array?(item) }
  end

  def array?(item)
    item.class == Array
  end
end
