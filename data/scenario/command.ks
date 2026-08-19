*start

[cm  ]
[clearfix]
[start_keyconfig]



;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=0 top=480 width=1280 height=240 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="65" marginl="40" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=30 shadow="#000000" x=200 y=500]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;フォントの影
[deffont shadow="#000000"]
[resetfont]
;このゲームで登場するキャラクターを宣言
[chara_new  name="shusuke" storage="chara/shusuke/修介部屋着通常.png" jname="修介"  width = 720 height=1280]

;キャラクターの表情登録
[chara_face name="shusuke" face="tuuzyou" storage="chara/shusuke/修介部屋着通常.png"]
[chara_face name="shusuke" face="tameiki" storage="../image/shusuke/部屋着ため息.png"]
[chara_face name="shusuke" face="odoroki" storage="../image/shusuke/部屋着驚き.png"]
[chara_face name="shusuke" face="urei" storage="../image/shusuke/部屋着憂い.png"]
[chara_face name="shusuke" face="egao" storage="../image/shusuke/部屋着笑顔.png"]
[chara_face name="shusuke" face="zityouemi" storage="../image/shusuke/部屋着自嘲笑み.png"]
[chara_face name="shusuke" face="mesorasi" storage="../image/shusuke/部屋着目逸らし.png"]
[chara_face name="shusuke" face="josou" storage="../image/shusuke/修介女装立ち絵.png"]

;一日目～三日目まで
*sintyoku1
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku name="sintyoku"]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando" name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress" name="stress"]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;進捗チェックコマンド—一回目
カンナ「修介くん、ちゃんと進捗は出てる？」[n]
;修介立ち絵
[chara_mod name="shusuke" face="mesorasi"]
修介「なに？　編集者気取り？」[n]
カンナ「酷い言い方だなぁ。ちょっと聞いただけなのに」[n]
[chara_mod name="shusuke" face="urei"]
修介「それは……ごめん」[n]
[chara_mod name="shusuke" face="tuuzyou"]
修介「でもさ、難しいんだよ、進捗が出てるかどうかなんて判断するの」[n]
修介「書けたと思ってもしっくりこなくて何度も書き直してるから。進んだり、戻ったり、そんなことの繰り返し」[n]
カンナ「ある程度妥協すればいいのに」[n]
修介「ダメなんだよ。小説は自分自身の鏡だから。妥協したらそのぶん、俺自身の価値も下がる気がする」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「はぁ……こんなことばっか考えてるから、完成しないんだよな」[n]
[iscript]
f.stress += 10
f.koukando -= 5
f.day += 1
f.sintyokucheck += 1
[endscript]



