class Person
  include ActiveModel::Validations

  validates :phone_number, nanp: true
  
  attr_accessor :phone_number

  def initialize(attributes = {})
    @phone_number = attributes[:phone_number]

  end
end
