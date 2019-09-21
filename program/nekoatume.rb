#!/usr/bin/ruby

@neko = Array.new
@neko[0] = ["ふつうねこ",   "モンク",     1,  8, 13, 10, 15, 10, 3, 12, 7, "爪1、素手1d4+2"]
@neko[1] = ["たてじまさん", "ファイター", 1, 10, 14, 13, 15, 10, 3, 12, 7, "バット1d8、ボール1d4"]
@neko[2] = ["ながぐつさん", "レンジャー", 1, 10, 12, 10, 15, 10, 3, 12, 7, "得意な敵：ラット系　レイピア1d8"]


def neko(n)
  puts "名前: #{n[0]}"
  puts "クラス: #{n[1]}"
  puts "レベル: #{n[2]}"
  puts "HP: #{n[3]}"
  puts "AC: #{n[4]}"
  puts "能力値: STR #{n[5]}, DEX #{n[6]}, CON #{n[7]}, INT #{n[8]}, WIS #{n[9]}, CHA #{n[10]}"
  puts "攻撃: #{n[11]}"
end

def main
  loop do
    @neko.each_with_index do |n, i|
      puts "#{i+1}: #{n[0]}"
    end
    print "どれにしますか？番号を入力してください："
    a = gets.to_i
    neko(@neko[a-1])
 
    b = ""
    until b == "n" || b == "y"
      print "メニューに戻りますか？(y/n):"
      b = gets.chomp
    end
    break if b == "n"
  end
end


main
