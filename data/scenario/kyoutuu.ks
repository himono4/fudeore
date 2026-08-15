*start

[cm  ]
[clearfix]
[start_keyconfig]

[bg storage="黒.png" time=500]

;メニューボタンの表示

;メッセージウィンドウの設定
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="40" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=30 x=200 y=500 shadow="#000000"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;フォントの影
[deffont shadow="#000000"]
[resetfont]
;このゲームで登場するキャラクターを宣言
;yuko
[chara_new  name="shusuke" storage="chara/shusuke/修介部屋着通常.png" jname="修介"  width = 720 height=1280]

;キャラクターの表情登録
[chara_face name="shusuke" face="tuuzyou" storage="chara/shusuke/修介部屋着通常.png"]

[button name="role_button" role="skip" graphic="button/skip.png" x=780 y=690]
[button name="role_button" role="save" graphic="button/save.png" x=590 y=690]
[button name="role_button" role="load" graphic="button/load.png" x=685 y=690]
[button name="role_button" role="backlog" graphic="button/log.png" x=970 y=690]
[button name="role_button" role="auto" graphic="button/auto.png" x=875 y=690]
[button name="role_button" role="title" graphic="button/title.png" x=1160 y=690]
[button name="role_button" role="sleepgame" storage="config.ks" graphic="button/sleep.png" x=1065 y=690]

[eval exp="f.sintyoku=50"]
[eval exp="f.koukando=50"]
[eval exp="f.stress=50"]
[eval exp="f.day=1"]
[eval exp="f.sintyokucheck=0"]
[eval exp="f.date=0"]
[eval exp="f.amayakasu=0"]
[eval exp="f.hanasi=0"]


