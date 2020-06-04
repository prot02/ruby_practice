#コメント

=begin

メモ

#=================レッスン2=================
puts "hello world" #改行付き
print "hello world" #改行無し
p "hello world" #デバッグ用

#=================レッスン3=================
#変数
#英子文字 _
msg = "hello world"
puts msg

msg = "hello world again"
puts msg

#定数(変更をしない変数)
#英大文字
VERSION = 1.1
puts VERSION

#=================レッスン5=================
#数値オブジェクト
#p 4.8.class
#p 4.8.methods
puts 2/5r #分数の表現
puts 52.6.round#四捨五入
puts 52.6.floor#切り捨て
puts 52.6.ceil#切り上げ

#=================レッスン6=================
#文字列
#"" → 特殊文字と式展開ができる
#'' → 特殊文字と式展開ができない
puts "hello \n worl\td"
puts 'hello \n worl\td'

puts "price #{3000 * 4}"
puts 'price #{3000 * 4}'

name = "taguti"
puts "hello #{name}"
puts 'hello #{name}'

#文字列型のメソッド
puts "hello" + "world" #文字列の連結
puts "hello" * 10 #文字列の繰り返し

#=================レッスン7 (!と?がついたメソッド)=================
#! ← 破壊的なメソッド オブジェクトに変更の影響を与えるかどうか
# upcase　大文字を返すメソッド
# upcase! 
name = "taguti"
# puts name.upcase
# puts name
# puts name.upcase!
# puts name

#? 真偽値
p name.empty?
p name.include?("g")

#=================レッスン8=================
#配列
colors = ["red","blue","yellow"]
# p colors[0] #添字
# p colors[-1] #末尾
# p colors[0..2] #0～2
# p colors[0...2] #0～1
# p colors[5] #nil

colors[0] = "pink"
colors[1..2] = ["white","black"]
colors.push("gold") #配列の末尾に追加
colors << "silber" #配列の末尾に追加
p colors
p colors.size #要素数
p colors.sort #ソート

#=================レッスン9=================
#ハッシュ
# key / value

# taguti 200
# fkoji 400

# score = {"taguti" => 200, "fkoji" => 400}
# score = {:taguti => 200, :fkoji => 400}:(シンボル)を使ったほうが速度が速い
score = {taguti: 200, fkoji: 400}

p score[:taguti]
score[:fkoji] = 600
p score

p score.size #サイズ
p score.keys #キーの一覧
p score.values #値の一覧
p score.has_key?(:taguti)#キーが存在するかを真偽値で返される

#=================レッスン10=================
#変換
# x = 50
# y = "3"

# p x + y.to_i  #yを数値に変換
# p x.to_s + y # xを文字に変換

score = {taguti: 200, fkoji: 400}

p score.to_a #配列に変換
p score.to_a.to_h #ハッシュに変換

