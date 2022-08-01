

def call
puts 'enter  name'
 nameset = gets.chomp.to_s
 puts 'enter  occupation'
 occupationset = gets.chomp.to_s
hash_arr = [ {name: nameset, occupation: occupationset}]


hash_arr.each do |hash|
puts 'Values in this Hash'
hash.each do |key,value|
puts (key.to_s + ': ' + value.to_s)
repeat
end
end
end

call