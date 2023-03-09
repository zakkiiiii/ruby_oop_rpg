class Brave

  # initializeメソッドの定義

  def initialize(name, hp, offense, defense)
    # @name = "テリー"
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
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
