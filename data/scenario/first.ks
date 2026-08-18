;一番最初に呼び出されるファイル

[title name="tyrano_V6_test"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;マクロを呼ぶ
[call storage="macro.ks" ]


;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]


;以下プラグイン

;デバッグ支援プラグイン
;[plugin name=tsex]

;[button_kr] 吉里吉里式の連結画像でボタンホバーとマウスダウンを可能にする
[plugin name="button_kr"]

;wait機能拡張プラグイン
[plugin name="wait_plus"]

;カメラ機能拡張
[plugin name="tempura_camera2"]

;ボイス再生拡張
[plugin name="voiceplay_ex"]

;バックログジャンププラグイン読込
;[plugin name="tyrano-backlog-jump"]

;glinkをfixボタン化するプラグイン
[plugin name="glink_ex"]
;周回フラグの管理
[iscript]
if (typeof clear_flag === "undefined"){
    clear_flag = false;
}
[endscript]

[if exp="sf.end1==null"]
[eval exp="sf.end1=1"]
[endif]

[if exp="sf.bouryokuend==null"]
[eval exp="sf.bouryokuend=1"]
[endif]

[if exp="sf.dateend_1==null"]
[eval exp="sf.dateend_1=1"]
[endif]

[if exp="sf.dateend_2==null"]
[eval exp="sf.dateend_2=1"]
[endif]

[if exp="sf.amayakasuend==null"]
[eval exp="sf.amayakasuend=1"]
[endif]

[if exp="sf.josouend==null"]
[eval exp="sf.josouend=1"]
[endif]

[if exp="sf.stressend==null"]
[eval exp="sf.stressend=1"]
[endif]

[if exp="sf.kenjouend==null"]
[eval exp="sf.kenjouend=1"]
[endif]

[if exp="sf.ribetuend==null"]
[eval exp="sf.ribetuend=1"]
[endif]

[if exp="sf.nareaiend==null"]
[eval exp="sf.nareaiend=1"]
[endif]

[if exp="sf.kyouisonend==null"]
[eval exp="sf.kyouisonend=1"]
[endif]

[if exp="sf.ningyouend==null"]
[eval exp="sf.ningyouend=1"]
[endif]

[if exp="sf.hakusiend==null"]
[eval exp="sf.hakusiend=1"]
[endif]

[if exp="sf.yumeoizigokuend==null"]
[eval exp="sf.yumeoizigokuend=1"]
[endif]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


