require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

pp directors_database

def directors_totals(nds)
  result = {}
  outer_index = 0 
  while outer_index < nds.length do
    director_name = nds[outer_index][:name]
    earnings = gross_for_director(nds[outer_index])
    result[director_name] = earnings
    outer_index += 1 
  end
  return result
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_earnings = 0 
  inner_index = 0 
  while inner_index < director_data[:movies].length do
    director_earnings += director_data[:movies][inner_index][:worldwide_gross]
    inner_index += 1 
  end
  return director_earnings
end
