class Player
    def hand
      # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
      while true
        me = gets.chomp
        # if me === 0 || me === 1 || me === 2
        x = ["0", "1", "2"]
        if x.include?(me)
          return me.to_i
        else
          puts "0~2の数字を入力してください。"
        end
      end
    end
  end
  
  class Enemy
    def hand
      # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
      you = rand(3)
      return you
    end
  end
  
  class Janken
    def pon(player_hand, enemy_hand)
      # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
      # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
      # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
      match =(player_hand - enemy_hand + 3) % 3
      hand_num = {0=>"グー", 1=>"チョキ", 2=>"パー"}
      if match == 2
        puts "相手の手は#{hand_num[enemy_hand]}です。あなたの勝ちです。"
      elsif match == 1
        puts "相手の手は#{hand_num[enemy_hand]}です。あなたの負けです"
      else
        puts "相手の手は#{hand_num[enemy_hand]}です。あいこです"
        start()
      end
    end
  end

def start()
  puts "数字を入力してください。"
  puts "0: グー"
  puts "1: チョキ"
  puts "2: パー"
  player = Player.new
  enemy = Enemy.new
  janken = Janken.new
  janken.pon(player.hand, enemy.hand)
end
  
start()
 
