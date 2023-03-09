class Brave

  # nameのセッター 値をセットできる
  def name=(name)
    @name = name
  end

  # nameのゲッター
  def name
    @name
  end

  # hpのセッター
  def hp=(hp)
    @hp = hp
  end

  # hpのゲッター
  def hp
    @hp
  end

  # offenseのセッター
  def offense=(offense)
    @offense = offense
  end

  # offenceのゲッター
  def offense
    @offense
  end

  # defenseのセッター
  def defense=(defense)
    @defense = defense
  end

  # defenseのゲッター
  def defense
    @defense
  end
end


brave = Brave.new

# セッター
brave.name = "テリー"
brave.hp = 500
brave.offense = 150
brave.defense = 100

#ゲッター
puts <<~TEXT
NAME:#{brave.name}
HP:#{brave.hp}
OFFENSE:#{brave.offense}
DEFENSE:#{brave.defense}
TEXT
