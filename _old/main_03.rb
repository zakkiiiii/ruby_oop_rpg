#02との違い、　引数の数を増やすと、initializeが大変 ハッシュとして値を受け取れるようにしましょう

class Brave

  # initializeメソッドの定義
  # paramsで一括で受け取る (hashとして、)　引数として受け取ることも可能
  def initialize(**params)
    # @name = "テリー"
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
  # # nameのセッター 値をセットできる
  # def name=(name)
  #   @name = name
  # end

  # nameのゲッター
  def name
    @name
  end

  # # hpのセッター
  # def hp=(hp)
  #   @hp = hp
  # end

  # hpのゲッター
  def hp
    @hp
  end

  # # offenseのセッター
  # def offense=(offense)
  #   @offense = offense
  # end

  # offenceのゲッター
  def offense
    @offense
  end

  # # defenseのセッター
  # def defense=(defense)
  #   @defense = defense
  # end

  # defenseのゲッター
  def defense
    @defense
  end
end

# 引数が４つに見えるが、実はハッシュが一つ
brave = Brave.new(name: "テリー", hp: 500, offense: 150, defense: 100)

# セッター
# brave.name = "テリー"
# brave.hp = 500
# brave.offense = 150
# brave.defense = 100

#ゲッター
puts <<~TEXT
NAME:#{brave.name}
HP:#{brave.hp}
OFFENSE:#{brave.offense}
DEFENSE:#{brave.defense}
TEXT
