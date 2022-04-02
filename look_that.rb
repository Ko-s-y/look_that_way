$i = false  #一度あいこが発生で条件分岐

#  じゃんけんフェーズ
def tryit()
  if $i == false
    puts "じゃんけん〜"
  elsif $i  #$i=true
    puts "あいこで〜"
  end
  puts "1(グー) 2(チョキ) 3(パー) 0(戦わない)"
  you = gets.chomp
  elements = ["ダミー","グー", "チョキ", "パー"]  #ダミーはインデックス番号合わせ
  cpu = rand(1..3)
  cpu_choice = elements[cpu]

#  あなたがグーを出した時
  if you == "1"
    your_choice = elements[you.to_i]
    if $i == false
      puts "ぽん！"
    elsif $i
      puts "しょ！"
    end
    puts "-----------------"
    puts "あなた: #{your_choice}"
    puts "ワタシ: #{cpu_choice}"
    puts "-----------------"
    if cpu_choice == "チョキ"
      look_that_offence()
    elsif cpu_choice == "パー"
      look_that_defence()
    elsif cpu_choice == "グー"
      $i = true  #あいこリセット
      tryit()
    end

#  あなたがチョキを出した時
  elsif you == "2"
    your_choice = elements[you.to_i]
    if $i == false
      puts "ぽん！"
    elsif $i
      puts "しょ！"
    end
    puts "-----------------"
    puts "あなた: #{your_choice}"
    puts "ワタシ: #{cpu_choice}"
    puts "-----------------"
    if cpu_choice == "パー"
      look_that_offence()
    elsif cpu_choice == "グー"
      look_that_defence()
    elsif cpu_choice == "チョキ"
      $i = true
      tryit()
    end

#  あなたがパーを出した時
  elsif you == "3"
    your_choice = elements[you.to_i]
    if $i == false
      puts "ぽん！"
    elsif $i
      puts "しょ！"
    end
    puts "-----------------"
    puts "あなた: #{your_choice}"
    puts "ワタシ: #{cpu_choice}"
    puts "-----------------"
    if cpu_choice == "グー"
      look_that_offence()
    elsif cpu_choice == "チョキ"
      look_that_defence()
    elsif cpu_choice == "パー"
      $i = true
      tryit()
    end

#  0、もしくはその他
  elsif you == "0"
    puts "アナタノ挑戦オマチシテイマス！"
  else
    puts "指定したキーを押して下さい！"
    puts "1(あっち向いてホイゲームで遊ぶ) その他のキー(終了する)"
    your_select = gets.to_i
    if your_select == 1
      $i = false
      tryit()
    else
      puts "終了しました"
    end
  end
end

#  あっち向いてホイ あなたの攻撃
def look_that_offence()
  puts "あっち向いて〜(あなたの攻撃)"
  directions = ["ダミー", "上", "下", "左", "右"]
  cpu = rand(1..4)
  cpu_direction = directions[cpu]
  puts "1(上) 2(下) 3(左) 4(右)"
  you = gets.chomp
  your_direction = directions[you.to_i]
  puts "ほい！"
  puts "-----------------------"
  puts "あなたの指した方向: #{your_direction}"
  puts "ワタシノ向イタ方向: #{cpu_direction}"
  puts "-----------------------"
  if your_direction == cpu_direction
    puts "やったね！あなたの勝ちです!"
  else
    $i = false
    tryit()
  end
end

#  あっち向いてホイ cpuの攻撃
def look_that_defence()
  puts "アッチ向イテ〜(あなたは防御)"
  directions = ["ダミー", "上", "下", "左", "右"]
  cpu = rand(1..4)
  cpu_direction = directions[cpu]
  puts "1(上) 2(下) 3(左) 4(右)"
  you = gets.chomp
  your_direction = directions[you.to_i]
  puts "ホイ！"
  puts "-----------------------"
  puts "あなたの向いた方向: #{your_direction}"
  puts "ワタシノ指シタ方向: #{cpu_direction}"
  puts "-----------------------"
  if your_direction == cpu_direction
    puts "ザンネン！ワタシノ勝チデス!"
  else
    $i = false
    tryit()
  end
end

tryit()