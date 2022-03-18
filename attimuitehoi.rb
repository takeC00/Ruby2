

def zyanken
  puts "じゃんけんぽい"
  puts "自分の出す手を選択"
  puts "グー[0]チョキ[1]パー[2]"

  put_my_hand = gets.chomp.to_i
  put_pc_hand = rand(3)

  if put_my_hand == 0
    my_hand = "グー"
  elsif put_my_hand == 1
    my_hand = "チョキ"
  elsif put_my_hand == 2
    my_hand = "パー"
  end

  if put_pc_hand == 0
    pc_hand = "グー"
  elsif put_pc_hand == 1
    pc_hand = "チョキ"
  elsif put_pc_hand == 2
    pc_hand = "パー"
  end

  puts "自分の手「#{my_hand}」"
  puts "CPUの手「#{pc_hand}」"
  puts "--------------------"
  puts "じゃんけんの結果"
  if put_my_hand == put_pc_hand
    put_result = "DRAW"
    puts put_result
    puts "あいこで〜"
    return true
    
  elsif (put_my_hand == 0 && put_pc_hand == 1)||(put_my_hand == 1 && put_pc_hand == 2)||(put_my_hand == 2 && put_pc_hand == 0)
    
    put_result = "WIN"
    settle = put_result
    puts "YOU #{put_result}"
    return false
    
  else
    
    put_result = "LOSE"
    settle = put_result
    puts "YOU #{put_result}"
    puts "----------------------"
    return false
  end
  
end

#39,46行目の put_result を他のメソッド内でも参照できるようにするため
#settleメソッドの戻り値を空白に　→　40、47行目でsettleメソッドにput_resultの値（WINかLOSE）を代入させたい。
def settle
  ['']
end


next_game = true
while next_game do 
  next_game = zyanken
end
puts settle #

def attimuitehoi
  puts "あっち向いて〜〜ほいっ"
  puts "自分の向きを選択"
  puts "上↑[0]　右→[1]　下↓[2] 左←[3]"
  put_my_dir = gets.chomp.to_i
  put_pc_dir = rand(4)
  
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

  
  #ここでzyankenメソッド内の変数put_resultを代入したsettle使いたい
  def attimuite_hoi_junction(settle)
    if settle == "WIN"
      puts "自分は#{my_dir}を指した"
      puts "相手は#{pc_dir}を向いた"
      
    elsif　settle == "LOSE"
      puts "相手は#{pc_dir}を指した"
      puts "自分は#{my_dir}を向いた"
    else 
      zyanken
    end
  end
end

attimuitehoi
attimuite_hoi_junction