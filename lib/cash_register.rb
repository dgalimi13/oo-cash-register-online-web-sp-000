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
    binding.pry
    real_discount = self.discount / 100
    
    savings = self.total * real_discount 
    self.total = self.total - savings
    self.total
    end 
    
end