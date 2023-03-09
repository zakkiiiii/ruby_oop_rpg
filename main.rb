class Brave

  #attr_readerの記述でゲッターを省略できる
  attr_reader :name, :offense, :defense
  # attr_writer :hp
  attr_accessor :hp

  # initializeメソッドの定義
  # paramsで一括で受け取る (hashとして、)　引数として受け取ることも可能
  def initialize(**params)
    # @name = "テリー"
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end

class Monster
  # :name これはこういう書き方である。
  # **paramsにすることでハッシュ形式の引数しか受け付けないようにできる
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end

# 引数が４つに見えるが、実はハッシュが一つにも見せられる
# シンボルのようにも見えるが、あくまでキーワード引数である。
brave = Brave.new(name: "テリー", hp: 500, offense: 150, defense: 100)
# ハッシュ形式でデータを渡すのでどういうデータを渡しているのか把握しやすくなる
monster = Monster.new(name: "スライム", hp: 250, offense: 200, defense: 100)

#ゲッター
puts <<~TEXT
NAME:#{brave.name}
HP:#{brave.hp}
OFFENSE:#{brave.offense}
DEFENSE:#{brave.defense}
TEXT

brave.hp -= 30

puts "#{brave.name}はダメージを受けた！ 残りHPは#{brave.hp}だ"
