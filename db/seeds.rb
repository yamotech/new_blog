# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = ["この投稿はスパルタキャンプ in hachimantai Ruby on Rails用のサンプルアプリです", "年齢不問、経験不問、職歴不問。プログラミングを学びたいという”強い思い”を持っている人が対象のプログラミング学習イベントです。", "スパルタキャンプでは、本や教科書で学ぶのとは異なり分からないことがあったらすぐに質問することができる環境で進めていくことができるので、挫折することがありません。"]

category = ["Rails", "雑感", "未分類"]

30.times do |index|
  Post.create(title: "#{index}回目", body: "#{index}回目の投稿です。#{post.sample}", category: "#{category.sample}")
end