綺麗なものが好き。[n]
綺麗なものがボロボロに壊れてしまう姿は、もっと好き。[n]
そこに理屈なんてなくて、ただただ、私はそれが大好きで、どうしても見たいっていう、それだけ。[n]
無邪気な願望ほど暴力的で、厄介なものはない。[n]
自覚をしながらも、私は今日も、我が家に住まう美しい生き物にご飯を運ぶ。[n]
キッチンを出てすぐの階段を上がって、二階の廊下を突き当りまで進んだ隅っこの部屋。[n]
;修介の部屋のドア
この部屋こそが、彼の住まう鳥籠だった。[n]
;修介の部屋
[bg storage="CG_パソコン.png"]
扉を開けると、いつも通り部屋は薄暗かった。[n]
部屋の内部にある唯一の光源は、卓上に置かれたノートパソコンだけ。[n]
私の大好きな人は、青白い光に照らされながら、四角い画面とにらめっこしていた。[n]
カンナ「こんにちは、修介くん。ご飯持ってきたよ」[n]
;修介不機嫌
修介「ノックぐらいしてよ、まったく……」[n]
急にドアを開けられた修介くんは、廊下の電灯の眩しさに目を細めている。[n]
カンナ「ごめんね、でも修介くん、いつも気づかないから」[n]
修介「集中してると音、聞こえないんだよ……」[n]
;修介自嘲
修介「って、ただのワナビのくせにプロ作家みたいなこと言っちゃった。恥ずかしい」[n]
[bg storage="修介の部屋.png"]
この人——修介くんは、同居している５歳年上のいとこだ。[n]
大学を三年生で中退してからずっと引きこもりの無職、現在２２歳。[n]
そして、小説家志望。[n]
本人いわく、“オワッてるステータス”らしい。[n]
まだ高校生の私にも、彼の言わんとすることはわかる。[n]
[chara_show name="shusuke" top=20 left=230]
修介「っていうかさ、カンナちゃん、今日から家族みんなで旅行じゃなかった？　なんでうちにいんの」[n]
カンナ「無理言って家に残ったの。修介くんのことが心配で仕方ないからって」[n]
修介「はぁ？　せっかく家族で思い出作れるチャンスだったのに、なんでそんなくだらないことで」[n]
カンナ「私にとってはくだらなくないよ」[n]
修介「よくわかんないヤツ……はぁ、せっかく人目を気にせず追い込みかけられると思ったんだけど」[n]
カンナ「もうすぐだよね、新人賞の締め切り」[n]
修介「そう。あと一週間。ちょうどカンナちゃんの家族が帰ってくる日。それまで家に一人になるから、誰にも邪魔されずに書けると思ったんだけど……」[n]
カンナ「でも、私が居た方が家事する手間も省けるし、小説書ける時間ができるんじゃない？」[n]
修介「だけど、こうやってちょっかいをかけられて無駄話をする時間は発生しない」[n]
カンナ「刺激があった方が良いもの書けるかもでしょ」[n]
修介「……口の減らないガキだね、君は」[n]
修介「……とにかくさ、次の新人賞は、本当に大事なんだ。もう、これに落ちたら夢追いかけるのやめる」[n]
カンナ「ええっ、やめちゃうの？」[n]
修介「だから、落ちたらって言ってるだろ。受かんないみたいな言い方やめろ」[n]
カンナ「そうじゃなくて……」[n]
修介くんが小説家になるのを諦めるのは、困る。[n]
夢にしがみついて、引きこもりになっても、無職になっても、どうしても諦めきれなくて、惨めに頑張り続けてる修介くんが、誰よりも美しいのに！[n]
カンナ「そうだ！」[n]
修介「え、何？　どうしたの？」[n]
カンナ「私が修介くんの執筆のお手伝いをするよ」[n]
修介「ええ……君に何ができるって言うの」[n]
カンナ「それは……気晴らしにおしゃべりしたり、散歩に連れ出したり、甘やかしてあげたり、逆に催促したり？」[n]
修介「なにそれ……ってか甘やかすって。俺のことなんだと思ってるの」[n]
カンナ「寂しがりやさん」[n]
修介「はぁ……俺のこと引きこもりの無職だからって舐めてるよね？　まあ、全部俺が悪いからなんも言えないんだけどさ……」[n]
カンナ「はいはい、バッドに入らない。とにかく、今日から私が編集者になって修介くんのメンタルコントロールしてあげるから」[n]
修介「メンタルコントロールって、ずいぶんはっきり言うな……」[n]
修介「まあ、いいよ。カンナちゃんの言う通り、どうせ俺は寂しがりのメンタル弱者だからね」[n]
修介「適度に相手してくれたら、まぁ、嬉しくなくもないから」[n]
;修介自嘲
修介「って恥ずかし。ヒキニートのくせにツンデレかよ」[n]
修介くんはいつも、自分の一挙手一投足をせっついて、自分を責めさいなんでいる。[n]
そういうところも好きだよ、なんて、絶対に言わない。[n]
カンナ「とにかく、今日から修介くんのこと管理してあげるから、よろしくね」[n]
修介「はいはい」[n]
適当な返事には、隠し切れない優しさが滲み出ていた。[n]


[mask effect="fadeIn" time=100]
[position layer="message0" frame="frame.png" left=0 top=550 width=1280 height=200  page=fore visible=false]
[bg storage="コマンド画面背景.jpg"]
[chara_move name="shusuke" left=0]
;レイヤ1を表示状態に
[position layer="message0" frame="frame_command.png" left=0 top=560 width=1280 height=160 page=fore visible=true]
[layopt layer="1" visible="true"]
[image storage="../image/b.png" x=800 y=30 width=400 height="200" layer="1" ]
[l]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=950 y=70 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=70 width="&f.sintyoku*1.4" height=20]
[image storage="../image/bar_base.png" layer=2 x=950 y=120 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=120 width="&f.koukando*1.4" height=20]
[image storage="../image/bar_base.png" layer=2 x=950 y=170 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=170 width="&f.stress*1.4" height=20 ]


