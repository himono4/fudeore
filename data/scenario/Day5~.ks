;scene3[n]
*start

[cm  ]
[clearfix]
[start_keyconfig]

[layopt layer="1" visible="true"]
[bg storage="黒.png" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=0 top=480 width=1280 height=240 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="65" marginl="40" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white"   size=30  x=200 y=500 shadow="#000000"]

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


*day5
;五日目
;ここからパラメーターによる会話分岐が発生
[fadeoutbgm time=1000]
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
[chara_hide name=shusuke time=10]
[bg storage="黒.png" time=10]
[mask_off]
[jump  storage="end.ks" target="*stressend" cond="f.stress === 100"]
[jump storage="end.ks" target="*kenjouend" cond="f.stress === 0"]
[jump target="*day5_A" cond="f.sintyoku < 85"]
[jump target="*day5_B" cond="f.sintyoku >= 85"]

*day5_A
[bg storage="修介の部屋.png" time=500]
;進捗８５％未満の場合
修介くんにご飯を運ぶため、部屋の扉を開ける。[n]
今日の修介くんは珍しくパソコンとは向き合わず、ひたすらに部屋中を歩き回っていた。[n]
カンナ「一体どうしたの？」[n]
;修介立ち絵
[chara_show name="shusuke" face="tameiki" top=20 left=230]
修介「思いつかないんだよ、全然！　次の展開も、登場人物がどう喋るのかも！」[n]
修介くんは苛立たしげに怒鳴る。[n]
[jump target="*day5_A_1" cond="f.stress < 50"]
[jump target="*day5_A_2" cond="f.stress >= 50"]

*day5_A_1
;ストレス５０未満の場合
しかし、怒鳴ってから、ふと我に返ったかのようにその場に立ち尽くす。
[chara_mod name="shusuke" face="urei"]
修介「……本当は、もうやめた方がいいんだろうな」[n]
修介「結局俺はこの程度で折れるほどの才能でしかないんだよ」[n]
修介「こんな惨めな姿を君に見せるぐらいなら、いっそ潔く全部諦めて、普通の生活というやつをやろうとした方がいいんだよ、絶対」[n]
修介「今の俺なら、なんとかできちゃう気がする」[n]
修介「……君は、そんな俺は嫌だろうけど」[n]

[glink text="働きながらでも小説は書けるよ" color="btn_07_black" width=700 x=400 y=100 target="*day5_A_1_select1"]
[glink text="苦しいなら一旦辞めてみても良いと思う" color="btn_07_black" width=700 x=400 y=200 target="*day5_A_1_select2"]
[glink text="……そうだね" color="btn_07_black" width=700 x=400 y=300 target="*day5_A_1_select3"]
[s]
;「働きながらでも小説は書けるよ」[n]
;「苦しいなら、一旦やめてみてもいいと思う」[n]
;「……そうだね」[n]

*day5_A_1_select1
;「働きながらでも～」[n]を選んだ場合
修介「よくそう言うよね。……俺にそんな器用なことできるか、わかんないけど」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_A_1_select2
;苦しいなら～を選んだ場合
修介「思ってもないくせに、よく言うよね、ホント」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_A_1_select3
;……そうだねを選んだ場合
修介「はは、やっぱりそうだよね。……俺もそんな俺、嫌だよ」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]
[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_A_2
;ストレス５０以上の場合
修介「もう締め切りまであと二日しかないのに……何か、何か書かなきゃ、なんでもいいから、なにか」[n]
ぶつぶつと呟きながら修介くんは血が出そうになるくらい強く爪を噛み始める。
カンナ「修介くん、駄目だよ、タイピングするんだから指は大事にしないと」[n]

[jump target="*day5_A_koukando60under" cond="f.kouokando < 60"]
[jump target="*day5_A_koukando60over" cond="f.koukando >= 60"]

*day5_A_koukando60under
;好感度６０未満の場合
修介「そんなのわかってるよ」[n]
修介「でも痛みがないとダメなんだ。何も思いつけない、バカな俺を罰さないとやってけないんだ」[n]
修介「君だって、どんなに耳あたりの良いことを言ってても、小説の書けない俺には用なんてないんでしょ？」[n]

[glink text="小説書けない修介くんも好きだよ" color="btn_07_black" width=700 x=400 y=100 target="*day5_A_2_1_select1"]
[glink text="どんな理由でも、自分を傷つけるのはよくないよ" color="btn_07_black" width=700 x=400 y=200 target="*day5_A_2_1_select2"]
[glink text="そうだね、修介くんには小説を書いてほしい" color="btn_07_black" width=700 x=400 y=300 target="*day5_A_2_1_select3"]
[s]
;「小説を書けない修介くんも好きだよ」[n]
;「どんな理由でも、自分を傷つけるのはよくないよ」[n]
;「そうだね、修介くんには小説を書いてほしい」[n]

*day5_A_2_1_select1
;「小説を書けない～」[n]を選んだ場合
修介「……それって多分、小説書けなくて苦しんでる俺が好きなんだよね。君にとっては」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_A_2_1_select2
;どんな理由でも～を選んだ場合
修介「知ったようなこと言うなよ。今更いい子ぶったって、もう遅いんだしさ」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_A_2_1_select3
;そうだね～を選んだ場合
修介「やっぱり、そうなんだろ。……俺も、そう思うよ。書くしかないんだ、結局」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_A_koukando60over
;好感度60以上の場合
修介「……そうだね。本当に、そうだ」[n]
修介「でも、このままじゃ君の期待に応えられない」[n]
[glink text="小説書けない修介くんも好きだよ" color="btn_07_black" width=700 x=400 y=100 target="*day5_A_2_2_select1"]
[glink text="どんな理由でも、自分を傷つけるのはよくないよ" color="btn_07_black" width=700 x=400 y=200 target="*day5_A_2_2_select2"]
[glink text="そうだね、修介くんには小説を書いてほしい" color="btn_07_black" width=700 x=400 y=300 target="*day5_A_2_2_select3"]
[s]
;選択肢は好感度６０未満と同じ

*day5_A_2_2_select1

;小説を書けない～を選んだ場合
修介「本当？　……多分、嘘だよな。……本当なら、縋りたくなるから、信じないでおく」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]


