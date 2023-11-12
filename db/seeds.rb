# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ファイルパス: app/config/db/seeds.rb

# 11人のユーザーを作成
11.times do |i|
  email = i.zero? ? 'sample@email.com' : "sample-#{i}@email.com"
  name = i.zero? ? 'サンプルユーザー' : "サンプルユーザー#{i}"

  user = User.create!(
    email: email,
    password: 'password',
    password_confirmation: 'password',
    name: name,
    confirmed_at: Time.now
  )

  # ユーザーが作成されたことをコンソールに出力
  puts "ユーザーが作成されました: #{user.name} (#{user.email})"
end
