require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name, parent_permission)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end
end