*day5_A_2_2_select2
;どんな理由でも～を選んだ場合
修介「気使ってるつもり？　そういうの、余計きついよ」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]


*day5_A_2_2_select3
;そうだね～を選んだ場合
修介「やっぱり、そうだよね。……どんな俺も肯定してくれるわけじゃ、ないもんな」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]


*day5_B
;進捗８５％以上の場合
[bg storage="修介の部屋.png"]
修介くんにご飯を運ぶため、部屋の扉を開ける。[n]
修介くんは今日も変わらず、パソコンと必死に向かい合っている。[n]
カンナ「修介くん、ご飯持ってきたよ。食べよう？」[n]
[jump target="*day5_B_1" cond="f.koukando >= 50"]
[jump target="*day5_B_2" cond="f.koukando < 50"]

*day5_B_1
;好感度５０以上の場合
声を掛けると、修介くんは手を止める。[n]
[chara_show name="shusuke" face="tuuzyou" top=20 left=230]
修介「……うん、そうだね」[n]
カンナ「今日のご飯は卵雑炊なんだけど、それなら食べられそう？」[n]
修介「多分。消化によさそうだし」[n]
カンナ「それじゃあ食べちゃおう。私も自分のぶん、持ってきたから」[n]
修介「……君、結構献身的だよね。その動機はひどいもんだけど」[n]
カンナ「ファンですから、腐っても」[n]
そんなことを話しながら、トレーの上に乗っかった雑炊を二人で食べる。[n]
カンナ「修介くん、今日はちゃんと寝れた？」[n]
[jump target="*day5_B_1_1" cond="f.stress >= 80"]
[jump target="*day5_B_1_2" cond="f.stress < 80"]
*day5_B_1_1
;ストレス８０以上の場合
修介「あんまり」[n]
修介「……ちゃんと書けてるはずなのに、何かが引っかかって。何度も書き直してたら、朝になってた」[n]
修介「……こんなんじゃ、小説を職業になんてできないよな」[n]

[glink text="それだけこだわりがあるってことだよ" color="btn_07_black" width=700 x=400 y=100 target="*day5_B_1_1_select1"]
[glink text="先のことを考えても仕方ないよ" color="btn_07_black" width=700 x=400 y=200 target="*day5_B_1_1_select2"]
[glink text="それでも書き続けるだけだよ" color="btn_07_black" width=700 x=400 y=300 target="*day5_B_1_1_select3"]
[s]
;「それだけこだわりがあるってことだよ」[n]
;「先のことを考えても仕方ないよ」[n]
;「それでも書き続けるだけだよ」[n]

