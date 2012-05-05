class Scheduled
  attr_accessor :amount, :periodicity, :start_date, :end_date

  def initialize (amount, periodicity, start_date, end_date = nil)    
    @amount = amount
    @periodicity = periodicity
    @start_date = start_date
    if end_date.nil?
      @end_date = start_date + @periodicity.to_i
    else
      @end_date = end_date
    end
  end 

  def to_s
    "Scheduled | Start date: #{@start_date}, End Date: #{@end_date} amount : #{@amount}, Periodicity : #{@periodicity.to_i} seconds"
  end

end
