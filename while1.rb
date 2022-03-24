def zyanken
  puts "じゃんけんぽい"
  puts "自分の手を選んでください"
  puts "グー[0]チョキ[1]パー[2]"
  my_hand = gets.chomp.to_i
  pc_hand = rand(1)
  puts "----------------------"
  
  put_my_hand = [""]
  if my_hand == 0
    put_my_hand = "ぐー"
  elsif my_hand == 1
    put_my_hand = "ちょき"
  elsif my_hand == 2
    put_my_hand = "ぱー"
  end
  
  put_pc_hand = [""]
  if pc_hand == 0
    put_pc_hand = "ぐー"
  elsif pc_hand == 1
    put_pc_hand = "ちょき"
  elsif pc_hand == 2
    put_pc_hand = "ぱー"
  end
  puts "自分の手 [#{put_my_hand}]"
  puts "PCの手 [#{put_pc_hand}]"
  puts "----------------------"
  zyanken_result = [""]
  if my_hand == pc_hand
    zyanken_result = "DRAW"
    puts "じゃんけんの結果　[#{zyanken_result}]"
    puts "----------------------"
    puts "アイコで"
    true
  elsif (my_hand == 0 && pc_hand == 1 || my_hand == 1 && pc_hand == 2 || my_hand == 2 && pc_hand == 0 )
    zyanken_result = "WIN"
    puts "じゃんけんの結果　[YOU #{zyanken_result}]"
    puts "----------------------"
    false
  else
    zyanken_result = "LOSE"
    puts "じゃんけんの結果　[YOU #{zyanken_result}]"
    puts "----------------------"
    false
  end
  return zyanken_result
end



def attimuitehoi(z_result)
  puts "あっち向いて〜〜ほいっ"
  puts "自分の向きを選択"
  puts "上↑[0]　右→[1]　下↓[2] 左←[3]"
  put_my_dir = gets.chomp.to_i
  put_pc_dir = rand(1)

  if put_my_dir == 0
    my_dir = "上"
  elsif put_my_dir == 1
    my_dir = "右"
  elsif put_my_dir == 2
    my_dir = "下"
  elsif put_my_dir == 3
    my_dir = "左"
  end

  if put_pc_dir == 0
    pc_dir = "上"
  elsif put_pc_dir == 1
    pc_dir = "右"
  elsif put_pc_dir == 2
    pc_dir = "下"
  elsif put_pc_dir == 3
    pc_dir = "左"
  end

  if z_result == "WIN"
    puts "自分は#{my_dir}を指した"
    puts "相手は#{pc_dir}を向いた"
    puts "----------------------"
  elsif z_result == "LOSE"
    puts "相手は#{pc_dir}を指した"
    puts "自分は#{my_dir}を向いた"
    puts "----------------------"
  end

  if (z_result == "WIN" && my_dir == pc_dir)
    puts "あっち向いてホイの結果"
    puts "あなたの勝ち"
    puts "----------------------"
  elsif (z_result == "LOSE" && my_dir == pc_dir)
    puts "あっち向いてホイの結果"
    puts "あなたの負け"
  elsif (z_result == "WIN" && my_dir != pc_dir || z_result == "LOSE" && my_dir != pc_dir )
  end
end


next_zyanken = true
while next_zyanken
  next_zyanken = zyanken
end




# next_attimuitehoi = true
# while next_attimuitehoi
#   next_attimuitehoi = attimuitehoi(z_result)
# end


#繰り返し処理できるがじゃんけん結果を持ってこれない