*day5_B_1_1_select1
;それだけ～を選んだ場合
修介「こだわりなんて高尚なもんじゃないよ。ただ、発想力が貧困で、まともなことが思いつけないだけだ」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_B_1_1_select2
;先のことを～を選んだ場合
修介「そんなこと言ったって、考えなきゃいけないんだよ……ずっとこのままでいるわけには、いかないんだからさ」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_B_1_1_select3
;それでも～を選んだ場合
修介「そうだよね。……うん、がんばらないと」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_B_1_2
;ストレス８０未満の場合
修介「今日は寝れたよ、なんとか」[n]
修介「なんだかんだ、ちゃんと寝た方が良いものは書きやすい……と思う」[n]
修介「まあ、俺が良いものを書いたことなんてないんだけど」[n]

[glink text="修介くんは良い作品を書いてるよ" color="btn_07_black" width=700 x=400 y=100 target="*day5_B_1_2_select1"]
[glink text="良いものの定義なんて誰にもわからないよ" color="btn_07_black" width=700 x=400 y=200 target="*day5_B_1_2_select2"]
[glink text="なんにせよ、ちゃんと寝れてるならよかった" color="btn_07_black" width=700 x=400 y=300 target="*day5_B_1_2_select3"]
[s]

;「修介くんは良い作品を書いてるよ」[n]
;「良いものの定義なんて誰にもわからないよ」[n]
;「なんにせよ、ちゃんと寝れてるならよかった」[n]
*day5_B_1_2_select1
;修介くんは～を選んだ場合
修介「そういうのも、全部嘘に聞こえちゃうけどな……まあでも、そんな風に思ってもないと、雑炊なんて作ってくれないか」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_B_1_2_select2
;良いものの～を選んだ場合
修介「俺だってずっとそう思ってここまでやってきたよ。……でももう、自分の感覚を信じられないんだ」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_B_1_2_select3
;なんにせよ～を選んだ場合
修介「ついにスルーしてくるようになったな……まあ、ヘラる俺が悪いんだけどさ」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_B_2
;好感度５０未満の場合
修介「……」[n]
声を掛けても、修介くんは画面に釘付けになっている。
カンナ「修介くん、ご飯だよ。卵雑炊、食べられそう？」[n]
修介「……あとで食べとくから。置いといて」[n]
カンナ「でも、冷めちゃうよ」[n]
修介「別に……」[n]
必要最低限の返事しかしてくれない。
まるで外界の情報をシャットアウトしているかのように。

[glink text="せっかく作ったのに……" color="btn_07_black" width=700 x=400 y=100 target="*day5_B_2_select1"]
[glink text="ちゃんと後で食べてね" color="btn_07_black" width=700 x=400 y=200 target="*day5_B_2_select2"]
[glink text="せめてこっち向きなよ" color="btn_07_black" width=700 x=400 y=300 target="*day5_B_2_select3"]
[s]
;「せっかく作ったのに……」[n]
;「ちゃんと後で食べてね」[n]
;「せめてこっち向きなよ」[n]

*day5_B_2_select1
;せっかく～を選んだ場合
修介「……ごめん。でも、今は食べられない」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_B_2_select2
;ちゃんと～を選んだ場合
修介「わかった。……迷惑かけるね」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day5_command_gamen"]

*day5_B_2_select3
;せめて～を選んだ場合
修介「……」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[anim name="stress" width="&f.stress" time=1000]
[wait time=2000]
[jump target="*day5_command_gamen"]


*day5_command_gamen
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[position layer="message0" frame="frame.png" left=0 top=550 width=1280 height=200  page=fore visible=false]
[bg storage="コマンド画面背景.jpg"]
[chara_move name="shusuke" left=0]
[chara_mod name="shusuke" face="tuuzyou"]
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
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=950 y=170 width="0" height=20 ]
[else]
[image storage="../image/bar_white.png" layer=2 x=950 y=170 width="&f.stress*1.4" height=20 ]
[endif]

[ptext layer=2 text="進捗" y=70 x=860 size=21 ]
[ptext layer=2 text="好感度" y=120 x=850 size=21]
[ptext layer=2 text="ストレス" y=170 x=840 size=21]
[ptext layer=2 text="&f.sintyoku" y=70 x=1120 size=23]
[ptext layer=2 text="&f.koukando" y=120 x=1120 size=23]
[ptext layer=2 text="&f.stress" y=170 x=1120 size=23]
[ptext layer=2 text="&'Day'+f.day" y=55 x=100 size=50 edge="2px #1e1e1e" ]
[mask_off]
[playbgm storage="夜の病室エレクトロ.mp3"]
*day5_command

