;(function () {
    /**
     *
     * ふりーむ対応タイトルに戻るプラグイン
     *
     */

    /**
     * 関数定義
     */
    const backTitle = () => {
        let flag = false
        const isShowMenu = $(".layer_menu").css("display") === "block"
        //音止める
        TYRANO.kag.ftag.startTag("fadeoutbgm", {
            time: TYRANO.kag.variable.sf._backtitle_ex.fade / 2,
            stop: "true",
        })
        TYRANO.kag.ftag.startTag("fadeoutse", {
            time: TYRANO.kag.variable.sf._backtitle_ex.fade / 2,
            stop: "true",
        })
        if (isShowMenu) {
            //メニュー画面からタイトルに戻る
            $(".layer_fore,.fixlayer,.layer_free").each(function () {
                if ($(this).hasClass("layer_camera")) {
                    //背景・前景レイヤー
                    $(this).empty()
                    $(this).css({
                        "background-image": "none",
                    })
                } else if ($(this).hasClass("message0_fore")) {
                    //メッセージレイヤー
                    $(this).css({
                        display: "none",
                    })
                } else if ($(this).hasClass("fixlayer")) {
                    //fixボタン類
                    $(this).remove()
                } else if ($(this).hasClass("layer_free")) {
                    //フリーレイヤー
                    $(this).empty()
                }
            })
            $(".layer_menu")
                .fadeOut(TYRANO.kag.variable.sf._backtitle_ex.fade)
                .promise()
                .done(function () {
                    $(this).empty()
                    //ジャンプするのは一度だけ
                    if (flag === false) {
                        flag = true
                        TYRANO.kag.ftag.startTag("jump", {
                            storage: "first.ks",
                        })
                    }
                })
        } else {
            //ゲーム画面からタイトルに戻る
            $(".layer_fore,.fixlayer,.layer_free, .layer_menu")
                .fadeOut(TYRANO.kag.variable.sf._backtitle_ex.fade)
                .promise()
                .done(function () {
                    if ($(this).hasClass("layer_camera")) {
                        //背景・前景レイヤー
                        $(this).empty()
                        $(this).css({
                            "background-image": "none",
                        })
                    } else if ($(this).hasClass("message0_fore")) {
                        //メッセージレイヤー
                        $(this).css({
                            display: "none",
                        })
                    } else if ($(this).hasClass("fixlayer")) {
                        //fixボタン類
                        $(this).remove()
                    } else if ($(this).hasClass("layer_free")) {
                        //フリーレイヤー
                        $(this).empty()
                    } else if ($(this).hasClass("layer_menu")) {
                        //メニューレイヤー
                        $(this).empty()
                    }
                    //ジャンプするのは一度だけ
                    if (flag === false) {
                        flag = true
                        TYRANO.kag.ftag.startTag("jump", {
                            storage: "first.ks",
                        })
                    }
                })
        }
    }

    /**
     * 関数オーバーライド
     */
    TYRANO.kag.backTitle = function () {
        if ("appJsInterface" in window) {
            appJsInterface.finishGame()
        } else {
            if (typeof TyranoPlayer == "function") {
                //iphone
                //location.href = "tyranoplayer-back://endgame";
                webkit.messageHandlers.backHandler.postMessage("endgame")
            } else {
                if (TYRANO.kag.variable.sf._backtitle_ex.dialog) {
                    //ダイアログあり
                    $.confirm($.lang("go_title"), backTitle, function () {
                        return false
                    })
                } else {
                    //ダイアログなし
                    backTitle()
                }
            }
        }
    }
})()
