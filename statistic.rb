class Statistic
  attr_accessor :amount, :use_schedules

  def initialize (amount, use_schedules)
    @use_schedules = use_schedules
    @amount = amount
  end 

  def predict
    @use_schedules.sort_by { |x| x.start_date}.reverse
    for i in 0..@use_schedules.length - 1 
       @amount -= @use_schedules[i].amount
       if @amount == 0
         return @use_schedules[i].end_date
       elsif @amount < 0
         return @use_schedules[i-1].end_date
       end  
    end
    return "none"
  end

end
