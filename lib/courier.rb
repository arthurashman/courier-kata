class Courier
  PRICE = {:small => 3, :medium => 8, :large => 15, :XL => 25}
  SPEEDY_MULTIPLIER = 2

  def initialize
    @subtotal = 0
    @speedy = false
    @speedy_cost = @subtotal * SPEEDY_MULTIPLIER - @subtotal
  end

  def calculate_price(parcel:, speedy: false)
    @speedy = true if speedy == true

    case parcel.size
    when "small"
      @subtotal = PRICE[:small]
    when "medium"
      @subtotal = PRICE[:medium]
    when "large"
      @subtotal = PRICE[:large]
    when "XL"
      @subtotal = PRICE[:XL]
    end
  end

  def print_price
    receipt = ["Subtotal = $#{@subtotal}"]
    if @speedy == true
      receipt << "Speedy shipping = $#{@subtotal * SPEEDY_MULTIPLIER - @subtotal}"
      receipt << "Total = $#{@subtotal * SPEEDY_MULTIPLIER}"
    else
      receipt << "Total = $#{@subtotal}"
    end
    receipt.join('\n')  
  end
end

