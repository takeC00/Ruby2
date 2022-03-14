#じゃんけんプログラム----------------------
def zyanken
  puts '自分の出す手を選んでください'
  puts 'グー[0],チョキ[1],パー[2]'

  put_my_hand = gets.chomp.to_i
  put_pc_hand = rand(0..2)

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

  puts "じゃんけんほい"
  puts "自分の手[#{my_hand}]"
  puts "相手の手[#{pc_hand}]"

  result = put_pc_hand - put_my_hand
  if result == 0
    @put_result = "DRAW"
  end
  if put_pc_hand == 0
    if put_my_hand == 1
      @put_result = "LOSE"
    elsif put_my_hand == 2
      @put_result = "WIN"
    end
  elsif put_pc_hand == 1
    if put_my_hand == 0
      @put_result = "WIN"
    elsif put_my_hand == 2
      @put_result = "LOSE"
    end
  elsif put_pc_hand == 2
    if put_my_hand == 0
      @put_result = "LOSE"
    elsif put_my_hand == 1
      @put_result = "WIN"
    end
  end
  puts "結果#{@put_result}"
end

zyanken
if @put_result == "DRAW"
  puts 'あいこで〜〜'
  zyanken
end
#あっち向いてホイプログラム-------------
puts "あっち向いて〜〜〜ほいっ！"
puts '方向を選んでください'
puts '↑上[0],→右[1],↓下[2],←左[3]'

put_my_hand = gets.chomp.to_i
put_pc_hand = rand(0..4)

if put_my_hand == 0
  my_dir = "上"
elsif put_my_hand == 1
  my_dir = "右"
elsif put_my_hand == 2
  my_dir = "下"
elsif put_my_hand == 3
  my_dir = "左"
end

if put_my_hand == 0
  pc_dir = "上"
elsif put_my_hand == 1
  pc_dir = "右"
elsif put_my_hand == 2
  pc_dir = "下"
elsif put_my_hand == 3
  pc_dir = "左"
end



if @put_result == "WIN"
  puts "自分は[#{my_dir}]を指した"
  puts "相手は[#{pc_dir}]を向いた"
  if my_dir == pc_dir
    puts "プレイヤー勝利"
  else 
    zyanken
  end
elsif @put_result == "LOSE"
  puts "相手は#{pc_dir}を指した"
  puts "自分は#{my_dir}を向いた"
  if my_dir == pc_dir
    puts "プレイヤー敗北"
  else 
    zyanken
  end
end

