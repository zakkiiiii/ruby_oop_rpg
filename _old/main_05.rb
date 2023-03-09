#02との違い、　引数の数を増やすと、initializeが大変 ハッシュとして値を受け取れるようにしましょう

# 03との違い　この状態だとゲッターで外から値をゲットすることはできるが、セッターがないため、値を外部から変更することができないという認識。
# 外から修正をするなら、attr_writerを使ってセッターメソッドを定義する必要あり。

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
# 引数が４つに見えるが、実はハッシュが一つ
brave = Brave.new(name: "テリー", hp: 500, offense: 150, defense: 100)

#ゲッター
puts <<~TEXT
NAME:#{brave.name}
HP:#{brave.hp}
OFFENSE:#{brave.offense}
DEFENSE:#{brave.defense}
TEXT

brave.hp -= 30

puts "#{brave.name}はダメージを受けた！ 残りHPは#{brave.hp}だ"
