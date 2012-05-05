class Periodicity
  attr_accessor :number, :type

  def initialize (number, type = "weekly")
    @number = number
    @type = type    
  end

  def to_i
    if @type == "day"
      return @number * 3600 * 24
    else 
      #the type is weekly
      return @number * 3600 * 24 * 7 
    end
  end
end