[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="-5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+10" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

;ストレス＋１０、好感度－５

*sintyoku2
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;進捗チェックコマンド2回目
カンナ「進捗どうですかー」[n]
;修介立ち絵
[chara_mod name="shusuke" face="tameiki"]
修介「あ～、そういうの聞くのほんとやめてほしい。しんどい」[n]
カンナ「修介くんは小説書くときいつもしんどそうだよね」[n]
[chara_mod name="shusuke" face="tuuzyou"]
修介「そうだね……いつも、小説書いてるともう一人の自分が責めてくるんだ」[n]
[chara_mod name="shusuke" face="urei"]
修介「なんでお前はこんなに文章が下手なんだ、これだけ人生を捧げてきたのにどうしてつまらないものしか書けないんだって」[n]
修介「それでも、小説を書くのを辞める方が多分、ずっと、苦しいんだよな」[n]
修介「本当に、好きって呪いだよ」[n]
;ストレス＋10、好感度－５
[iscript]
f.stress += 10
f.koukando -= 5
f.day += 1
f.sintyokucheck += 1
[endscript]



[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="-5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+10" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]


*sintyoku3
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;進捗チェックコマンド3回目
カンナ「進捗どうですか」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「はぁ……毎度思うけど、なんで君は俺の小説の進捗なんて気にするの？」[n]
カンナ「当然、ファンだからだよ」[n]
修介「本当？なんかちょっと馬鹿にしてない？」[n]
カンナ「してないよ。なんでそう思うの？」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「だって俺はただのワナビで、しかもニートで、デビューはおろかろくに選考も通らないような小説しか書かないんだよ？」[n]
修介「そんなやつのファンだなんて、バカにしてるだろ、どう考えても」[n]
カンナ「賞の結果が全てじゃないよ」[n]
[chara_mod name="shusuke" face="urei"]
修介「でも、客観的な評価とか、数字とか、そういうものがないなら、全然意味ないし、胸なんて張れないんだよ……」[n]
;ストレス＋１０、好感度－５
[iscript]
f.stress += 10
f.koukando -= 5
f.day += 1
f.sintyokucheck += 1
[endscript]



[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="-5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+10" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

*date1
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;デートコマンド—一回目
カンナ「気分転換に散歩でも行こうよ」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「はあ……外に出るの、怖いんだけどな」[n]
カンナ「そんなこと言わず、ほら」[n]
[chara_mod name="shusuke" face="odoroki"]
修介「あ、ちょっと！」[n]
[mask effect="fadeIn" time=1000]
[chara_mod name="shusuke" face="tameiki"]
[bg storage="公園.png" time=100]
[mask_off]
;背景：公園
修介「のんきなもんだな、公園なんて……」[n]

[glink text="陽射しがあたたかいね" color="btn_07_black" width=500 x=400 y=100 target="*date1_select1"]
[glink text="何か小説のネタ、見つかった？" color="btn_07_black" width=500 x=400 y=200 target="*date1_select2"]
[glink text="子どもが遊んでるよ" color="btn_07_black" width=500 x=400 y=300 target="*date1_select3"]
[s]

;「陽射しがあたたかいね」[n]
;「何か小説のネタ、見つかった？」[n]
;「子どもが遊んでるよ」[n]

*date1_select1
;陽射しが～を選んだ場合
修介「俺には眩しくてしょうがないよ、まったくもう……」[n]
;ストレス＋５、好感度－５
[iscript]
f.stress += 5
f.koukando -= 5
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="-5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]


*date1_select2
;何か小説の～を選んだ場合
[chara_mod name="shusuke" face="odoroki"]
修介「ああ。確かに、公園ってのどかな日常を描くのにぴったりな舞台かもしれないな」[n]
[chara_mod name="shusuke" face="egao"]
修介「ありがとう、ちょっといい刺激になったかも」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

*date1_select3
;子供が～を選んだ場合
修介「そうだね。あ～あ、俺も子どもに戻りたいなぁ。そしたら自分がニートでワナビとかいう最悪の現実がなかったことになるのに」[n]
;ストレス＋５、好感度±0
[iscript]
f.stress += 5
f.koukando += 0
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"  ]
[ptext layer=2 text="+-0" x=318 y=89 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]






*date2
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="喫茶店.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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

;デートコマンド2回目
;背景：喫茶店
修介「……で、今日はなんで喫茶店なんかに俺を連れ出したの？」[n]
カンナ「美味しいコーヒーでも飲んだら頭がすっきりするかなって」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「……俺、コーヒー飲めないんだけど。苦いから」[n]
カンナ「それじゃあ紅茶とかもいいんじゃない？　ああ、大丈夫、お金は私が払うから」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「じゃあ紅茶で。……はぁ、コーヒーは飲めないわ、年下の女の子に奢らせるわ、ほんと俺情けない……」[n]

[glink text="しゃきっとせい！" color="btn_07_black" width=700 x=400 y=100 target="*date2_select1"]
[glink text="情けなくても小説が書ければ充分でしょ" color="btn_07_black" width=700 x=400 y=200 target="*date2_select2"]
[glink text="そういうところも修介くんの良いところだよ" color="btn_07_black" width=700 x=400 y=300 target="*date2_select3"]
[s]
;「しゃきっとせい！」[n]
;「情けなくても小説が書ければ充分でしょ」[n]
;「そういうところも修介くんの良いところだよ」[n]

*date2_select1
;「しゃきっとせい」[n]を選んだ場合
[chara_mod name="shusuke" face="urei"]
修介「わかってるって……このままの俺じゃダメだってさ」[n]
;ストレス＋５、好感度－５
[iscript]
f.stress += 5
f.koukando -= 5
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="-5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

*date2_select2
;情けなくても～を選んだ場合
[chara_mod name="shusuke" face="egao"]
修介「ははっ……そんなこと言ってくれるのなんてカンナちゃんぐらいだよ」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

*date2_select3
;そういうところも～を選んだ場合
[chara_mod name="shusuke" face="tameiki"]
修介「なんか馬鹿にされてない？……被害妄想か、これは」[n]
;ストレス＋５、好感度±０
[iscript]
f.stress += 5
f.koukando += 0
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+-0" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

*date3
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="道路.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;デート3回目
;道路
[chara_mod name="shusuke" face="odoroki"]
修介「おっと……」[n]
[chara_mod name="shusuke" face="tuuzyou"]
修介「そっち側歩いてると危ないよ。こっち来な」[n]
カンナ「修介くん、紳士的だね？」[n]
修介「紳士的っていうか、当たり前だろ。俺が車道側歩くのなんて」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「どうせ社会のゴミにすぎない俺なんか、君の盾になるぐらいのことしかできないんだからさ」[n]

[glink text="修介くんは社会のゴミなんかじゃないよ" color="btn_07_black" width=700 x=400 y=100 target="*date3_select1"]
[glink text="一言多いなぁ" color="btn_07_black" width=700 x=400 y=200 target="*date3_select2"]
[glink text="それじゃ、これからも私を守ってね？" color="btn_07_black" width=700 x=400 y=300 target="*date3_select3"]
[s]

;「修介くんは社会のゴミなんかじゃないよ……」[n]
;「一言多いなぁ……」[n]
;「それじゃ、これからも私を守ってね？」[n]

*date3_select1
;修介くんは～を選んだ場合
[chara_mod name="shusuke" face="urei"]
修介「ううん、客観的に見て、絶対に俺は社会のゴミだよ。それは変わらない」[n]
;ストレス＋５、好感度－５
[iscript]
f.stress += 5
f.koukando -= 5
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="-5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

*date3_select2
;一言多いなぁを選んだ場合
[chara_mod name="shusuke" face="urei"]
修介「……ごめんね。俺、もう自分を下げないとまともに喋れないんだ」[n]
;ストレス＋５、好感度±０
[iscript]
f.stress += 5
f.koukando += 0
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+-0" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

*date3_select3
;それじゃ～を選んだ場合
[chara_mod name="shusuke" face="zityouemi"]
修介「仰せのままに。お姫様」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.date += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]

*hanasi1
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;話を聞くコマンド—一回目
カンナ「何かお話ししようよ」[n]
;修介立ち絵
[chara_mod name="shusuke" face="tameiki"]
修介「話って……別に、話すことなんてないけど」[n]
カンナ「じゃあ、今書いてる小説の内容教えてよ」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「えぇ……まだ書いてる途中だし、あんま言うのも恥ずかしいんだけどな……」[n]
カンナ「……」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「……あー、わかった、話すから」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「高校生の、話だよ。高校生が部活に勉強に忙しい、ありきたりな青春モノ」[n]
カンナ「へぇ、意外。もっと暗い話かと思った」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「なにげに酷いこと言うね、君は」[n]
修介「小説の中でぐらい、青春したいんだよ、俺も。……いいからニヤニヤするのやめてってば」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.hanasi += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]


