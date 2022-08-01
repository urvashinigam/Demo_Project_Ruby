require 'date'

def date_valid?(date)
  format = '%Y-%m-%d'
  DateTime.strptime(date, format)
  true
rescue ArgumentError
  false
end