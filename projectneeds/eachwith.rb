# #eachwithobj
# {"foo","bar","dad"}.each_with_object({}) do |items,hash|
#    hash[item] = hash.to_s
# end


# Calling the .each_with_object function on an array object
# [:gfg, :geeks, :geek].each_with_object({}) do |item, hash|

#   # Converting the array elements into its uppercase
#    hash[item] = item.to_s.upcase
#   end
  

  # Calling the .each_with_object function on a hash
{ foo: 2, bar: 4, jazz: 6 }.each_with_object({}) do
  |(key, value), hash|
  
  # Getting the square of the hash's value
  hash[key] = value**2
  end
  