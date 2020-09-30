require "pry"

class CashRegister
  attr_accessor :total ,:discount, :items
  
  def initialize(discount = nil)
    @items = []
    @discount = discount
    @total = 0
  end
    
  def add_item(title,price,quantity = 1)
    @items << title.quantity
    self.total = price * quantity +self.total
    self.total 
    end
    
    def apply_discount
   if self.discount 
   self.total = (total * ((100.0 - discount.to_f) / 100)).to_i
   return "After the discount, the total comes to $#{self.total}."
   else 
     return "There is no discount to apply."
    end 
  end
  
  def items 
    @items
  end
    
end