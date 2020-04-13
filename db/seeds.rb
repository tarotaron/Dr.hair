# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "admin@admin",
  password: "aaaaaa"
)

Form.create!(
	form_name: "丸顔",
	form_image: File.open('./app/assets/images/shutterstock_583337440のコピー２.jpg'),
	form_body:"・あごが丸く、頬がふっくら
・顔の縦横の長さが同じくらい
・大顔、童顔に見られる"
)

Form.create!(
	form_name: "面長顔",
	form_image: File.open('./app/assets/images/shutterstock_583337440のコピー.jpg'),
	form_body:"・横幅よりも縦の長さが目立ちやすい
・老けて見られやすい"
)

Form.create!(
	form_name: "ベース形",
	form_image: File.open('./app/assets/images/shutterstock_583337440のコピー6.jpg'),
	form_body:"・エラ、ハチが張っている
・平面的で骨っぽい
・横幅が広く、男っぽく見られる"
)

Form.create!(
	form_name: "三角顔(ハート)",
	form_image: File.open('./app/assets/images/shutterstock_583337440のコピー4.jpg'),
	form_body:"・ハチが張ったシャープなあご
・キツく見られやすい"
)

Length.create!(
	length_name:"ショート",
	length_image: File.open('./app/assets/images/shutterstock_536452372のコピー１.jpg')
	)

Length.create!(
	length_name:"ミディアム",
	length_image: File.open('./app/assets/images/shutterstock_536452372のコピー４.jpg')
	)

Length.create!(
	length_name:"ロング",
	length_image: File.open('./app/assets/images/shutterstock_536452372のコピー.jpg')
	)

Style.create!(
	length_id:3,
	form_id:1,
	style_image: File.open('./app/assets/images/IMG_2201_Original.jpg'),
	style_body:"トップを膨らませ、髪の長さで縦長効果!!
顔まわりレイヤーを入れて頬をカバー!!
※ワイドな前髪は横幅が強調されるので要注意!!",
	style_name:"#ゆるふわロング
＃ヘルシーレイヤーロング
＃ゆるふわパーマ"
	)

Style.create!(
	length_id:2,
	form_id:1,
	style_image: File.open('./app/assets/images/9E43BD42-170D-41D3-84FF-8FBAD955E702_Original.jpg'),
	style_body:"前髪は軽めのシースルーバングで縦長効果!!
顔まわりのサイドバングで頬をシャープに!!
 ※重いバングは横幅が強調されてしまうので要注意!!",
	style_name:"＃外はねボブ
＃ゆるふわセミディ
＃ネオウルフボブ
＃大人可愛いボブ
＃のばしかけボブ"
	)

Style.create!(
	length_id:1,
	form_id:1,
	style_image: File.open('./app/assets/images/IMG_5270_Original.jpg'),
	style_body:"かきあげバングで縦長効果!!
長めのバングで頬をシャープに!!
前下がりはよりGOOD
※重いぱっつん前髪はNG",
	style_name:"＃前下がりショートボブ
＃小顔マッシュショート
＃ハンサムショート
＃マニッシュショート"
	)

Style.create!(
	length_id:3,
	form_id:2,
	style_image: File.open('./app/assets/images/ADA18436-00AD-467C-8D24-176B20CC513E_Original.jpg'),
	style_body:"前髪を作って横長ラインをプラス!!
	ゆるふわパーマでサイドにボリュームを!!
顔まわりのレイヤーでサイドに動きをプラス!!
※センターパートは縦を強調するので要注意!!",
	style_name:"＃ゆるふわデジタルパーマ
＃顔まわりレイヤー
＃アシンメトリーバング"
	)

Style.create!(
	length_id:2,
	form_id:2,
	style_image: File.open('./app/assets/images/IMG_8794_Original.jpg'),
	style_body:"ワイドバングで横長ラインをプラス!!
表面に軽いレイヤーをプラスして顔まわりに動きをプラス!!
 ※長めな前髪はフェザーバングでサイドのボリュームに!!",
	style_name:"#フェザーバング
＃くびれボブ
＃ネオウルフ
＃ウルフボブ"
	)

Style.create!(
	length_id:1,
	form_id:2,
	style_image: File.open('./app/assets/images/IMG_7505_Original.jpg'),
	style_body:"レイヤーの入った丸みショートでふっくらシルエットに!!
重めバングで横長ラインをプラス!!
襟足長めでくびれを出すとよりGOOD",
	style_name:"＃マニッシュショート
＃アンニュイショート
＃ショートレイヤー
＃エアリーショートボブ"
	)

Style.create!(
	length_id:3,
	form_id:3,
	style_image: File.open('./app/assets/images/IMG_1342_Original.jpg'),
	style_body:"髪の長さで縦長効果!!
ウエイトポイントをエラより上目のレイヤーで動きをプラス!!
※切りっぱなしスタイルは硬さが出るため丸のシルエットに!!",
	style_name:"#ゆるふわデジタルパーマ
＃フェザーバング
＃ヘルシーレイヤーロング"
	)

Style.create!(
	length_id:2,
	form_id:3,
	style_image: File.open('./app/assets/images/IMG_2516_Original.jpg'),
	style_body:"長めバングで縦長効果!!
イングラボブで自然に内巻きボブでエラをカバー!!
※切りっぱなしボブはNG!! ワンレングスならGOOD",
	style_name:"＃ワンレンボブ
＃イングラボブ
＃マッシュウルフ
＃ネオウルフ"
	)

Style.create!(
	length_id:1,
	form_id:3,
	style_image: File.open('./app/assets/images/IMG_0075_Original.jpg'),
	style_body:"長めバングで縦長効果!!
	顔まわりで動きを出してウエイトポイントをエラより上に!!
	前下がりシルエットで小顔効果!!",
	style_name:"#前下がりショート
＃マニッシュハンサムショート
＃ショートボブ"
	)

Style.create!(
	length_id:3,
	form_id:4,
	style_image: File.open('./app/assets/images/IMG_6188_Original.jpg'),
	style_body:"緩めの前髪で柔らかい印象に!!
	顔まわりにたっぷりレイヤーを入れて丸みをプラス!!
	※あまり軽すぎると鋭さが出て余計シャープになってしまうので要注意!!",
	style_name:"＃ゆるふわパーマ
＃ゆるふわウェーブ
＃くびれレイヤー"
	)

Style.create!(
	length_id:2,
	form_id:4,
	style_image: File.open('./app/assets/images/B0712367-0B86-479D-BBAC-C2314678F284_Original.jpg'),
	style_body:"広めバングで優しい印象に!!
あご周りは軽めのレイヤーで動きをプラス!!",
	style_name:"#ゆるふわボブ
＃エアリーボブ
＃くびれミディアム
＃ウルフレイヤー"
	)

Style.create!(
	length_id:1,
	form_id:4,
	style_image: File.open('./app/assets/images/IMG_8787_Original.jpg'),
	style_body:"広めバングで優しい印象に!!
	外ハネセットであご周りにボリュームアップを!!
	レイヤーを入れて動きやすさUP",
	style_name:"＃ゆるふわショートボブ
＃くびれショートボブ
＃エアリーショートボブ"
	)