require "pry"

class CashRegister
  attr_accessor :total ,:discount
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end
    
  def add_item(title,price,quantity = 1)
    self.total = price * quantity +self.total
    self.total 
    end
    
    def apply_discount
   self.total = (total * ((100.0 - discount.to_f) / 100)).to_i
   return "After the discount, the total comes to $#{self.total}."
    end 
    
end