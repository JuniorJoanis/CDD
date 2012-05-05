require_relative '../statistic.rb'
require_relative '../scheduled.rb' 
require_relative '../periodicity.rb' 


describe Statistic do

  before {
    day = 3600 * 24
    date_2 =  Time.now + 2 * day
    date_3 =  Time.now + 4 * day
    trimester = Periodicity.new(16)
    @schedule_1 = Scheduled.new(2,trimester, Time.now)
    @schedule_2 = Scheduled.new(2,trimester, date_2)  
    @schedule_3 = Scheduled.new(2,trimester, date_3)
    @use_schedules = [@schedule_1, @schedule_2,@schedule_3]
  }

  describe "when the last scheduled use brings the amount to zero" do
    it "should return the date of the last use" do
        @stat = Statistic.new(6, @use_schedules)
        @stat.predict should be @schedule_3
    end
  end

  describe "when any use makes the amount negative" do
    it "return the date of the latest use that did not incur a negative balance" do
        @stat = Statistic.new(4, @use_schedules)
        @stat.predict should be @schedule_2
    end
  end
end