[button graphic="お出かけ.png"  target="*day5_date" x=1000 y=250  width=192 height=120 enterimg="お出かけ2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="お出かけ.png"  ]
[button graphic="甘やかす.png"  target="*day5_amayakasu" x=800 y=400 width=192 height=120 enterimg="甘やかす2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="甘やかす.png" ]
[button graphic="話を聞く.png"  target="*day5_hanasi" x=800 y=250 width=192 height=120 enterimg="話を聞く2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="話を聞く.png" ]
[button graphic="進捗チェック.png"   target="*day5_sintyoku" x=1000 y=400 width=192 height=120 enterimg="進捗チェック2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="進捗チェック.png" ]
[s]

*day5_date
修介くんを外に連れ出します　（ストレス? 好感度?）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい"  target="*day5_date2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day5_command" width=300 x=50 y=400]
[s]

*day5_date2
[jump storage="end.ks" target="*dateend" cond="f.date === 4"]
[jump storage="command.ks" target="*dateA_1" cond="f.dateA === 0"]
[jump storage="command.ks" target="*dateA_2" cond="f.dateA === 1"]

*day5_amayakasu
修介くんを甘やかします　（ストレス↓↓　好感度↑↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" target="*day5_amayakasu2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day5_command" width=300 x=50 y=400]
[s]

*day5_amayakasu2
[jump storage="end.ks" target="*amayakasuend" cond="f.amayakasu === 4"]
[jump storage="command.ks" target="*amayakasuA_1" cond="f.amayakasuA === 0"]
[jump storage="command.ks" target="*amayakasuA_2" cond="f.amayakasuA === 1"]

*day5_hanasi
修介くんの話を聞きます　（ストレス↑　好感度↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい"  target="*day5_hanasi2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day5_command" width=300 x=50 y=400]
[s]

*day5_hanasi2
[jump storage="end.ks" target="*josouend" cond="f.hanasi === 4"]
[jump storage="command.ks" target="*hanasiA_1" cond="f.hanasiA === 0"]
[jump storage="command.ks" target="*hanasiA_2" cond="f.hanasiA === 1"]

*day5_sintyoku
進捗チェックをして修介くんを詰めます　（ストレス↑↑　好感度↓↓）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" target="*day5_sintyoku2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day5_command" width=300 x=50 y=400]
[s]

*day5_sintyoku2

[jump storage="end.ks" target="*bouryokuend" cond="f.sintyokucheck === 4"]
[jump storage="command.ks" target="*sintyokuA_1" cond="f.sintyokucheckA === 0"]
[jump storage="end.ks" target="*bouryokuend" cond="f.sintyokucheckA === 1"]



*day6
[fadeoutbgm time=1000]
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
[chara_hide name=shusuke time=10]
[bg storage="黒.png" time=10]
[mask_off]
[jump  storage="end.ks" target="*stressend" cond="f.stress === 100"]
[jump storage="end.ks" target="*kenjouend" cond="f.stress === 0"]
[jump target="*day6_A" cond="f.sintyoku < 90"]
[jump target="*day6_B" cond="f.sintyoku >= 90"]

*day6_A
[bg storage="修介の部屋.png" time=800]
;六日目
;進捗９０％未満の場合
いつも通り修介くんの部屋の扉を開ける。
修介くんはパソコンも開かず、ただ、部屋の隅にうずくまり、何かをぶつぶつと呟いていた。
カンナ「……修介くん？」[n]
声を掛けると、修介くんは顔を上げる。[n]
[chara_show name="shusuke" face="tuuzyou" top=20 left=230]
修介「……ああ、なんだ、君か」[n]
カンナ「どうしたの、一体」[n]
カンナ「小説は、書かないの？」[n]
[jump target="*day6_A_1" cond="f.stress < 50"]
[jump target="*day6_A_2" cond="f.stress >= 50"]
*day6_A_1
;ストレス５０未満
[chara_mod name="shusuke" face="urei"]
修介「……考えてたんだ、これからどうするか」[n]
修介「もう、小説書き終わんないかもしれないから」[n]
修介「どうやって社会復帰しようかとか、とりあえずはそんなことを」[n]
修介「……現実に向き合ってるように見えて、これも立派な逃避だよな」[n]

[glink text="小説書くの、やめるの？" color="btn_07_black" width=700 x=400 y=100 target="*day6_A_1_select1"]
[glink text="修介くんはそれでいいの？" color="btn_07_black" width=700 x=400 y=200 target="*day6_A_1_select2"]
[glink text="修介くんは社会でうまくやっていけないと思う" color="btn_07_black" width=700 x=400 y=300 target="*day6_A_1_select3"]
[s]
;「小説書くの、やめるの？」[n]
;「修介くんは、それでいいの？」[n]
;「修介くんは、社会でうまくやってけないと思う」[n]

*day6_A_1_select1
;小説書くの～を選んだ場合
修介「やめはしないんじゃないかな。多分。働きながら小説書いたり、できたらいいんだけどね」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_A_1_select2
;修介くんはそれで～を選んだ場合
修介「もう、選べる立場じゃないんだよ、俺は。……君がそうやって聞いてくれると、自分の気持ちを思い出せるんだけどさ」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_A_1_select3
;修介くんは社会で～を選んだ場合
修介「ひどいなぁ。……仮にうまくやってけないとしても、もう俺にはちゃんと生きる以外の選択肢なんてないんだよ」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_A_2
;ストレス５０以上
[chara_mod name="shusuke" face="urei"]
修介「……書けないんだよ、何も」[n]
修介「このままだと絶対間に合わないのに。全然面白くもなんともないことしか書けないし、文章力もどんどん下がってる！」[n]
修介「こんなん、誰かに見せられるわけないよ」[n]
カンナ「でも、私は修介くんの小説が読みたいよ」[n]
[jump target="*day6_A_2_1" cond="f.koukando >= 60"]
[jump target="*day6_A_2_2" cond="f.koukando < 60"]

*day6_A_2_1
;好感度６０以上の場合
修介「……ひどいやつだよね、君は」[n]
修介「騙されてるだけだってわかってるのに、そういうこと言われると、まだ全然、嬉しいんだよ、俺」[n]

[glink text="小説が読みたいのは本当だよ" color="btn_07_black" width=700 x=400 y=100 target="*day6_A_2_1_select1"]
[glink text="騙してなんかないよ" color="btn_07_black" width=700 x=400 y=200 target="*day6_A_2_1_select2"]
[glink text="騙されてた方が幸せだよ、きっと" color="btn_07_black" width=700 x=400 y=300 target="*day6_A_2_1_select3"]
[s]
;「小説が読みたいのは本当だよ」[n]
;「騙してなんかないよ」[n]
;「騙されてた方が幸せだよ、きっと」[n]

*day6_A_2_1_select1
;小説が～を選んだ場合
修介「本当かよ。……きっと、今の俺が書いたものを読んだら、軽蔑すると思うよ、君は」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]
*day6_2_1_select2
;騙してなんか～を選んだ場合
修介「騙してるだろ。いい加減、認めなよ」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]
*day6_A_2_1_select3
;騙されてた方が～を選んだ場合
修介「はは、君が言うことかよ、それ。……そこまで言うなら、ちゃんと、責任とってよね」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]
*day6_A_2_2
;好感度６０未満の場合
修介「そんなこと言うけど、きっと君は、今の俺が書いたものを読んだら、すぐに掌を返すと思うよ」[n]
修介「……そんなことになるぐらいなら、もういっそ、俺に関わらないでほしい」[n]

[glink text="私は修介くんを裏切るなんてしないよ" color="btn_07_black" width=700 x=400 y=100 target="*day6_A_2_2_select1"]
[glink text="修介くんは臆病だね" color="btn_07_black" width=700 x=400 y=200 target="*day6_A_2_2_select2"]
[glink text="でも、本当に関わりを断ったら苦しむんでしょ？" color="btn_07_black" width=700 x=400 y=300 target="*day6_A_2_2_select3"]
[s]
;「私は修介くんを裏切るなんてしないよ」[n]
;「修介くんは臆病だね」[n]
;「でも、本当に関わりを断ったら苦しむんでしょ？」[n]

*day6_A_2_2_select1
;私は～を選んだ場合
修介「確証もないのにそういうこと言わないでよね……」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]
*day6_A_2_2_select2
;修介くんは～を選んだ場合
修介「知ってるよ。君に言われなくてもね」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]
*day6_A_2_2_select3
;でも～を選んだ場合
修介「その通りだよ。よくわかってるね。……だから、関係性を断つなら、俺からじゃないといけないんだ」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B
[bg storage="廊下.png" time=800]
;進捗９０％以上の場合
今日も修介くんにご飯を運ぶ。[n]
[bg storage="CG_パソコン.png" time=800]
いつも通り部屋の扉を開くと、修介くんは、やっぱりいつも通り、パソコンとひたすらに向き合っていた。[n]
最後の追い込みをかけているのだろう。[n]
カンナ「修介くん、ご飯持ってきたよ」[n]
[jump target="*day6_B_1" cond="f.koukando < 50"]
[jump target="*day6_B_2" cond="f.koukando >= 50"]

