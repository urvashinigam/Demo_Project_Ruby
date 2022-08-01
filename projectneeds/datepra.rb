require 'date'
string = gets.chomp
def validate_date(string)
  format_ok = string.match(/\d{4}-\d{2}-\d{2}/)
  parseable = Date.strptime(string, '%Y-%m-%d') rescue false

  if string == 'never' || format_ok && parseable
    puts "date is valid"
  else
    puts "date is not valid"
  end
end