[ptext layer=2 text="進捗" y=70 x=860 size=21 ]
[ptext layer=2 text="好感度" y=120 x=850 size=21]
[ptext layer=2 text="ストレス" y=170 x=840 size=21]
[ptext layer=2 text="&f.sintyoku" y=70 x=1120 size=23]
[ptext layer=2 text="&f.koukando" y=120 x=1120 size=23]
[ptext layer=2 text="&f.stress" y=170 x=1120 size=23]
[ptext layer=2 text="&'Day'+f.day" y=55 x=100 size=50 edge="2px #1e1e1e" ]
[mask_off]
[playbgm storage="夜の病室エレクトロ.mp3"]
*day1_command

[button graphic="お出かけ.png"  target="*day1_date" x=1000 y=250  width=192 height=120 enterimg="お出かけ2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="お出かけ.png"  ]
[button graphic="甘やかす.png"  target="*day1_amayakasu" x=800 y=400 width=192 height=120 enterimg="甘やかす2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="甘やかす.png" ]
[button graphic="話を聞く.png"  target="*day1_hanasi" x=800 y=250 width=192 height=120 enterimg="話を聞く2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="話を聞く.png" ]
[button graphic="進捗チェック.png"   target="*day1_sintyoku" x=1000 y=400 width=192 height=120 enterimg="進捗チェック2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="進捗チェック.png" ]
[s]

*day1_date
修介くんを外に連れ出します　（ストレス? 好感度?）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*date1" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day1_command" width=300 x=50 y=400]
[s]

*day1_amayakasu
修介くんを甘やかします　（ストレス↓↓　好感度↑↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*amayakasu1" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day1_command" width=300 x=50 y=400]
[s]

*day1_hanasi
修介くんの話を聞きます　（ストレス↓　好感度↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*hanasi1" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day1_command" width=300 x=50 y=400]
[s]

*day1_sintyoku
進捗チェックをして修介くんを詰めます　（ストレス↑↑　好感度↓↓）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*sintyoku1" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day1_command" width=300 x=50 y=400]
[s]

*day2
[mask effect="fadeIn" ]
[freeimage layer=1]
[freeimage layer=2]

[layopt layer=1 visible=true]
[layopt layer=2 visible=true]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name="sintyoku"]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[chara_hide name=shusuke time=10]
[bg storage="CG_パソコン.png" time=10]
[mask_off]
小説を書いている修介くんはいつも、苦しそうな顔をしている。[n]
自分の中にある昏い気持ちと戦って、その中にある綺麗なものを必死で探し当てようとしているんだと思う。[n]
ずっと昔から修介くんの小説を読み続けている私には、それがわかる。[n]
昔の修介くんは、親戚の中でも優秀で、誰の目から見ても良い子だった。[n]
顔が綺麗で、勉強ができて、礼儀正しくて、良い高校に行って、良い大学にも行って……。[n]
きっとあの子はエリート街道まっしぐらね、なんて、親戚の人が言っていたのを思い出す。[n]
そのころのことを考えると、今の修介くんはいかにも落ちぶれた、なんて表現できてしまうかもしれない。[n]
だけど私にとっては、今も昔も変わらない。[n]
カンナ「修介くん、そろそろ休憩しよう？」[n]
;修介驚き
修介「うわっ……びっくりした」[n]
;修介通常
修介「何？　今日も俺の邪魔しにきたの？」[n]

[glink text="邪魔とは失礼な。サポートだよサポート" color="btn_07_black" width=500 x=400 y=100 target="*day2_select1"]
[glink text="ごめん、邪魔だよね" color="btn_07_black" width=500 x=400 y=200 target="*day2_select2"]
[glink text="そんな言い方なくない？" color="btn_07_black" width=500 x=400 y=300 target="*day2_select3"]
[s]
;「邪魔とは失礼な。[n]サポートだよ、サポート」[n]
;「ごめん、邪魔だよね……」[n]
;「そんな言い方なくない？」[n]

