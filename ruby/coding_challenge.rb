require 'pry'

class CustomArray
  def flatten(arr)
    arr.reduce([]) do |final_arr, item|
      if item.class == Array
        item.each do |a_single_item|
          final_arr << a_single_item
        end
      else
        final_arr << item
      end
    end
  end
end