*day6_B_1
;好感度５０未満の場合
声を掛けても返事がない。[n]
カンナ「修介くんってば」[n]
修介「……ん、ああ、ごめん、何？」[n]
肩をゆすると、ようやく反応してくれた。[n]
カンナ「ご飯。持ってきたよ。食べる？」[n]
修介「あー……うん」[n]
と、返事しながらも、再びパソコンの画面に戻る。[n]
カンナ「ちょっと、修介くん？」[n]
[bg storage="修介の部屋.png" time=800]
[chara_show name="shusuke" top=20 left=230]
修介「……いや、ごめんごめん。なんか、自分がどこにいるのかわかんなくなって」[n]
修介「どっちが現実だか、曖昧なんだ。小説の中か、この部屋の中か」[n]

[glink text="ちょっと休んだ方がいいんじゃない？" color="btn_07_black" width=700 x=400 y=100 target="*day6_B_1_select1"]
[glink text="残念ながら、こっちが現実だよ" color="btn_07_black" width=700 x=400 y=200 target="*day6_B_1_select2"]
[glink text="小説の中の方が、居心地良いんだ" color="btn_07_black" width=700 x=400 y=300 target="*day6_B_1_select3"]
[s]
;「ちょっと休んだ方がいいんじゃない？」[n]
;「残念ながら、こっちが現実だよ」[n]
;「小説の中の方が、居心地良いんだ」[n]

