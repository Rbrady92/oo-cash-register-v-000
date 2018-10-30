class CashRegister
  attr_accessor

  def initialize(emp_disc = 0.2)
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
    @item_list << item
  end

  def items
    @item_list
  end

  def apply_discount

  end

  def void_last_transaction
    @total -= @last_item
  end

end
