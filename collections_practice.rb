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
    i=0
    new_array=[]
   until array.length == 0
     new_array << array.pop
     i+=1
   end
   new_array
end

def kesha_maker(array)
  kesha=[]
  array.each do |string|
    string[2]="$"
    kesha << string
  end
  kesha
end

def find_a(array)
  a = []
  array.each do |word|
    a << word if word[0]=="a"
  end
  a
end

def sum_array(array)
  sum=0
  array.each do |integer|
    sum+=integer
  end
  sum
end

# def add_s(array)
#   new_array=[]
#   array.each do |word|
#     if array.index(word) !=1
#       new_array << word+"s"
#     end
#   end
#   new_array.insert(1, array[1])
#   new_array
# end

def add_s(array)
  array.collect do |word|
    array.each_with_index do |word, index|
          if index != 1
        array[index]= word+"s"
      end
    end
  end
end
