require_relative '../scheduled.rb' 
require_relative '../periodicity.rb' 

describe Scheduled do

  before { @trimester = Periodicity.new(16)  }
  
  describe "when end_date is set" do
    it "should return the end date set" do
        today = Time.now
        end_date = today + 3600 * 25
        scheduled = Scheduled.new( 2, @trimester, Time.now, end_date )
        scheduled.end_date should == end_date 
    end
  end

  describe "when end_date is not set" do
    it "should automatically set it " do
        schedule = Scheduled.new(2, @trimester, Time.now)
        schedule.end_date should_not be nil
    end
  end
end