*day6_B_1_select1
;ちょっと～を選んだ場合
修介「いいんだ。小説書いてる方が休んでる気がする」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B_1_select2
;残念ながら～を選んだ場合
[chara_mod name="shusuke" face="urei"]
修介「そっか……そうだよね……」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B_1_select3

;小説の～を選んだ場合
修介「そうだね。……きっと俺は、向こう側の世界に行きたいんだろうな」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B_2
;好感度５０以上の場合
[bg storage="修介の部屋.png" time=800]
[chara_show name="shusuke" top=20 left=230]
修介「ありがとう。毎回、迷惑かけるね」[n]
カンナ「いいんだよ、変なファンに粘着されてることのお詫びってことで」[n]
[chara_mod name="shusuke" face="egao"]
修介「確かに、君は変なファンだ」[n]
言いながら、修介くんは私の作ったスープを口にする。[n]
修介「……もし君が悪意を持っていたら、食事に毒を入れることだって可能だよね」[n]
カンナ「疑われてる？」[n]
[jump target="*day6_B_2_1" cond="f.stress >= 80"]
[jump target="*day6_B_2_2" cond="f.stress < 80"]

*day6_B_2_1
;ストレス８０以上の場合
[chara_mod name="shusuke" face="urei"]
修介「……殺されたっておかしくないから、俺は」[n]
修介「俺は、しょせん人間のクズだもん」[n]
修介「君の納得する小説が書けなかったら捨てられて終わりだよ」[n]

[glink text="修介くんはクズじゃないよ" color="btn_07_black" width=700 x=400 y=100 target="*day6_B_2_1_select1"]
[glink text="それなら、私の納得する小説を書くまでだよ" color="btn_07_black" width=700 x=400 y=200 target="*day6_B_2_1_select2"]
[glink text="私のことよりまず自分が納得できるかを考えて" color="btn_07_black" width=700 x=400 y=300 target="*day6_B_2_1_select3"]
[s]

;「修介くんはクズじゃないよ」[n]
;「それなら、私の納得する小説を書くまでだよ」[n]
;「私のことより、まず自分が納得できるかを考えて」[n]

