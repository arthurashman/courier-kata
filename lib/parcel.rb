class Parcel

  attr_reader :size, :weight

  PARCEL_SIZE = {:small => 10, :medium => 50, :large => 100}

  def initialize(dimensions, weight)
    @dimensions = dimensions
    @size = ""
    @weight = weight
  end

  def calculate_size
    if @dimensions.max < PARCEL_SIZE[:small]
      @size = "small"
    elsif @dimensions.max < PARCEL_SIZE[:medium]
      @size = "medium"
    elsif @dimensions.max < PARCEL_SIZE[:large]
      @size = "large"
    else
      @size = "XL"
    end  
  end

  def overweight?
    true
  end
end