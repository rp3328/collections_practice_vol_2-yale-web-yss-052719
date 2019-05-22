# your code goes here
require 'pry'
def begins_with_r(array)
  array.all? {
    |element| element.start_with?("r")
  }
end

def contain_a(array)
  array.select{
    |element| element.include?("a")
  }
end

def first_wa(array)
  array.find {
    |element| element[0..1] == "wa"
  }
end

def remove_non_strings(array)
  array.select{
    |element| element.class == String
  }
end

def count_elements(array)
  num = 0
  array.uniq.collect do |element|
    element[:count] = array.count(element)
    element
  end
end

def merge_data(key, val)
  arr = []
  val.each do |info|
    info.each do |name, type|
      key.each do |kname|
        if kname.values[0] == name
          arr << kname.merge(type)
        end
      end
    end
  end
  arr
end

def find_cool(input)
  input.select{
    |info| info[:temperature] == "cool"
  }
end

def organize_schools(input)
  organized = {}
  input.each do |name, info|
    info.each do |location, city|
      if organized.has_key?(city)
        organized[city] << name
      else
        organized[city] = [name]
      end
    end
  end
  organized
end
