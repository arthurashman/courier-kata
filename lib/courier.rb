class Courier
  def initialize
    @subtotal = 0
  end

  def calculate_price(parcel)
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
    receipt = "Total = $#{@subtotal}"
  end
end