# frozen_string_literal: true

class Person
  attr_reader :id, :name, :age
  attr_accessor :name, :age

  def initialize(name = 'Unknown', age = 0, parent_permission = true)
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def is_of_age?
    @age >= 18
  end

  public

  def can_use_services?
    is_of_age? || @parent_permission
  end
end