*hanasi2
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;話を聞く2回
カンナ「修介くんは、なんで小説を書いてるの？」[n]
;修介立ち絵
[chara_mod name="shusuke" face="tuuzyou"]
修介「君、前にも同じ質問してたよね。小学生の頃だったか」[n]
[chara_mod name="shusuke" face="urei"]
修介「……俺は、昔から変わらず、小説を書くっていうのは現実逃避の手段なんだ」[n]
修介「でもさ、やっぱり、楽しいから書いてるんだと思う。究極的には」[n]
修介「うまくいかなくて、何かが違うって、葛藤する時間もあるし、なんならその時間が大半を占めてるんだけどさ」[n]
[chara_mod name="shusuke" face="egao"]
修介「それでも、自分なりに納得できる表現とか、展開とか、そういうのがピタッとハマったら、すっごい気持ちいい。ドーパミンに溺れそうになる」[n]
[chara_mod name="shusuke" face="urei"]
修介「その”良い“って思ったものすら、出来上がって、他人に受け入れられなかったら結局は病むんだけどさ」[n]
[chara_mod name="shusuke" face="tuuzyou"]
修介「それでも、俺が俺の作品に納得できたその瞬間の高揚は確かなんだ」[n]
修介「そりゃ、俺の小説で誰かを救えたらって思わないこともないけど、でも、根本にあるのは、快感が欲しいからって言う、極めて原始的な欲求にすぎない」[n]
[chara_mod name="shusuke" face="zityouemi"]
修介「……馬鹿みたいだろ？　こんなのに縋って、人生めちゃくちゃにして、周りの人に迷惑かけてるんだよ」[n]
カンナ「……それでも私は、修介くんに小説書いてほしいよ」[n]
[chara_mod name="shusuke" face="urei"]
修介「……ありがとね。お世辞でも、そう言ってくれるだけで違うや」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.hanasi += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]


*hanasi3
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;話を聞くコマンド3回目
[chara_mod name="shusuke" face="tuuzyou"]
修介「……本当は、小説じゃなくてもいいのかもな」[n]
カンナ「どうしたの、いきなり」[n]
修介「いや、色々考えちゃってさ。俺は今まで、自分には小説しかないって思ってたけど、本当のところ、別に小説じゃなくてもいいんじゃないかって」[n]
[chara_mod name="shusuke" face="urei"]
修介「ただただ承認を得たいだけなんじゃないかって」[n]
修介「小説を書くだけで楽しいって本気で思えるなら、ただの趣味で良いはずなんだよ」[n]
修介「でも、俺のプライドが、有名になって、もっと多くの人から認められなきゃ意味がないって言ってるんだ」[n]
修介「本当にそれだけなら、別に小説じゃなくて何か別の……例えば動画配信とかでもいいんじゃないかって」[n]
カンナ「動画配信……まあ、それをやってみることで小説の幅も広がるかもしれないよね」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「簡単に言ってくれるなぁ……ま、本当に行き詰ったら候補としてやってみるのもアリかもね」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.hanasi += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]


*amayakasu1
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;甘やかすコマンド一回目
カンナ「修介くんはいつも頑張ってて、えらいね？」[n]
;修介立ち絵
[chara_mod name="shusuke" face="mesorasi"]
修介「何頭撫でてんの……やめてよ、良い大人を」[n]
[chara_mod name="shusuke" face="urei"]
修介「いや、他人様の家に寄生してる身分で大人なんて言えないか」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「あー、こういうこと言うから駄目なんだ俺は……５個も歳離れてる女の子に気使われるなんて、バカみたいだ」[n]

