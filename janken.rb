def JankenResult
 puts "じゃんけん..."
 choices = ["グー", "チョキ", "パー"]
 puts "[0]グー[1]チョキ[2]パー"

 player_hand = gets.to_i
 puts "ほい！"
 puts "-------------------"
 program_hand = rand(3)
 puts "あなたの手:#{choices[player_hand]}, 相手の手:#{choices[program_hand]}"

 result = 0 
 if player_hand == program_hand
   result = 2
 elsif ((player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0))
   result = 1
 end
 return result
end

 
def AhoiDecided
 puts "あっち向いて〜"
 choices = ["上", "下", "左", "右"]
 puts "[0]上[1]下[2]左[3]右"

 player_direction = gets.to_i
 program_direction = rand(4)
  puts "あなた：#{choices[player_direction]} 相手：#{choices[program_direction]}"
  puts"------------------------------"

 return (player_direction == program_direction)
end



def GameDecided
 jankenResult = JankenResult()
 if jankenResult == 2
   puts "あいこで.."
   return false
 end

 if !AhoiDecided()
   puts "またまたじゃんけん..."
   return false
 end

 if jankenResult == 1
   puts "あんたの勝ちだ！"
 else
   puts "残念だったな負けだ!"
 end
 return true
end

def main

 while !GameDecided()
 end
end

main()