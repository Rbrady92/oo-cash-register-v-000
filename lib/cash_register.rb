class CashRegister
  attr_accessor :total, :items

  def initialize(emp_disc = 20)
    @last_item = 0
    @total = 0
    @item_list = []
    @emp_disc = emp_disc
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    item_total = (price * quantity).round(2)
    @total += item_total
    @last_item = item_total
    quantity.times do
      @item_list << item
    end
  end

  def items
    @item_list
  end

  def apply_discount
    emp_disc = 0.2
    @total -= (total * emp_disc)
    @total == 0 ? "There is no discount to apply" : "After the discount, the total comes to $#{@total.floor}."
  end

  def discount
    @emp_disc
  end

  def void_last_transaction
    @total -= @last_item
  end

end
