# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

if Rails.env == "development"

  # Admin.create!(password: "password", email: "admintest@example.com")

  10.times do |i|
    EndUser.create!(email: "test#{i + 1}@example.com",
    				password: "password", password_confirmation: "password",
    				kanzi_last_name: "秋田#{i + 1}", kanzi_first_name: "裕二#{i + 1}",
    				kana_last_name: "アキタ#{i + 1}", kana_first_name: "ユウジ#{i + 1}")
  end

  10.times do |i|
    Address.create!(end_user_id: i + 1,
    				postal_code: "000-000#{i + 1}",
    				address: "北海道札幌市中央区モエレ沼公園1-1-#{i + 1}",
    				phone_number: "000-000-000#{i + 1}",
    				send_name: "秋田裕二#{i + 1}")
  end


  10.times do |i|
    Artist.create!(artist_name: "artist_#{i + 1}")
  end

  10.times do |i|
    Label.create!(label_name: "label_#{i + 1}")
  end

  [
    'J-POP', 'ロック/ポップス', 'ソウル/クラブ/ラップ', 'カントリー/ブルース',
    'ジャズ', 'ヒーリング/ニューエイジ', 'K-POP/ワールド', 'サウンドトラック', 'アニメ/ゲーム'
  ].each do |genre|
    Genre.create!(
      { genre_name: genre }
    )


  DeliveryCharge.create!(delivery_charge: "500".to_i)


  MethodOfPayment.create!(method_of_payment: "クレジットカード決済")
  MethodOfPayment.create!(method_of_payment: "銀行振込")
  MethodOfPayment.create!(method_of_payment: "代金引換")


  10.times do |i|
  Order.create!(end_user_id: i + 1,
  				method_of_payment: "1".to_i,
    			postal_code: "000-000#{i + 1}",
    		  address: "北海道札幌市中央区モエレ沼公園1-1-#{i + 1}",
    			phone_number: "000-000-000#{i + 1}",
    			send_name: "秋田裕二#{i + 1}",
    			delivery_charge: "500".to_i,
    			order_status: "受付")
  end


  10.times do |i|
    Product.create!(genre_id: i + 1, label_id: i + 1, artist_id: i + 1,
    				title: "タイトル#{i + 1}", sales_status: "1".to_i,
    				price: "1#{i + 1}00".to_i)
  end

  10.times do |i|
    ArrivalOfGood.create!(product_id: i + 1, arrival_day: "2000-01-0#{i + 1}".to_i, sheet: "#{i + 1}00".to_i)
  end

  10.times do |i|
    Disk.create!(product_id: i + 1, disk_number: i + 1)
  end

  10.times do |i|
    OrderDetail.create!(order_id: i + 1, product_id: i + 1, price: "1#{i + 1}00".to_i, sheet: i + 1)
  end

  [
    'ラブソング', '応援ソング', 'リラックス・癒し', 'オルゴール',
    '泣ける', 'バラード', 'テンションが上がる', 'ドライブ'
  ].each do |theme|
    Theme.create!(
      { theme: theme }
    )
  end

  10.times do |i|
    RecordMusic.create!(disk_id: i + 1, track_number: i + 1, theme_id: 1,
                song_name: "song_name#{i + 1}")
  end

end