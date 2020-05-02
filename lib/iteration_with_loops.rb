def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row_index = 0
  array_results = []

  while row_index < src.count do
    element_index = 0
    min_value = src[row_index].count
    while element_index < src[row_index].count do
      if src[row_index][element_index] < min_value
        min_value = src[row_index][element_index]
      end
      element_index += 1
    end
    array_results << min_value
    row_index += 1
  end
  array_results
end
