require 'pry'

class CustomArray
  def flatten(arr)
    final_arr = []
    arr.each do |item|
      if item.class == Array
        item.each do |a_single_item|
          final_arr << a_single_item
        end
      else
        final_arr << item
      end
    end
    if final_arr.any? { |item| item.class == Array }
      flatten(final_arr)
    else
      final_arr
    end
  end
end
