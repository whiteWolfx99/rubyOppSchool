require_relative 'nameable'
# Class that represents a person

class Person
  include Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, age, name: 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def is_of_age?
    @age >= 18
  end
end
