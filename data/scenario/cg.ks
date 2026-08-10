;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false

@clearfix
[hidemenubutton]
[cm]

[bg storage="../../tyrano/images/system/bg_base.png" time=100]
[layopt layer=1 visible=true]

[image layer=1 left=0 top=0 storage="config/label_cg.png" folder="image" ]

[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[layopt layer=1 visible=true]

[cm]
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=1150 y=40 ]

[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page

*page_0
[cg_image_button graphic="CG1-1.png,CG1-2.png" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=130 width=320 height=200 folder="bgimage" ]
[cg_image_button graphic="CG2-shinken.png,CG2-ando.png,CG2-aseri.png,CG2-hohoemi.png,CG2-odoroki.png,CG2-urei.png" no_graphic="../../tyrano/images/system/noimage.png" x=410 y=130 width=320 height=200 folder="bgimage" ]
[cg_image_button graphic="CG3-hohoemi.png,CG3-metozi.png,CG3-urei.png" no_graphic="../../tyrano/images/system/noimage.png" x=760 y=130 width=320 height=200 folder="bgimage"]
[cg_image_button graphic="CG4-hohoemi.png,CG4-kyouhu.png" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=430 width=320 height=200 folder="bgimage"]
[cg_image_button graphic="CG5-kurusimi.png,CG5-hohoemi.png" no_graphic="../../tyrano/images/system/noimage.png" x=410 y=430 width=320 height=200 folder="bgimage"]
[cg_image_button graphic="CG6.png" no_graphic="../../tyrano/images/system/noimage.png" x=760 y=430 width=320 height=200 folder="bgimage"]
@jump target="*common"

*common


*endpage



[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg
[cm]

[layopt layer=1 visible=false]

[eval exp="tf.cg_index=0"]

*cg_next_image

[image storage=&tf.selected_cg_image[tf.cg_index] folder="bgimage"  ]
[l]
[bg storage="../../tyrano/images/system/bg_base.png" time=10]

[eval exp="tf.cg_index++"]

@jump target="cg_next_image" cond="tf.selected_cg_image.length > tf.cg_index"


@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage



