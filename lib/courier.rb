class Courier

  def initialize
    @subtotal = 0
    @speedy = false
  end

  def calculate_price(parcel:, speedy: false)
    @speedy = true if speedy == true
    
    case parcel.size
    when "small"
      @subtotal = 3
    when "medium"
      @subtotal = 8
    when "large"
      @subtotal = 15
    when "XL"
      @subtotal = 25
    end
  end

  def print_price
    receipt = ["Subtotal = $#{@subtotal}"]
    if @speedy == true
      receipt << "Speedy shipping = $#{@subtotal * 2 - @subtotal}"
      receipt << "Total = $#{@subtotal * 2}"
    else
      receipt << "Total = $#{@subtotal}"
    end
    receipt.join('\n')  end
end

