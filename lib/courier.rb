class Courier
  def calculate_price(parcel)
    case parcel.size
    when "small"
      3
    when "medium"
      8
    when "large"
      15
    when "XL"
      25
    end
  end 
end