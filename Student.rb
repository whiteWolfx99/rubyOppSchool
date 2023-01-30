# frozen_string_literal: true


# Class that represents a student with a classroom
class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
