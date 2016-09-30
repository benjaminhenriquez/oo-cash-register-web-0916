require 'Pry'

class CashRegister
  attr_accessor :total, :discount, :items, :previous_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, price, quantity = 1)
    @previous_total = @total
    @total = total + (quantity * price)
    quantity.times do
      @items << title
    end
    # items << title.quantity
    @previous_total
  end

  def apply_discount
    if @discount > 0
    @total = (@total * 0.8).to_i
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  @total = @previous_total

end

  # binding.pry


end
