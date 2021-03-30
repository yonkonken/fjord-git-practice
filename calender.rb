require "date"
#仮の入力部　後でちゃんと作る
year_input = 2021
month_input = 3
day_input = 30

#今日の日付、月の始め、終わりを作る
today = Date.new(year_input,month_input,day_input)
firstday = Date.new(year_input,month_input,1)
lastday = Date.new(year_input,month_input,-1)

#カレンダートップの装飾
puts "　　　　　#{month_input}月　#{year_input}　　　　　"
puts "　日　月　火　水　木　金　土"

#1日目の曜日まで表示をずらす
#wday→曜日の判定。日曜日0~土曜日6
firstday.wday.times do
  print "    "
end

#日付の表示
for day in firstday.day..lastday.day do
  print format("%3d ", day)
  if Date.new(year_input,month_input,day).saturday?
    print "\n"
  end
  
end
