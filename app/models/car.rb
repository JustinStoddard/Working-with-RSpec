class Car < ApplicationRecord
  validates :make, uniqueness :make, presence :true

  def self.by_model
    order(:model)
  end

  def self.by_price(direction = :asc)
      order(price: direction)
  end

  def honk
    'BEEP BEEP'
  end

  def info
    {
      make: self.make
      model: self.model
      price: self.price
    }
  end

  def paint(color)
    self.update(color: color)
  end
 
end
