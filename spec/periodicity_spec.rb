require_relative '../periodicity.rb' 

describe Periodicity do

  describe "when type is 'day'" do
    it "should be return the daily number of seconds of {number} days" do
        periodicity = Periodicity.new(16,"day")
        periodicity.to_i should be 16 * 3600 * 24  
    end
  end

  describe "when type is not set" do
    it "should be return the weekly number of seconds" do
        periodicity = Periodicity.new(16)
        periodicity.to_i should be 16 * 3600 * 24 * 7
    end
  end
end