*day2_select1
;「邪魔とは～」[n]を選んだ場合
修介「はいはい。サポートね。ま、放っておかれるよりかはいいのか」[n]
;ストレス-5
[iscript]
f.stress -= 5
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[layopt layer=1 visible=true]
[layopt layer=2 visible=true]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name="sintyoku"]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]

[mask_off]
[jump target="*day2_common"]
*day2_select2
;「ごめん～」[n]を選んだ場合
修介「謝んないでよ。……カンナちゃんは、何も悪くないんだからさ」[n]
;ストレス＋５

*day2_select3
;「そんな言い方なくない？」[n]を選んだ場合
修介「悪かったな。こんな言い方しかできない人間なんだよ、俺は」[n]
;ストレス±０

*day2_common
;共通
修介「まあ、いいよ。どうせ今ちょっと詰まってたところだし」[n]
修介「君の好きなようにしていいよ、俺のこと」[n]
そうして、今日も私は修介くんと関わる権利を得た。[n]

;コマンド選択画面
[mask effect="fadeIn" time=100]
[position layer="message0" frame="frame.png" left=0 top=550 width=1280 height=200  page=fore visible=false]
[bg storage="コマンド画面背景.jpg"]
[chara_move name="shusuke" left=0]
;レイヤ1を表示状態に
[position layer="message0" frame="frame_command.png" left=0 top=560 width=1280 height=160 page=fore visible=true]
[layopt layer="1" visible="true"]
[image storage="../image/b.png" x=800 y=30 width=400 height="200" layer="1" ]
[l]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=950 y=70 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=70 width="&f.sintyoku*1.4" height=20]
[image storage="../image/bar_base.png" layer=2 x=950 y=120 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=120 width="&f.koukando*1.4" height=20]
[image storage="../image/bar_base.png" layer=2 x=950 y=170 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=170 width="&f.stress*1.4" height=20 ]


[ptext layer=2 text="進捗" y=70 x=860 size=21 ]
[ptext layer=2 text="好感度" y=120 x=850 size=21]
[ptext layer=2 text="ストレス" y=170 x=840 size=21]
[ptext layer=2 text="&f.sintyoku" y=70 x=1120 size=23]
[ptext layer=2 text="&f.koukando" y=120 x=1120 size=23]
[ptext layer=2 text="&f.stress" y=170 x=1120 size=23]
[ptext layer=2 text="&'Day'+f.day" y=55 x=100 size=50 edge="2px #1e1e1e" ]
[mask_off]
[playbgm storage="夜の病室エレクトロ.mp3"]
*day2_command

