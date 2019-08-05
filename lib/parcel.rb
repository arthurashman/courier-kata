class Parcel

  attr_reader :size
  
  def initialize(dimensions)
    @dimensions = dimensions
    @size = ""
  end

  def calculate_size
    if @dimensions.max < 10
      @size = "small"
    elsif @dimensions.max < 50
      @size = "medium"
    elsif @dimensions.max < 100
      @size = "large"
    else
      @sixe = "XL"
    end  
  end
end