require 'rails_helper'

RSpec.describe Car, type: :model do #Describe blocks allow you to group things together and describe what they are.
  describe 'attributes' do
    it 'has a make' do
      make = 'Toyota' #This line is just setting a variable.
      car = Car.create(make: make) #This is creating a car with a make of toyota, so this test should pass.
      expect(car.make).to eq(make) #Expecting whats in the "car.make" to equal whats "expected".
    end
  end
end