class Parcel

  attr_reader :size, :weight

  PARCEL_RESTRICTIONS = {
    :small => {
      :dimension => 10,
      :weight => 1
    },
    :medium => {
      :dimension => 50,
      :weight => 3
    },
    :large => {
      :dimension => 100,
      :weight => 6
    },
    :XL => {
      :weight => 10
    }
  }

  def initialize(dimensions, weight)
    @dimensions = dimensions
    @size = ""
    @weight = weight
    @overweight = nil
  end

  def calculate_size
    if @dimensions.max < PARCEL_RESTRICTIONS[:small][:dimension]
      @size = "small"
    elsif @dimensions.max < PARCEL_RESTRICTIONS[:medium][:dimension]
      @size = "medium"
    elsif @dimensions.max < PARCEL_RESTRICTIONS[:large][:dimension]
      @size = "large"
    else
      @size = "XL"
    end  
  end

  def overweight
    calculate_size
    @weight.ceil - PARCEL_RESTRICTIONS[@size.to_sym][:weight]
  end
end