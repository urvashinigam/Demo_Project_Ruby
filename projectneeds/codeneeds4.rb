STUDENT_LEVELS = Hash.new(Student::Unregistered).merge(
  freshman:  Student::Underclassman,
  sophomore: Student::Underclassman,
  junior:    Student::Upperclassman,
  senior:    Student::Upperclassman,
  graduate:  Student::Graduate
)

klass = STUDENT_LEVELS[params[:student_level]]
student = klass.new(name, birthdate, address, phone)