[button graphic="お出かけ.png"  target="*day2_date" x=1000 y=250  width=192 height=120 enterimg="お出かけ2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="お出かけ.png"  ]
[button graphic="甘やかす.png"  target="*day2_amayakasu" x=800 y=400 width=192 height=120 enterimg="甘やかす2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="甘やかす.png" ]
[button graphic="話を聞く.png"  target="*day2_hanasi" x=800 y=250 width=192 height=120 enterimg="話を聞く2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="話を聞く.png" ]
[button graphic="進捗チェック.png"   target="*day2_sintyoku" x=1000 y=400 width=192 height=120 enterimg="進捗チェック2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="進捗チェック.png" ]
[s]

*day2_date
修介くんを外に連れ出します　（ストレス? 好感度?）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい"  target="*day2_date2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day2_command" width=300 x=50 y=400]
[s]

*day2_date2
[jump storage="command.ks" target="*date1" cond="f.date === 0"]
[jump storage="command.ks" target="*date2" cond="f.date === 1"]

*day2_amayakasu
修介くんを甘やかします　（ストレス↓↓　好感度↑↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*day2_amayakasu2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day2_command" width=300 x=50 y=400]
[s]

*day2_amayakasu2
[jump storage="command.ks" target="*amayakasu1" cond="f.amayakasu === 0"]
[jump storage="command.ks" target="*amayakasu2" cond="f.amayakasu === 1"]

*day2_hanasi
修介くんの話を聞きます　（ストレス↓　好感度↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*day2_hanasi2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day2_command" width=300 x=50 y=400]
[s]

*day2_hanasi2
[jump storage="command.ks" target="*hanasi1" cond="f.hanasi === 0"]
[jump storage="command.ks" target="*hanasi2" cond="f.hanasi === 1"]

*day2_sintyoku
進捗チェックをして修介くんを詰めます　（ストレス↑↑　好感度↓↓）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*day2_sintyoku2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day2_command" width=300 x=50 y=400]
[s]

*day2_sintyoku2
[jump storage="command.ks" target="*sintyoku1" cond="f.sintyokucheck === 0"]
[jump storage="command.ks" target="*sintyoku2" cond="f.sintyokucheck === 1"]

*day3
[mask effect="fadeIn" ]
[freeimage layer=1]
[freeimage layer=2]

[layopt layer=1 visible=true]
[layopt layer=2 visible=true]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name="sintyoku"]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[chara_hide name=shusuke time=10]
[bg storage="修介の部屋.png" time=10]
[mask_off]
;三日目
;廊下
今日も修介くんにご飯を運ぶ。[n]
部屋の前に置かれたトレーの上には数時間前に運んだ朝ごはんの残骸がある。[n]
いつもはなんだかんだちゃんと全部食べてくれるけど、今日は半分ぐらいしか食べられなかったようだ。[n]
食べかけのトーストを口にする。[n]修介くんの味がするかと思ったら、そんなことはなかった。[n]
それでも、修介くんを自分の腹の中に収めるような気持ちで、修介くんの残した朝ごはんを全部食べた。[n]
そして、何もなかったかのように修介くんの部屋の扉をノックする。[n]
カンナ「お昼ご飯持ってきたよー」[n]
扉越しに声を掛けるけど、返事は返ってこない。[n]
やっぱり聞こえてない、と思いながら、ドアを開ける。[n]
;修介の部屋
修介くんは相変わらず、パソコンと向き合っていた。[n]
カンナ「……修介くん、朝ごはん残したでしょ」[n]
修介「うん……」[n]
カンナ「もしかして寝てないんじゃない？」[n]
修介「うん……」[n]
間違いなく適当に返事している。[n]
このままの調子だと昼食を食べてくれる気がしない。[n]
カンナ「はい、昼ご飯だよ、食べて」[n]
仕方がないから、皿に盛られたふりかけご飯を修介くんの口元に持っていく。[n]自分で食べてくれないなら、こうやって食べさせるしかない。[n]
しかし、口元にスプーンを持ってきた途端……
修介「……うぇっ」[n]
修介くんはえずいてしまった。[n]
カンナ「大丈夫？」[n]
スプーンを皿に戻し、修介くんの背中をさする。[n]
修介「ごめん……ちょっと、今、食べ物の匂い、嗅ぐだけで、きついかも」[n]
カンナ「そっか……」[n]

;「でも、食べなきゃ元気になれないよ」[n]
;「食べられるときに食べればいいよ」[n]
;「食べられそうなもの、あれば作るよ」[n]

;でも～を選んだ場合
修介「食べられないって言ってるでしょ。[n]無理に食べさせようとしないでよ……」[n]
;ストレス＋５

;食べられるときに～を選んだ場合
修介「ありがとう……あとで食べとくよ」[n]
;ストレス-5

;食べられそうなもの～を選んだ場合
修介「いいよ、せっかく作ってくれたもの、作り直させるのも悪いし、気、使うし……」[n]
;ストレス±０

;共通
修介「とにかく、今はご飯食べられないから……」[n]
カンナ「徹夜したから体調がおかしくなってるんだよ」[n]
カンナ「仮眠でもいいから、ちょっとは寝た方がいいんじゃない？　その方が作業効率も……」[n]
修介「うるさい」[n]
修介「……いや、ごめん。[n]わかってる、わかってるんだよ。[n]寝た方がいいもの書けるってことぐらい」[n]
修介「でも、駄目なんだ、寝ようとすると不安が止まらなくなって、頭がおかしくなりそうになる」[n]
修介「だから、書き続けるしかないんだよ……」[n]
修介「一度正気に戻ると、現実を見ると、なんにもできなくなっちゃうから」[n]
修介「全部から目を背けて、自分の中の世界に浸りっぱなしの方が、かえって良いんだ」[n]
修介「……はは、そんな理由で小説書くなって話だよな。[n]自己満で完結してるから、俺はいつまで経っても小説家になれないんだよな」[n]
修介「……ごめん、ヘラッた」[n]
カンナ「大丈夫、いつものことだし」[n]
修介「はは、酷いなぁ、カンナちゃんは」[n]
軽口を叩いて、ちょっと空気を緩める。[n]
修介「それで、今日は何しに来たの」[n]
そうしたら、修介くんは私の方を向いてくれるから。[n]

;コマンド選択画面
[mask effect="fadeIn" time=100]
[position layer="message0" frame="frame.png" left=0 top=550 width=1280 height=200  page=fore visible=false]
[bg storage="コマンド画面背景.jpg"]
[chara_move name="shusuke" left=0]
;レイヤ1を表示状態に
[position layer="message0" frame="frame_command.png" left=0 top=560 width=1280 height=160 page=fore visible=true]
[layopt layer="1" visible="true"]
[image storage="../image/b.png" x=800 y=30 width=400 height="200" layer="1" ]
[l]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=950 y=70 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=70 width="&f.sintyoku*1.4" height=20]
[image storage="../image/bar_base.png" layer=2 x=950 y=120 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=120 width="&f.koukando*1.4" height=20]
[image storage="../image/bar_base.png" layer=2 x=950 y=170 width=140 height=20]
[image storage="../image/bar_white.png" layer=2 x=950 y=170 width="&f.stress*1.4" height=20 ]


[ptext layer=2 text="進捗" y=70 x=860 size=21 ]
[ptext layer=2 text="好感度" y=120 x=850 size=21]
[ptext layer=2 text="ストレス" y=170 x=840 size=21]
[ptext layer=2 text="&f.sintyoku" y=70 x=1120 size=23]
[ptext layer=2 text="&f.koukando" y=120 x=1120 size=23]
[ptext layer=2 text="&f.stress" y=170 x=1120 size=23]
[ptext layer=2 text="&'Day'+f.day" y=55 x=100 size=50 edge="2px #1e1e1e" ]
[mask_off]
[playbgm storage="夜の病室エレクトロ.mp3"]
*day3_command

[button graphic="お出かけ.png"  target="*day3_date" x=1000 y=250  width=192 height=120 enterimg="お出かけ2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="お出かけ.png"  ]
[button graphic="甘やかす.png"  target="*day3_amayakasu" x=800 y=400 width=192 height=120 enterimg="甘やかす2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="甘やかす.png" ]
[button graphic="話を聞く.png"  target="*day3_hanasi" x=800 y=250 width=192 height=120 enterimg="話を聞く2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="話を聞く.png" ]
[button graphic="進捗チェック.png"   target="*day3_sintyoku" x=1000 y=400 width=192 height=120 enterimg="進捗チェック2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="進捗チェック.png" ]
[s]

*day3_date
修介くんを外に連れ出します　（ストレス? 好感度?）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい"  target="*day3_date2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day3_command" width=300 x=50 y=400]
[s]

*day3_date2
[jump storage="command.ks" target="*date1" cond="f.date === 0"]
[jump storage="command.ks" target="*date2" cond="f.date === 1"]
[jump storage="command.ks" target="*date3" cond="f.date === 2"]

*day3_amayakasu
修介くんを甘やかします　（ストレス↓↓　好感度↑↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*day3_amayakasu2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day3_command" width=300 x=50 y=400]
[s]

*day3_amayakasu2
[jump storage="command.ks" target="*amayakasu1" cond="f.amayakasu === 0"]
[jump storage="command.ks" target="*amayakasu2" cond="f.amayakasu === 1"]
[jump storage="command.ks" target="*amayakasu3" cond="f.amayakasu === 2"]

*day3_hanasi
修介くんの話を聞きます　（ストレス↓　好感度↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*day3_hanasi2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day3_command" width=300 x=50 y=400]
[s]

*day3_hanasi2
[jump storage="command.ks" target="*hanasi1" cond="f.hanasi === 0"]
[jump storage="command.ks" target="*hanasi2" cond="f.hanasi === 1"]
[jump storage="command.ks" target="*hanasi3" cond="f.hanasi === 2"]
*day3_sintyoku
進捗チェックをして修介くんを詰めます　（ストレス↑↑　好感度↓↓）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" storage="command.ks" target="*day3_sintyoku2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day3_command" width=300 x=50 y=400]
[s]

*day3_sintyoku2
[jump storage="command.ks" target="*sintyoku1" cond="f.sintyokucheck === 0"]
[jump storage="command.ks" target="*sintyoku2" cond="f.sintyokucheck === 1"]
[jump storage="command.ks" target="*sintyoku3" cond="f.sintyokucheck === 2"]

*day4
;四日目
多分、どうせ声を掛けても気づかないだろう。[n]
そう思って修介くんの部屋のドアを開ける。[n]
;背景：修介の部屋
そして、すぐ異変に気付いた。[n]
;修介がうずくまるCG
修介くんが、部屋の隅でガタガタ震えている。[n]
カンナ「ねえ、修介くん、どうしたの」[n]
修介「……思い、出して」[n]
修介「お母さんの、こと」[n]
その一言で察した。[n]
またあの発作だ、と。[n]
修介「朝、起きたら、お母さんが、首、吊ってて」[n]
修介「わけわかんなくて、必死で救急車呼んで、でも助からなくて、俺、何もできなくて」[n]
修介「俺、何もできない人間で、どうしようもなくて、それでもお母さんのことだけはって、でも」[n]
カンナ「……」[n]
修介くんが大学三年生のとき、叔母さん——修介くんのお母さんは自殺した。[n]
ずっと前から精神の病を患っていたが、回復することはかなわず、ある日突然、糸がぷっつり切れたかのように首を吊ってしまった。[n]
母子家庭で、昔から一人でお母さんを支え続けていた修介くんの気持ちは、想像することしかできない。[n]
事実だけを述べるなら、お母さんが自殺してから、修介くんはしばらく全く何もできなくなった。[n]大学に通うことはおろか、ベッドから起き上がることすら。[n]
そんな修介くんをうちのお母さんが引き取って、療養のためという名目のもと、うちで暮らし始めた。[n]
これが、修介くんがニートと呼ばれる存在になった経緯だった。[n]
修介「……そんな憐れむような目で見るなよ。[n]大丈夫、俺はおかしくなってないから」[n]
修介「……ちょっと思い出しただけだよ。[n]思い出して、怖くなっただけ」[n]
修介「俺は狂えないし、どんなに辛いことがあっても叫び出すことすらできないんだ」[n]
修介「自分だけは正気でいなくちゃって、ずっと思いながら生きてきたから」[n]
修介「だから俺は正気だし、今の状況は全部俺の責任」[n]
カンナ「……でも、修介くん、つらそうだよ」[n]
修介「……」[n]
カンナ「今まで苦しんできたぶん、今ぐらいは、好きなように生きたって、いいじゃん」[n]
修介「……君は優しいね」[n]
修介「いや、優しい言葉をかけてるだけ、か」[n]
カンナ「……！」[n]
修介「君、本当は苦しんでる俺が好きなんでしょ」[n]
修介「幸せになった俺には用なんてなくて、もがきながら生きてる俺の支えになることが、何よりも楽しいんだろ」[n]

;「違うよ」[n]
;「……そうだよ」[n]

;「違うよ」[n]を選んだ場合
修介「違くないよ」[n]
修介「何年前から見てきてると思ってるの。[n]わかるんだよ、ただ憧れてただけの昔とは違うって」[n]
カンナ「でも、幸せになってほしいのは、本当で」[n]
修介「……それなら、もう俺とは関わらない方がいいよ」[n]
修介「もし君が、幸せになった俺を見たいという動機で俺と接しているのであれば」[n]
修介「きっと君はいつか、その途中で俺に疲れてしまう」[n]
修介「そんな日が来るなら、もうここで全てを終わりにした方がいい」[n]
修介「……出て行ってくれないか、この部屋から」[n]
カンナ「そんな……」[n]
そして修介くんは立ち上がり、催促する。[n]
修介「さあ、早く」[n]
有無を言わさぬ態度で悟る。[n]
こうなった修介くんはもう、自分の言ったことを覆さない。[n]
修介「……今までありがとうね」[n]
最後にそう言い残して、修介くんは扉を完全に閉ざした。[n]
;暗転
それから、修介くんは私と一切会話をしなくなった。[n]
ほどなくして修介くんは夜勤のコンビニバイトを始め、生活時間帯が全く逆転してしまったため、家の中で会うこともなくなった。[n]
今、修介くんがどのようなことを思って生きているのか、まだ小説を書いているのかすらわからない。[n]
こうして、私たちの人生は、あの日のたった一言をきっかけにして、永遠にすれ違うことになった。[n]
;ＥＮＤ１

;「……そうだよ」[n]を選んだ場合
カンナ「……そうだよ」[n]
カンナ「修介くんには、できるだけ幸せになってほしいとは、ちゃんと思ってるけど」[n]
カンナ「でも逆に、幸せになった修介くんは、私のことを必要としないよね」[n]
修介「……っ」[n]
修介くんは、不意を突かれたようにとても悲しそうな顔をする。[n]
そんな顔するぐらいなら、あんな質問しなければよかったのに。[n]
カンナ「私が唯一のファンだから、私に優しいんでしょ」[n]
カンナ「だから私は、不幸で、孤独な修介くんが好き」[n]
カンナ「成功して、みんなに愛されるようになった修介くんは、きっと私の方なんて見なくなっちゃうでしょ」[n]
修介「……君は、俺を過大評価しすぎだよ」[n]
カンナ「でも私、本気で思ってるんだよ。[n]修介くんはいつか絶対成功して、みんなに愛される小説家になるって」[n]
カンナ「けど、きっと私はそれだけじゃ満足しない」[n]
綺麗なものが好き。[n]
綺麗なものがボロボロに壊れてしまう姿は、もっと好き。[n]
私は、ボロボロになった修介くんを独り占めしたいのだ。[n]
修介「昔から、俺なんかに入れ込まない方がいいよって言ってきたけど、どうやら正解だったようだね」[n]
修介「……俺のせいで、君はこんなやつになっちゃった」[n]
カンナ「こんな私は、嫌い？」[n]
修介「いや。[n]利己的な人間の方が、かえって信用できる」[n]
修介「……それに、君はやっぱり、俺の唯一のファンだから」[n]
修介「作家はしょせん、読者の奴隷に過ぎないよ」[n]
修介「だから、今日も俺のこと好きに扱ってよ」[n]
修介「そんな俺が、君は好きなんだろ」[n]
そう言って笑った修介くんの顔は、なんだか壊れてしまったみたいだった。[n]
