def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a,b|
    if a == b
      0
    elsif a < b
      1
    else
      -1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a,b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    else
      1
    end
  end
end

def swap_elements(array)
  element_1= array[1]
  element_2=array[2]
  array[1] = element_2
  array[2] = element_1
  array
end

def swap_elements_from_to(array,from_index, to_index)
  element_1= array[from_index]
  element_2=array[to_index]
  array[from_index] = element_2
  array[to_index] = element_1
  array
end

def reverse_array(array)
    i=1
    new_array=[]
   until i = array.length
     new_array << array.pop
     i+=1
   end
   new_array
end
