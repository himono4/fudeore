*start

[cm  ]
[clearfix]
[start_keyconfig]

[bg storage="コマンド画面背景.jpg" time=500]

[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
[ptext layer=2 text="END LIST" y=10 x=50 size=50 edge="2px #1e1e1e" ]


[if exp="sf.end1 >= 2"]
[ptext layer=2 text="END1:嘘つき" y=80 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END1:【条件】4日目に「違うよ」を選ぶ" y=80 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.bouryokuend >= 2"]
[ptext layer=2 text="END2:高望み" y=120 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END2:【条件】4日目以降に進捗コマンドを2回実行" y=120 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.dateend_1 >= 2"]
[ptext layer=2 text="END3:失恋ごっこ" y=160 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END3:【条件】ストレス値90未満でお出かけコマンドを5回実行" y=160 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.dateend_2 >= 2"]
[ptext layer=2 text="END4:緩やかな懲罰" y=200 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END4:【条件】ストレス値90以上でお出かけコマンドを5回実行" y=200 x=110 size=25 edge="2px #1e1e1e"]
[endif]


[if exp="sf.amayakasuend >= 2"]
[ptext layer=2 text="END5:洗脳" y=240 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END5:【条件】甘やかすコマンドを5回実行" y=240 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.josouend >= 2"]
[ptext layer=2 text="END6:頽落" y=280 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END6:【条件】話を聞くコマンドを5回実行" y=280 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.stressend >= 2"]
[ptext layer=2 text="END7:最悪の結末" y=320 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END7:【条件】ストレス値100" y=320 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.kenjouend >= 2"]
[ptext layer=2 text="END8:逆戻り" y=360 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END8:【条件】ストレス値0" y=360 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.ribetuend >= 2"]
[ptext layer=2 text="END9:今日の日はさようなら" y=400 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END9:【条件】小説が未完、ストレス50以上、好感度60未満で7日目を迎える" y=400 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.nareaiend >= 2"]
[ptext layer=2 text="END10:馴れ合い" y=440 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END10:【条件】小説が未完、ストレス50未満で7日目を迎える" y=440 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.kyouisonend >= 2"]
[ptext layer=2 text="END11:見せかけの誓約" y=480 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END11:【条件】小説が未完、ストレス50以上、好感度60以上で7日目を迎える" y=480 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.ningyouend >= 2"]
[ptext layer=2 text="END12:幻想に溺れて" y=520 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END12:【条件】小説が完成、好感度50未満で7日目を迎える" y=520 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.hakusiend >= 2"]
[ptext layer=2 text="END13:無間地獄" y=560 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END13:【条件】小説が完成、ストレス80以上、好感度50以上で7日目を迎える" y=560 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.yumeoizigokuend >= 2"]
[ptext layer=2 text="END14:強制終了" y=600 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END14:【条件】小説が完成、ストレス80未満、好感度50以上で7日目を迎える" y=600 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[if exp="sf.trueend >= 2"]
[ptext layer=2 text="END15:君がいるから" y=640 x=110 size=25 edge="2px #1e1e1e"]
[else]
[ptext layer=2 text="END15:【条件】全エンド解放後、再びEND14の条件を満たして7日目を迎える" y=640 x=110 size=25 edge="2px #1e1e1e"]
[endif]

[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=1150 y=15 ]
[s]
*backtitle
[cm]
[freeimage layer=1]
[freeimage layer=2]
@jump storage=title.ks