カンナ「気なんて使ってないよ。私がやりたいからこうしてるだけ」[n]
[chara_mod name="shusuke" face="zityouemi"]
修介「……変な趣味してるねぇ、君も」[n]
[iscript]
f.stress -= 10
f.koukando += 10
f.day += 1
f.amayakasu += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+10" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-10" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]


;ストレス－10、好感度＋10
*amayakasu2
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;甘やかすコマンド2回目
カンナ「修介くん、ちょっと疲れたんじゃない？」[n]
カンナ「ハーブティー淹れたんだけど、飲む？」[n]
修介「まぁ、ハーブティーなら……」[n]
カンナ「あ、あと、肩も凝ってるでしょ？　肩たたきでもしてあげようか？」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「なんか、至れり尽くせりだな……」[n]
[chara_mod name="shusuke" face="tuuzyou"]
修介「俺も何か君のためにできることとかない？」[n]
カンナ「あ、それなら夏休みの宿題やってほしい。まだ終わってないんだよね」[n]
[chara_mod name="shusuke" face="zityouemi"]
修介「宿題は自分でやらなきゃ力にならないぞ～……まあ、俺はろくでもない人間だから、宿題手伝うくらいならやるんだけどさ」[n]
カンナ「やった」[n]
修介「今回の小説が締め切りに間に合って、なおかつそのときに俺が覚えてたらね」[n]
カンナ「なかなか難しそうだな……」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「君、ナチュラルに失礼だよね」[n]
;ストレス－１０、好感度＋１０
[iscript]
f.stress -= 10
f.koukando += 10
f.day += 1
f.amayakasu += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+10" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-10" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]


*amayakasu3
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
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
;甘やかすコマンド3回目
カンナ「修介くん、ぎゅー」[n]
[chara_mod name="shusuke" face="odoroki"]
修介「……は？」[n]
カンナ「抱きしめてあげるよ、修介くんのこと」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「意味がわかんないし。成人した男が五歳も年下の女の子に抱きしめられるなんて情けない」[n]
カンナ「いいから、いいから」[n]
[chara_mod name="shusuke" face="odoroki"]
修介「え、ちょっと！」[n]
;抱きしめるＣＧ
[chara_move name="shusuke" width=1440 height=2560 left=-200]
[chara_mod name="shusuke" face="urei"]
修介「……まったく、何がしたいんだよ、君は……」[n]
カンナ「修介くん、泣いてる？」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「泣いてない！」[n]
修介「ただ、びっくりしたんだよ。……誰かに抱きしめられるなんて、本当に久しぶりだからさ」[n]
修介「ほんと、それだけ」[n]
;ストレス－１０、好感度＋１０
[iscript]
f.stress -= 10
f.koukando += 10
f.day += 1
f.amayakasu += 1
[endscript]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[endif]
[ptext layer=2 text="+10" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-10" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="kyoutuu.ks" target="*day2" cond="f.day === 2"]
[jump storage="kyoutuu.ks" target="*day3" cond="f.day === 3"]
[jump storage="kyoutuu.ks" target="*day4" cond="f.day === 4"]


;4日目以降
;進捗チェックコマンド一回目
*sintyokuA_1
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]

