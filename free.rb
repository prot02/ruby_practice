
=begin

#=================ループ練習=================
5.times do |i|
    puts"#{i}:Hello World!"
end

puts ""

for i in 0..4 do
    puts"#{i}:Hello World!"
end

#=================ユーザー入力の練習=================
cnt = gets.to_i
for i in 1..cnt do
    puts "Hello World! #{i}"
end

#=================条件分岐=================
print "数値を入力してください＞"
i = gets.to_i

for j in 1..i do
   if j%3==0 && j%5==0
    print "FizzBuzz "
   elsif j%3==0
    print "Fizz "
   elsif j%5==0
    print "Buzz "
   else
    print "#{j} "
   end
end

#=================素数判定(自作)=================
print "数値を入力してください。素数か判定します。"
num = gets.to_i

flg = 0
for i in 2...num do
    if num % i == 0
        flg = 1
        break
    end
end

case flg
when 0
    puts "素数です"
when 1 
    puts "素数ではありません"
else
    puts "想定外の数値です"
end

#=================素数判定(ライブラリ)=================
require 'prime'
num = gets.to_i
if Prime.prime?(num)
    puts "素数です"
else
    puts "素数ではありません"
end

#=================配列================
ary = Array.new(5)
ary[0..4] = [3,5,2,4,2]

for i in 1..ary.size-1 do
    ary[i] = 0
end

puts ary
=end

