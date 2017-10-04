require 'pry'

class CustomArray
  def flatten(arr)
    arr.reduce([]) do |final_arr, item|
      create_final_array(final_arr, item)
      recurse?(final_arr)
    end
  end

  private

  def recurse?(final_arr)
    if reflattenify(final_arr)
      flatten(final_arr)
    else
      final_arr
    end
  end

  def create_final_array(final_arr, item)
    if array?(item)
      item.each { |a_single_item| final_arr << a_single_item }
    else
      final_arr << item
    end
  end

  def reflattenify(arr)
    arr.any? { |item| array?(item) }
  end

  def array?(item)
    item.class == Array
  end
end