カンナ「どう？　小説は完成させられそう？」[n]
カンナ「修介くんなら、できるよね」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「……君は、他人にプレッシャーをかけるのがうまいね」[n]
カンナ「修介くんに、絶対小説を完成させてほしいから」[n]
修介「簡単に言ってくれるね、本当に」[n]
修介「わかるかな。君の反応次第で、俺はどうとでもなるんだよ」[n]
[chara_mod name="shusuke" face="urei"]
修介「君の反応が悪いと、それだけで死にたくなる」[n]
修介「……もういっそ、殺してくれよ」[n]
その言葉を聞いた瞬間、私の中で何かが弾けた。[n]
[mask effect="fadeIn"]
[chara_hide name="shusuke"]
[bg storage="首絞め.png"]
[mask_off]
;首絞めCG
修介「っぐ……、かはっ……」[n]
考えるより先に、私は修介くんの首を絞めていた。[n]
カンナ「本当にいいんだね？　殺しちゃっても」[n]
カンナ「もう小説書けなくなるよ、いいんだね？　それで」[n]
修介「ぅ……ぁぁ……」[n]
修介くんは息も絶え絶えになりながら、唇の動きだけで「いやだ」と言ってみせた。[n]
[bg storage="修介の部屋.png"]
その途端、私の手は修介くんの首から離れていた。[n]
[chara_show name="shusuke" face="odoroki" top=20 left=230]
;修介立ち絵
修介「かはっ……はぁっ……なんてことするんだ、君は！」[n]
カンナ「ご、ごめん……」[n]
自分でも、なんで修介くんの首を絞めるなんてことをしたのか、わからなかった。[n]
感じたことのない熱情が、指先を奔っている。[n]
[iscript]
f.stress += 10
f.koukando -= 5
f.day += 1
f.sintyokucheck += 1
f.sintyokucheckA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando < 0"]
[eval exp="f.koukando = 0"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="-5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+10" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

;デートコマンド一回目
*dateA_1
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
カンナ「修介くん、お買い物付き合ってよ」[n]
修介「何？　荷物持ち？　別にそのくらいするけど」[n]
カンナ「そういうのじゃなくて、とにかく、すぐ終わるから付き合ってよ」[n]

[if exp="f.sintyoku < 90"]
;進捗90％未満の場合
[chara_mod name="shusuke" face="mesorasi"] 
修介「まだ小説全然書き終わってないから焦らなきゃなんだけど……」[n]
カンナ「大丈夫、本当にちょっとだけだから」[n]
修介「……一時間以内に終わるんだろうな」[n]
カンナ「余裕だよ、ほら行こ」[n]
[else]
;進捗90％以上の場合

修介「まあ、そこそこ小説書けてきてはいるから、ちょっとぐらいなら……」[n]
カンナ「ホント？　それじゃあ行こ」[n]
[endif]

;共通
;背景：商店街
[bg storage="道路.png" time=1000]
カンナ「私が行きたかったのは、ここだよ」[n]
[chara_mod name="shusuke" face="odoroki"]
修介「……アクセサリー屋？」[n]
カンナ「お手頃だし、良い店でしょ？」[n]
カンナ「このペアリングが、欲しかったの」[n]
;ペアリングの画像
[chara_mod name="shusuke" face="tuuzyou"] 
修介「……一応聞くけど、なんでペアリング？」[n]
カンナ「修介くんとお揃いのやつを着けたくて」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「はぁ……なんでそんなカップルみたいなことしなきゃいけないんだよ」[n]

[glink text="カップルでもこんなことしないよ" color="btn_07_black" width=700 x=400 y=100 target="*dateA1_select1"]
[glink text="目に見える形の繋がりが欲しいから" color="btn_07_black" width=700 x=400 y=200 target="*dateA1_select2"]
[glink text="修介くんを私のにしたいから" color="btn_07_black" width=700 x=400 y=300 target="*dateA1_select3"]
[s]
;「カップルでもこんなことしないよ？」[n]
;「目に見える形の繋がりが欲しいからね」[n]
;「修介くんを私のにしたいから」[n]

*dateA1_select1
;カップルでも～を選んだ場合
修介「じゃあ、ますます俺たちがやる意味がわかんないじゃん」[n]
;ストレス＋５、好感度－５
[iscript]
f.stress += 5
f.koukando -= 5
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando < 0"]
[eval exp="f.koukando = 0"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="-5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]

[jump target="*dateA1_common"]
*dateA1_select2
;目に見える形の～を選んだ場合
[chara_mod name="shusuke" face="tameiki"]
修介「その発想がカップルみたいだって言ってるんだよ……はぁ」[n]
;ストレス＋５、好感度±０
[iscript]
f.stress += 5
f.koukando += 0
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando < 0"]
[eval exp="f.koukando = 0"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+-0" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]
[jump target="*dateA1_common"]
*dateA1_select3
;修介くんを～を選んだ場合
修介「ド直球の回答が来たな。……まぁ、回りくどい言い方よりは、いいんだけどさ」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+5" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*dateA1_common"]

*dateA1_common
;共通
[chara_mod name="shusuke" face="tuuzyou"]
修介「なんにせよ、別に買うのは君の自由だよ」[n]
修介「それを俺が着けるかどうかはわかんないけどさ」[n]
カンナ「じゃあ、貰ってくれるんだ？」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「……まあ、貰うだけなら」[n]
カンナ「やった」[n]
修介「あんまり調子に乗らないでよ？　本当に、貰うだけだから」[n]
カンナ「はぁい」[n]

[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*dateA_2
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="ゲーセン.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;デートコマンド二回目
;背景：ゲーセン
修介「……で、なんで今日はこんなところに俺を連れてきたの」[n]
カンナ「プリクラ撮ろうと思って」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「嫌だ。絶対嫌だ。今すぐ帰る」[n]
カンナ「冗談だよ、修介くん写真とか嫌でしょ」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「はぁ……ならなんのために俺を連れてきたんだよ」[n]
カンナ「ＵＦＯキャッチャーで欲しいぬいぐるみがあって」[n]
修介「……俺、そういうのすごい苦手なんだけど」[n]
カンナ「だよね。だから連れてきたんだよ」[n]
[chara_mod name="shusuke" face="odoroki"]
修介「はぁ？」[n]
カンナ「苦戦する修介くんが見たくて」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「趣味悪すぎるだろ」[n]
カンナ「うん。知ってる。それじゃあ三百円どうぞ」[n]
修介「三百円じゃ上手い人でもなかなか取れないよ……」[n]
[chara_hide name="shusuke"]
……[n]
[chara_show name="shusuke" top=20 left=230 face="tameiki"]
修介「あ～、全然掴めないし、そもそもこの台アーム弱すぎだろ……」[n]
カンナ「あれ、そういえば修介くん、よく見たら今日この前買ったリング着けてきてるね」[n]
[chara_mod name="shusuke" face="odoroki"]
修介「っ……！」[n]
カンナ「あ、また失敗。三百円使いきっちゃったね」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「……君がいきなり話しかけるからだろ」[n]

[glink text="だって、嬉しかったんだもん" color="btn_07_black" width=700 x=400 y=100 target="*dateA2_select1"]
[glink text="責任転嫁？" color="btn_07_black" width=700 x=400 y=200 target="*dateA2_select2"]
[glink text="ごめんごめん" color="btn_07_black" width=700 x=400 y=300 target="*dateA2_select3"]
[s]
;「だって、嬉しかったんだもん」[n]
;「責任転嫁？」[n]
;「ごめんて」[n]

*dateA2_select1
;だって～を選んだ場合
[chara_mod name="shusuke" face="tameiki"]
修介「はぁ……もう、しょうがないなぁ」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="-5" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*dateA2_select2
;責任転嫁？を選んだ場合
修介「責任も何も君が突然俺をゲーセンに連れてきてＵＦＯキャッチャーやらせたんでしょ」[n]
;ストレス＋５、好感度－５
[iscript]
f.stress += 5
f.koukando -= 5
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando < 0"]
[eval exp="f.koukando = 0"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="-5" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*dateA2_select3
;ごめんてを選んだ場合
修介「適当に謝らないでよ、まったく」[n]
;ストレス＋５、好感度±０
[iscript]
f.stress += 5
f.koukando += 0
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando < 0"]
[eval exp="f.koukando = 0"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+-0" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]
[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*dateA_3
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;デートコマンド3回目
カンナ「修介くん、お散歩行こ」[n]
修介「１０分だけね」[n]
カンナ「みじかっ。まあ締め切り直前だしね。気分転換程度で」[n]
[mask effect="fadeIn"]
[bg storage="河川敷.png" time=100]
[mask_off]
;画面暗転
;背景：河川敷

修介「……君さ、俺と関わってて楽しいの？」[n]
修介「俺、働いてないからろくなとこ連れてってあげられないし、作家気取りだから締め切りとかいうやつに追われて時間も取れないし」[n]
修介「俺といて、なんの得もないでしょ？」[n]

[glink text="修介くんはネガティブすぎるよ" color="btn_07_black" width=700 x=400 y=100 target="*dateA3_select1"]
[glink text="私は修介くんと一緒にいて楽しいよ" color="btn_07_black" width=700 x=400 y=200 target="*dateA3_select2"]
[glink text="損得なんて考えなくていいよ" color="btn_07_black" width=700 x=400 y=300 target="*dateA3_select3"]
[s]
;「修介くんはネガティブすぎるよ」[n]
;「私は修介くんと一緒にいて楽しいよ」[n]
;「損得なんて考えなくていいよ」[n]

*dateA3_select1
;修介くんは～を選んだ場合
[chara_mod name="shusuke" face="urei"]
修介「……知ってるよ。だから余計そう思うんだ」[n]
;ストレス＋５、好感度±０
[iscript]
f.stress += 5
f.koukando +-= 0
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando < 0"]
[eval exp="f.koukando = 0"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+-0" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]
[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*dateA3_select2
;私は～を選んだ場合
[chara_mod name="shusuke" face="mesorasi"]
修介「……そう。本当に、趣味悪いよね、君」[n]
;ストレス－５、好感度＋５
[iscript]
f.stress -= 5
f.koukando += 5
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+5" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*dateA3_select3
;損得なんて～を選んだ場合
[chara_mod name="shusuke" face="tameiki"]
修介「簡単に言ってくれるなぁ。考えないようにすることができたら、俺の人生、どれだけ楽だったんだろうね」[n]
;ストレス＋５、好感度－５
[iscript]
f.stress += 5
f.koukando -= 5
f.day += 1
f.date += 1
f.dateA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando < 0"]
[eval exp="f.koukando = 0"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="-5" x=318 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]
[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*hanasiA_1
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;話を聞くコマンド１回目
カンナ「そういえば、ベッドの上にこんなものがあったんだけど……」[n]
;女性ものの服の画像
[chara_mod name="shusuke" face="odoroki"]
修介「……それは、」[n]
カンナ「これって修介くんの？」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「……まあ」[n]
カンナ「修介くん、女装するの？」[n]
修介「……」[n]
カンナ「するんだ」[n]
修介「……母が、しろって言ったんだ」[n]
カンナ「お母さんが？」[n]
[chara_mod name="shusuke" face="urei"]
修介「そう。俺の母は、男嫌いだったから」[n]
修介「俺が小っちゃいころ、親父に捨てられたのがショックだったんだろうね」[n]
[chara_mod name="shusuke" face="tuuzyou"]
修介「そういうこともあって、小学生ぐらいまで女装させられてたんだ」[n]
修介「流石に第二次性徴が来てからは気持ち悪がってやんなくなったんだけどさ」[n]
修介「一応言っとくけど、母はすごく優しい人だったよ。優しすぎるからああなっちゃったんだろうね」[n]
カンナ「好きだったんだ、お母さんのこと」[n]
[chara_mod name="shusuke" face="urei"]
修介「うん……」[n]
修介「それで、たまにお母さんに会いたくなるとさ、女の子の格好をするんだ」[n]
修介「もう大人になって、似合いもしないのに、バカみたいだよな」[n]
カンナ「ええ、そうかな？　似合いそうだし見せてよ」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「ええ……やだよ」[n]
カンナ「……」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「ああもう、わかったよ、やればいいんでしょ、やれば」[n]
[mask effect="fadeIn" time=500]
[chara_hide name="shusuke"]
[bg storage="黒.png"]
[mask_off]
;暗転
……[n]
[bg storage="修介の部屋.png"]
[chara_show name="shusuke" face="josou" top=20 left=230]
;修介女装立ち絵
修介「ど、どう？」[n]
カンナ「すっごい可愛いよ！　似合ってる」[n]
修介「本当？　お世辞じゃないよね？」[n]
カンナ「うん。多分、みんな可愛いって言うよ」[n]
修介「みんな……そう、ふうん」[n]
;ストレス＋５、好感度＋５
[iscript]
f.stress += 5
f.koukando += 5
f.day += 1
f.hanasi += 1
f.hanasiA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]


[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]


*hanasiA_2
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_hide name="shusuke"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;話を聞くコマンド二回目
カンナ「あのさ、修介くん」[n]
[bg storage="女装自撮り.png" time=800]
カンナ「スマホ見てたらこんな写真流れてきたんだけど、これ、修介くん？」[n]
[bg storage="修介の部屋.png" time=800]
[chara_show name="shusuke" top=20 left=230 face="odoroki"]
;修介の女装自撮り画像
;修介驚き
修介「それは……」[n]
カンナ「やっぱり、修介くんなんだ」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「……」[n]
カンナ「一体、なんでこんな写真なんか」[n]
修介「……別に、個人の勝手だろ」[n]
カンナ「……そう」[n]
;ストレス＋５、好感度－５
[iscript]
f.stress += 5
f.koukando += 5
f.day += 1
f.hanasi += 1
f.hanasiA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]


[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]


*hanasiA_3
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;話を聞くコマンド３回目
カンナ「そういえば、今朝見たら女装アカウント消えてたね」[n]
修介「ああ。……なんか、よくよく考えたら虚しくなってさ」[n]
修介「馬鹿みたいだと思って、やめちゃった」[n]
カンナ「やっぱり、小説書いてる方がいいよ、修介くんは」[n]
[chara_mod name="shusuke" face="egao"]
修介「はは、そうかな」[n]
[jump target="*hanasiA_3_1" cond="f.sintyoku < 90"]
[jump target="*hanasiA_3_2" cond = "f.sintyoku >= 90"]

*hanasiA_3_1
;進捗90%未満の場合
[chara_mod name="shusuke" face="urei"]
修介「……まあ、今回の小説、書きあがりそうもないんだけどさ」[n]
[jump target="*hanasiA_3_common"]
*hanasiA_3_2
;進捗90％以上の場合
[chara_mod name="shusuke" face="tuuzyou"]
修介「あとは今回の小説がどうなるかだな……絶対に書き終えないと」[n]
[jump target="*hanasiA_3_common"]
;ストレス＋５、好感度＋５
*hanasiA_3_common
[iscript]
f.stress += 5
f.koukando += 5
f.day += 1
f.hanasi += 1
f.hanasiA  += 1
[endscript]

[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+5" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[wait time=2000]


[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]


*amayakasuA_1
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;甘やかすコマンド一回目
カンナ「修介くんは今日も頑張ってて偉いね」[n]
[chara_mod name="shusuke" face="mesorasi"]
修介「……別に、こんなの頑張ってるうちに入らないだろ」[n]
修介「他人様の家に寄生して、働きもせずに夢追い人やってるなんて、どう考えてもクズだよ」[n]
カンナ「それでも、頑張り続けられるって偉いよ」[n]
カンナ「修介くんはすごい」[n]
[chara_mod name="shusuke" face="urei"]
修介「……嘘くさいな」[n]
修介「本当は、そういう言葉を掛けて、俺を追い詰めようとしてるんでしょ」[n]
カンナ「うん」[n]
修介「あっさり肯定するなよ……」[n]
カンナ「だって、修介くんが大好きで、尊敬している気持ちには嘘なんてないんだもん」[n]
[chara_mod name="shusuke" face="egao"]
;修介頬染め目逸らし
修介「……あ、そう」[n]
;ストレス－１０，好感度＋１０
[iscript]
f.stress -= 10
f.koukando += 10
f.day += 1
f.amayakasu += 1
f.amayakasuA  += 1
[endscript]

[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+10" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-10" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[if exp="f.stress === 0"]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="0" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[else]
[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="stress" width="&f.stress" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[endif]
[wait time=2000]


[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*amayakasuA_2
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;甘やかすコマンド二回目
カンナ「修介くん、ちょっと休憩したら？」[n]
カンナ「昼寝するなら、膝枕でもしてあげるよ」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「膝枕って。そんな子どもじゃないんだからさ」[n]
カンナ「でも、本当は子どもに戻りたいんじゃない？　修介くんは」[n]
カンナ「ずっと一人で、大人みたいにお母さんを支えて、頑張ってきたんだもんね」[n]
[chara_mod name="shusuke" face="urei"]
修介「……」[n]
カンナ「素直になって、甘えちゃえばいいのに」[n]
修介「……そんなことしたら、君の思うつぼだろ」[n]
修介「俺はきっと、戻ってこれなくなっちゃう」[n]
カンナ「それでもいいじゃん」[n]
修介「……君は無責任にそういうこと言うよね」[n]
;ストレス－１０、好感度＋１０
[iscript]
f.stress -= 10
f.koukando += 10
f.day += 1
f.amayakasu += 1
f.amayakasuA  += 1
[endscript]

[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+10" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-10" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]


[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]

*amayakasuA_3
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[cm]
[position layer="message0" frame="frame.png" left=0 top=480 width=1280 height=240 page=fore visible=true]
[chara_move name="shusuke" left=230]
[chara_mod name="shusuke" face="tuuzyou"]
[bg storage="修介の部屋.png" time=0]
[image storage="../image/b.png" x=30 y=20 width=280 height=170 layer=1]
[layopt layer="2" visible="true"]
[image storage="../image/bar_base.png" layer=2 x=140 y=55 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=55 width="&f.sintyoku" height=17 name=sintyoku]
[image storage="../image/bar_base.png" layer=2 x=140 y=90 width=100 height=17]
[image storage="../image/bar_white.png" layer=2 x=140 y=90 width="&f.koukando" height=17 name="koukando"]
[image storage="../image/bar_base.png" layer=2 x=140 y=125 width=100 height=17]
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="0" height=17 name="stress"]
[else]
[image storage="../image/bar_white.png" layer=2 x=140 y=125 width="&f.stress" height=17 name="stress"]
[endif]
[ptext layer=2 text="進捗" y=55 x=79 size=17 ]
[ptext layer=2 text="好感度" y=90 x=70 size=17]
[ptext layer=2 text="ストレス" y=125 x=60 size=17]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=17 name="sintyoku_number"]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=17 name="koukando_number"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=17 name="stress_number"]
[mask_off]
;甘やかすコマンド３回目
カンナ「修介くん、何か差し入れでも買ってきてあげようか」[n]

修介「別にいいよ……」[n]
カンナ「って言われると思ったから先に買ってきたんだけど」[n]
[chara_mod name="shusuke" face="tameiki"]
修介「えぇ……じゃあなんで聞いたんだよ……」[n]
[chara_mod name="shusuke" face="odoroki"]
修介「って、わ、これ、俺の好きなガムだ」[n]
カンナ「修介くんガム好きでしょ？　小説書いてると口さみしくなるもんね」[n]
修介「まあ、そうだけど……よく見てるなホント」[n]
;ストレス－１０、好感度＋１０
[iscript]
f.stress -= 10
f.koukando += 10
f.day += 1
f.amayakasu += 1
f.amayakasuA  += 1
[endscript]

[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[if exp="f.koukando > 100"]
[eval exp="f.koukando = 100"]
[endif]


[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=50 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=85 width=60 height=30 layer=1]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1] 
[if exp="(f.koukando >= 70 || f.koukando <= 40) && (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando >= 70 || f.koukando <= 40) || (f.stress >= 70 || f.stress <= 40) && (f.sintyoku < 100)"]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=321 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <95)""]
[iscript]
f.sintyoku += 10
[endscript]
[ptext layer=2 text="+10" x=318 y=54 size=16 color="#000000"]
[elsif exp="(f.koukando < 70 || f.koukando > 40) && (f.stress < 70 || f.stress > 40 ) && (f.sintyoku <100)""]
[iscript]
f.sintyoku += 5
[endscript]
[ptext layer=2 text="+5" x=318 y=54 size=16 color="#000000"]
[else]
[iscript]
f.sintyoku += 0
[endscript]
[ptext layer=2 text="+-0" x=318 y=54 size=16 color="#000000"]
[endif]


[ptext layer=2 text="+10" x=321 y=89 size=16 color="#000000"  ]
[ptext layer=2 text="-10" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.sintyoku" y=55 x=260 size=16 name="sintyoku_number" overwrite=true]
[ptext layer=2 text="&f.koukando" y=90 x=260 size=16 name="koukando_number" overwrite=true]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]


[anim name="sintyoku" width="&f.sintyoku" time=1000]
[anim name="koukando" width="&f.koukando" time=1000]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]


[jump storage="Day5~.ks" target="*day5" cond="f.day === 5"]
[jump storage="Day5~.ks" target="*day6" cond="f.day === 6"]
[jump storage="Day5~.ks" target="*day7" cond="f.day === 7"]


