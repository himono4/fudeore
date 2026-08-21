
[cm]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200
[playbgm storage="Silent_Night-MB01-mp3/Silent_Night-MB01-1(Reverb-Slow).mp3"]
*start 
;スタート
[glink color="btn_07_black" x="30" y="590" width="300" size="30" text="最初から" target="*gamestart"]
;続きから
[glink color="btn_07_black" x="340" y="590" width="300" size="30" text="続きから" role="load"]
;cgモード
[glink color="btn_07_black" x="650" y="590" width="300" size="30" text="エンドリスト" storage="endlist.ks"]
;コンフィグ
[glink color="btn_07_black" x="960" y="590" width="300" size="30" text="設定" storage="config.ks" role="sleepgame"]
[s]

*gamestart


;一番最初のシナリオファイルへジャンプする
@jump storage=kyoutuu.ks




