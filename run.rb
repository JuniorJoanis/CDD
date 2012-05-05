load "periodicity.rb"
load "statistic.rb"
load "scheduled.rb"



day = 3600 * 24
date_2 =  Time.now + 2 * day
date_3 =  Time.now + 4 * day

trimester = Periodicity.new(16)
day_1 = Periodicity.new(1 ,"day")

schedule_1 = Scheduled.new(2,trimester, Time.now)
schedule_2 = Scheduled.new(2,trimester, date_2)
schedule_3 = Scheduled.new(2,day_1, Time.now)
schedule_4 = Scheduled.new(5,day_1, Time.now)

use_schedules =  [schedule_4, schedule_3]  #[schedule_1, schedule_2,schedule_3]

puts "We created 3 scheduled use:"
use_schedules.each{ |s|
 #puts s.to_s
}

puts "\n"
stat = Statistic.new(4 , use_schedules)
if stat.predict == "none"
  puts "the chemical won't run out"
else
  puts "the chemical will run out on #{stat.predict.to_s}" 
end