*day6_B_2_1_select1
;修介くんは～を選んだ場合
修介「ううん、クズだよ。もう、中途半端な慰めはやめて」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B_2_1_select2
;それなら～を選んだ場合
修介「そうだね……でも、それができているかどうか、常に不安なんだよ」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B_2_1_select3
;私のことより～を選んだ場合
修介「ああ、確かにそうだね。……もともと、自分のために始めたことなんだ。自分一番で考えなくてどうするんだって話だよね」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B_2_2
;ストレス８０未満の場合
[chara_mod name="shusuke" face="tuuzyou"]
修介「いいや」[n]
修介「少なくとも、今の君はそんなことしない」[n]
修介「そう思えるぐらいの判断力はまだ残ってるよ」[n]
[chara_mod name="shusuke" face="zityouemi"]
修介「でも、アイデアとしては面白いかもね。給餌係がスープで毒殺」[n]
カンナ「給餌係って」[n]
修介「家畜みたいなものだろ、今の俺は」[n]
修介「パッとしない小説家志望を完璧に演じ切って、君の飢えを満たしてる」[n]
[chara_mod name="shusuke" face="urei"]
修介「……よく手懐けたね、本当に」[n]

[glink text="修介くんが欲しかったから" color="btn_07_black" width=700 x=400 y=100 target="*day6_B_2_2_select1"]
[glink text="修介くんは満足してるの？" color="btn_07_black" width=700 x=400 y=200 target="*day6_B_2_2_select2"]
[glink text="私は手懐けた覚えなんてないけど" color="btn_07_black" width=700 x=400 y=300 target="*day6_B_2_2_select3"]
[s]
;「修介くんが、欲しかったから」[n]
;「修介くんは、満足してるの？」[n]
;「私は手懐けた覚えなんてないけど」[n]

*day6_B_2_2_select1
;修介くんが～を選んだ場合
[chara_mod name="shusuke" face="egao"]
修介「そう。それなら本当にうまくやったよ。もう俺は、君のものになっちゃった」[n]
;ストレス－５
[iscript]
f.stress -= 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="-5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B_2_2_select2
;修介くんは～を選んだ場合
修介「さあ、どうだろう。もうわかんないや」[n]
;ストレス±０
[iscript]
f.stress += 0
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+-0" x=318 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_B_2_2_select3
;私は手懐けた～を選んだ場合
[chara_mod name="shusuke" face="zityouemi"]
修介「はは、そっか。……俺が勝手に君の期待通りに動いてるだけだもんなぁ」[n]
;ストレス＋５
[iscript]
f.stress += 5
[endscript]
[if exp="f.stress > 100"]
[eval exp="f.stress = 100"]
[endif]
[if exp="f.stress < 0"]
[eval exp="f.stress = 0"]
[endif]

[playse storage="データ表示1.mp3"]
[image storage="../image/吹き出し.png" x=300 y=120 width=60 height=30 layer=1]
[ptext layer=2 text="+5" x=321 y=124 size=16 color="#000000"]
[ptext layer=2 text="&f.stress" y=125 x=260 size=16 name="stress_number" overwrite=true]
[if exp="f.stress === 0"]
[anim name="stress" width="0" time=1000]
[else]
[anim name="stress" width="&f.stress" time=1000]
[endif]
[wait time=2000]
[jump target="*day6_command_gamen"]

*day6_command_gamen
[mask effect="fadeIn" time=100]
[freeimage layer=1]
[freeimage layer=2]
[position layer="message0" frame="frame.png" left=0 top=550 width=1280 height=200  page=fore visible=false]
[bg storage="コマンド画面背景.jpg"]
[chara_move name="shusuke" left=0]
[chara_mod name="shusuke" face="tuuzyou"]
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
[if exp="f.stress === 0"]
[image storage="../image/bar_white.png" layer=2 x=950 y=170 width="0" height=20 ]
[else]
[image storage="../image/bar_white.png" layer=2 x=950 y=170 width="&f.stress*1.4" height=20 ]
[endif]

[ptext layer=2 text="進捗" y=70 x=860 size=21 ]
[ptext layer=2 text="好感度" y=120 x=850 size=21]
[ptext layer=2 text="ストレス" y=170 x=840 size=21]
[ptext layer=2 text="&f.sintyoku" y=70 x=1120 size=23]
[ptext layer=2 text="&f.koukando" y=120 x=1120 size=23]
[ptext layer=2 text="&f.stress" y=170 x=1120 size=23]
[ptext layer=2 text="&'Day'+f.day" y=55 x=100 size=50 edge="2px #1e1e1e" ]
[mask_off]
[playbgm storage="夜の病室エレクトロ.mp3"]
*day6_command

