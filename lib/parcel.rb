class Parcel

  def initialize(dimensions)
    @dimensions = dimensions
  end

  def calculate_size
    if @dimensions.max < 10
      "small"
    elsif @dimensions.max < 50
      "medium"
    end  
  end
end