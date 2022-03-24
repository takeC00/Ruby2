def zyanken
  puts "じゃんけんぽい"
  puts "自分の手を選んでください"
  puts "グー[0]チョキ[1]パー[2]"
  puts "----------------------"
  hands = ["ぐー","ちょき","ぱー"]
  my_hand = gets.chomp.to_i
  pc_hand = rand(1)
  puts "----------------------"

  puts "自分の手 [#{hands[my_hand]}]"
  puts "PCの手 [#{hands[pc_hand]}]"
  puts "----------------------"
  
  if my_hand == pc_hand
    zyanken_result = "DRAW"
    puts "じゃんけんの結果　[#{zyanken_result}]"
    puts "----------------------"
    puts "アイコで"
  elsif (my_hand == 0 && pc_hand == 1 || my_hand == 1 && pc_hand == 2 || my_hand == 2 && pc_hand == 0 )
    zyanken_result = "WIN"
    puts "じゃんけんの結果　[YOU #{zyanken_result}]"
    puts "----------------------"
  else
    zyanken_result = "LOSE"
    puts "じゃんけんの結果　[YOU #{zyanken_result}]"
    puts "----------------------"
  end
  return zyanken_result
end



def attimuitehoi(z_result)
  puts "あっち向いて〜〜ほいっ"
  puts "----------------------"
  puts "自分の向きを選択"
  puts "上↑[0]　右→[1]　下↓[2] 左←[3]"
  puts "----------------------"
  directions = ["上","右","下","左"]
  my_dir = gets.chomp.to_i
  pc_dir = rand(1)
  puts "----------------------"

  if z_result == "WIN"
    puts "自分は [#{directions[my_dir]}]を指した"
    puts "相手は [#{directions[pc_dir]}]を向いた"
    puts "----------------------"
  elsif z_result == "LOSE"
    puts "相手は [#{directions[my_dir]}]を指した"
    puts "自分は [#{directions[pc_dir]}]を向いた"
    puts "----------------------"
  end

  if (z_result == "WIN" && my_dir == pc_dir)
    puts "あっち向いてホイの結果"
    puts "あなたの勝ち"
    puts "----------------------"
    return hoi_result = "END"
  elsif (z_result == "LOSE" && my_dir == pc_dir)
    puts "あっち向いてホイの結果"
    puts "あなたの負け"
    puts "----------------------"
    return hoi_result = "END"
  elsif (z_result == "WIN" && my_dir != pc_dir || z_result == "LOSE" && my_dir != pc_dir )
    puts "まだまだ〜〜〜"
    puts "もう一回じゃんけんからだっ"
    puts "----------------------"
    return hoi_result = "to_be_continue"
  end
end

count=0
while 
  count += 1
  puts "----------------------"
  puts "あっち向いてホイ#{count}回目"  
  puts "----------------------"
  z_result = zyanken
  if z_result == "DRAW"
    next
  end
  hoi_result = attimuitehoi(z_result)
  if hoi_result == "END"
    break
  end
end
p "ループ抜ける"