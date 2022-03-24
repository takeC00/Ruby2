def zyanken
  next_zyanken = [""]
  puts "じゃんけんぽい"
  puts "自分の手を選んでください"
  puts "グー[0]チョキ[1]パー[2]"
  puts "----------------------"
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
  put_my_dir = gets.chomp.to_i
  put_pc_dir = rand(1)
  puts "----------------------"

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
    return "END"
  elsif (z_result == "LOSE" && my_dir == pc_dir)
    puts "あっち向いてホイの結果"
    puts "あなたの負け"
    puts "----------------------"
    return "END"
  elsif (z_result == "WIN" && my_dir != pc_dir || z_result == "LOSE" && my_dir != pc_dir )
    puts "まだまだ〜〜〜"
    puts "もう一回じゃんけんからだっ"
    puts "----------------------"
  end
end


while 
  z_result = zyanken
  if 
    z_result == "DRAW"
    next
  end
  if 
    attimuitehoi(z_result) == "END"
    break
  end
end