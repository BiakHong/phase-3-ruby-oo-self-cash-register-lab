class CashRegister
    attr_accessor :discount
    attr_accessor :total
    attr_accessor :items
    attr_accessor :prices
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @prices=[]
    end
    def total
        @total
    end
    def add_item(title, price,qtt=1)
        @prices.append(price*qtt)
        @total = self.prices.sum
        qtt.times {@items << title }
            
    end
    def apply_discount()
        self.total -= self.total * self.discount / 100.00
        return self.discount != 0 ? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
    end
    def items()
        @items
    end
    def void_last_transaction
        @items.pop
        prices.pop
        @total = self.prices.sum

    end

end