#=================レッスン11=================
#%Q %q %W %w
puts "hello"
puts %Q(he"llo)#　%Q(文字列)はダブルクォーテーションで囲った時と同じ。間にダブルクォーテーションを入れるときなど便利
puts %q(he'llo)#　%q(文字列)はシングルクォーテーションで囲った時と同じ。

p ["red", "blue"]
p %W(red blue) #ダブルクォーテーションで囲った配列と同じ意味
p %w(red blue) #シングルクォーテーションで囲った配列と同じ意味

#=================レッスン12=================
#文字列に値を組み込む
#%s %d %f

p "name:%s" % "taguti"
p "name:%10s" % "taguti"#右寄せ10文字
p "name:%-10s" % "taguti"#左寄せ10文字
p "id:%05d , rate:%10.2f" % [355, 3.28]#idは前0で5桁の整数、rateは10桁.2桁

printf("name:%10s\n","taguti")
printf("id:%05d , rate:%10.2f\n", 355, 3.284)

p sprintf("test name:%10s","taguti")

#=================レッスン13=================
#if
print "点数を入力してください＞"
score = gets.to_i #文字の入力をユーザにさせて数値に変換

if score > 80
    puts "great!"
elsif score > 60 
    puts "good!"
else
    puts "so so..."
end

puts "great!" if score > 80 #単純なif文の場合

#=================レッスン14=================
#case
signal = gets.chomp#最後の改行コードを消してる

case signal
when "red" 
    puts"stop"
when "green", "blue"
    puts"go"
when "yellow" 
    puts"caution"
else 
    puts "wrong signal"
end

#=================レッスン15=================
#while, times
# i = 0;
# while i < 10 do
#     puts "#{i}:hello"
#     i+=1
# end

# 10.times do |i| #0～9まで
#     puts "#{i}:hello"
# end

10.times{|i| puts "#{i}:hello"}

#=================レッスン16=================
#for

# for i in 15..20 do
#  puts i
# end

# for color in ["red", "blue", "yellow"]
#     puts color
# end

# for name, score in {taguti:200, fkoji:400}
#     puts "#{name}:#{score}"
# end

#each
(15..20).each do|i|
    puts i
end

{taguti:200, fkoji:400}.each do |name, score|
    puts "#{name}:#{score}"
end

#=================レッスン17=================
#loop
# i = 0
# loop do
#     p i
#     i +=1
# end 

#break
#next

10.times do |i|
    if i==7 
        #break
        next
    end
    p i
end

#=================レッスン18=================
#メソッド

def sayHi(name = "taguti")
    # puts "hi!,#{name}"
    return "hi!,#{name}"
end

# sayHi
# sayHi("吉田")
puts sayHi

#=================レッスン19=================
#クラス
class User

    def initialize(name)#オブジェクト作成時に呼ばれるメソッド
        @name = name #インスタンス変数
    end

    def sayHi
        puts "hi!#{@name}"
    end
end

tom = User.new("tom")
tom.sayHi

bob = User.new("bob")
bob.sayHi

#=================レッスン20=================
class User
    attr_accessor :name #setter:name = value, getter:name(setter,getter両方)
    # attr_reader :name #getterのみ
    #attr_writer :name#setterのみ

    def initialize(name)#オブジェクト作成時に呼ばれるメソッド
        @name = name #インスタンス変数
    end

    def sayHi
        #self インスタンス自身
        puts "hi! #{self.name}"#getterがあるので、オブジェクト.nameと同じ意味になる
    end
end

tom = User.new("tom")
tom.name = "tom Jr."
tom.sayHi#メソッドを受け取っているオブジェクトをレシーバーという

#=================レッスン21=================
#インスタンスメソッド
#クラスメソッド(インスタンスしなくても呼び出しができる)
#クラス変数
#クラス定数
class User

    @@count = 0 #クラス変数(どのインスタンスでも共通の値)
    VERSION = 1.1 #定数

    attr_accessor :name #setter:name = value, getter:name(setter,getter両方)
    # attr_reader :name #getterのみ
    #attr_writer :name#setterのみ

    def initialize(name)#オブジェクト作成時に呼ばれるメソッド
        @@count += 1
        @name = name #インスタンス変数(インスタンスごとに数値が違う)
    end

    def sayHi
        #self インスタンス自身
        puts "hi! #{self.name}"#getterがあるので、オブジェクト.nameと同じ意味になる
    end

    def self.info #クラスメソッド
        puts "#{VERSION}: User Class,#{@@count} instances."
    end

end

tom = User.new("tom")
tom = User.new("bob")
tom = User.new("steve")

User.info
p User::VERSION #Userクラスの定数を表示

#=================レッスン22=================
#クラスの継承
#親クラス(スーパクラス)
class User

    def initialize(name)#オブジェクト作成時に呼ばれるメソッド
        @name = name #インスタンス変数(インスタンスごとに数値が違う)
    end

    def sayHi
        #self インスタンス自身
        puts "hi! #{@name}"#getterがあるので、オブジェクト.nameと同じ意味になる
    end

end

#Userクラスの子クラス(サブクラス)
class AdminUser < User

    def sayHello
        puts "Hello from #{@name}"
    end

    #メソッドのオーバーライド
    def sayHi
        #self インスタンス自身
        puts "hi! from admin"#getterがあるので、オブジェクト.nameと同じ意味になる
    end
end

tom = AdminUser.new("tom")
tom.sayHello
tom.sayHi

#=================レッスン23=================
#アクセス権
#public
#protected 
#private:レシーバを指定できない。同じクラス内でしか使用することができない
#Privateメソッドは継承、オーバーライドができる(アクセス権の変更もできる)

class User
    def sayHi
        puts "hi!"
        sayPrivate #privateの場合はself.メソッド名で書くことはできない(レシーバを指定できないため)
    end

    private
        def sayPrivate
            puts "private"
        end
end

User.new.sayHi

#=================レッスン24=================
#module(継承ができない、インスタンス化ができない)
#用途としてはメソッドをまとめたり、名前が被らないようにするため
#名前空間
module Movie

    VERSION = 1.1

    def self.encode
        puts "encoding..."
    end

    def self.export
        puts "exporting..."
    end
end

Movie.encode
Movie.export
p Movie::VERSION

#=================レッスン25=================
#module
#ミックスイン
#例えば二つクラスがあって同じ処理をするメソッドが欲しい時など
module Debug

    def info #ミックスイン(self.と書かない事でクラスに埋め込める)
        puts "#{self.class} debug info..."
    end

end

class Player
    include Debug #モジュール、Debuを使えるようになる(ミックスイン)。Debugの中身がそのまま入るイメージ(インスタンスメソッド)
end

class Monster
    include Debug
end

Player.new.info
Monster.new.info

#=================レッスン26=================
#例外
class MyError < StandardError #独自のエラークラス
end

x = gets.to_i

begin #例外開始
    if x == 3
        raise MyError #独自のエラークラスを呼び出し。3の時にMyErrorを呼ぶ
    end

    p 100/ x

rescue => MyError
    puts "not 3!"

rescue => ex #エラー発生時の処理。exに情報が入ってる
    p ex.message
    p ex.class 
    p "Stopped!"
        
ensure #例外の発生に関係なく行われる処理
    p "-----END-----"

end #例外終了

#二次元配列と配列指定
# ary = [1,2,3]
# ary = []
# aru = Array.new(3)
ary = Array.new(3).map{Array.new(3){rand(0..9)}}
puts ary

#素数ループ
require 'Prime'
Prime.each(1000000)do |i|
    puts i
end
=end