[button graphic="お出かけ.png"  target="*day6_date" x=1000 y=250  width=192 height=120 enterimg="お出かけ2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="お出かけ.png"  ]
[button graphic="甘やかす.png"  target="*day6_amayakasu" x=800 y=400 width=192 height=120 enterimg="甘やかす2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="甘やかす.png" ]
[button graphic="話を聞く.png"  target="*day6_hanasi" x=800 y=250 width=192 height=120 enterimg="話を聞く2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="話を聞く.png" ]
[button graphic="進捗チェック.png"   target="*day6_sintyoku" x=1000 y=400 width=192 height=120 enterimg="進捗チェック2.png" clickse="決定ボタンを押す7.mp3" enterse="カーソル移動12.mp3" clickimg="進捗チェック.png" ]
[s]

*day6_date
修介くんを外に連れ出します　（ストレス? 好感度?）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい"  target="*day6_date2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day6_command" width=300 x=50 y=400]
[s]

*day6_date2
[jump storage="end.ks" target="*dateend" cond="f.date === 4"]
[jump storage="command.ks" target="*dateA_1" cond="f.dateA === 0"]
[jump storage="command.ks" target="*dateA_2" cond="f.dateA === 1"]
[jump storage="command.ks" target="*dateA_3" cond="f.dateA === 2"]


*day6_amayakasu
修介くんを甘やかします　（ストレス↓↓　好感度↑↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" target="*day6_amayakasu2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day6_command" width=300 x=50 y=400]
[s]

*day6_amayakasu2
[jump storage="end.ks" target="*amayakasuend" cond="f.amayakasu === 4"]
[jump storage="command.ks" target="*amayakasuA_1" cond="f.amayakasuA === 0"]
[jump storage="command.ks" target="*amayakasuA_2" cond="f.amayakasuA === 1"]
[jump storage="command.ks" target="*amayakasuA_3" cond="f.amayakasuA === 2"]


*day6_hanasi
修介くんの話を聞きます　（ストレス↑　好感度↑）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい"  target="*day6_hanasi2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day6_command" width=300 x=50 y=400]
[s]

*day6_hanasi2
[jump storage="end.ks" target="*josouend" cond="f.hanasi === 4"]
[jump storage="command.ks" target="*hanasiA_1" cond="f.hanasiA === 0"]
[jump storage="command.ks" target="*hanasiA_2" cond="f.hanasiA === 1"]
[jump storage="command.ks" target="*hanasiA_3" cond="f.hanasiA === 2"]


*day6_sintyoku
進捗チェックをして修介くんを詰めます　（ストレス↑↑　好感度↓↓）[n]
コマンドを実行しますか？[n]
[glink color="btn_07_black" text="はい" target="*day6_sintyoku2" width=300  x=50 y=300 ]
[glink color="btn_07_black" text="いいえ" target="*day6_command" width=300 x=50 y=400]
[s]

*day6_sintyoku2

[jump storage="end.ks" target="*bouryokuend" cond="f.sintyokucheck === 4"]
[jump storage="command.ks" target="*sintyokuA_1" cond="f.sintyokucheckA === 0"]
[jump storage="end.ks" target="*bouryokuend" cond="f.sintyokucheckA === 1"]



*day7
[fadeoutbgm time=1000]
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
[chara_hide name=shusuke time=10]
[bg storage="黒.png" time=10]
[mask_off]
[jump  storage="end.ks" target="*stressend" cond="f.stress === 100"]
[jump storage="end.ks" target="*kenjouend" cond="f.stress === 0"]
[jump storage="end.ks" target="*nareaiend" cond="f.sintyoku < 100 && f.stress < 50 "]
[jump storage="end.ks" target="*ribetuend" cond="f.sintyoku < 100 && f.koukando < 60 && f.stress <= 50 "]
[jump storage="end.ks" target="*kyouisonend" cond="f.sintyoku < 100 && f.stress >= 50 && f.koukando >= 60 "]
[jump storage="end.ks" target="*ningyouend" cond="f.sintyoku === 100 && f.koukando < 50 "]
[jump storage="end.ks" target="*hakusiend" cond="f.sintyoku === 100 && f.stress >= 80 && f.koukando >= 50 "]
[jump storage="end.ks" target="*yumeoizigokuend" cond="f.sintyoku === 100 && f.stress < 80 && f.koukando >= 50"]



