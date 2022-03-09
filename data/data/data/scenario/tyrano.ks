
*start

;背景変更マクロ　storage と time を指定する
[macro name="back"]

;@layopt layer=message0 visible=false
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=%method|crossfade children=false time=%time|2000]
[wt]
;@layopt layer=message0 visible=true

[endmacro]



;キャラクターを表示、そして設定
[macro name="charaset"]

[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true]

[endmacro]


[macro name="chararemove"]

[freeimage layer = %layer]

[endmacro]

;;;;;;;;;;;;セーブ関係

;save情報を取得、ptextを継承する

[macro name="saveinfo"]

[iscript]

tf.savetext = "";

tf.array_save = TG.menu.getSaveData().data;
tf.data = tf.array_save[mp.index];

tf.title = tf.data.title;
tf.save_date = tf.data.save_date;

tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;

[endscript]

[ptext * text=&tf.savetext ]


[endmacro]

[macro name="setsave"]

    [iscript]

        TG.menu.doSave(mp.index);
        
    [endscript]

[endmacro]

[macro name="loading"]

    [iscript]

        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


[macro name="shin"][chara_show name="shinguzi" storage="shinguzi/frend.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1300" wait="%wait|true"][endmacro]


[macro name="yukino/1"][chara_mod name="yukino" storage="yukino/tatie1.png" cross="false" wait="true" time=100][endmacro]
[macro name="yukino1"][chara_show name="yukino" storage="yukino/tatie1.png" page="%page|fore" top="%top|50" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="yukinohide"][chara_hide name="yukino" time=700][endmacro]
[macro name="hide"][chara_hide name="yukino" time="%time|1000" wait="%wait|true"][endmacro]

[macro name="haruya"][chara_show name="haruya" storage="%storage|haruya/haruya1.png" page="%page|fore" top="370" left="-330" time="%time|700" zindex="200" layer="message0"][endmacro]
[macro name="haruyahide"][chara_hide name="haruya" time="%time|700" layer="message0" wait="%wait|true"][endmacro]
[macro name="haruya1"][chara_show name="haruya" storage="%storage|yukino/tatie8.png" page="%page|fore" top="430" left="-330" time="%time|700" zindex="200" layer="message0"][endmacro]
[macro name="hmod"][chara_mod name="haruya" storage="%storage|haruya/haruya1_1.png" cross="false" wait="true" time=0][endmacro]

[macro name="kaisou"][layopt layer=1 visible=true][image layer="1" storage="vignette.png" name="kaisou"][endmacro]
[macro name="fkaisou"][free name="kaisou" layer=1][endmacro]
;機能
[chara_config ptext="chara_name_area" pos_mode=true memory=true effect=easeOutQuad]
[macro name="rhide"][clearfix name="role_button"][endmacro]
[macro name="mhide"][anim layer="message0" opacity=0 time="%time|1000"][endmacro]
[macro name="mshow"][anim layer="message0" opacity=255 time="%time|1000"][endmacro]
;陽だまりの栞のメニューボタン
[macro name="rolebutton"]
[button name="role_button" role=rock graphic="lock.png" x=1130 y=1030 fix=true]
[button name="role_button" role=save graphic="save.png" x=1210 y=1030 fix=true]
[button name="role_button" role=load graphic="load.png" x=1350 y=1030 fix=true]
[button name="role_button" role=backlog graphic="log.png" x=1490 y=1030 fix=true]
[button name="role_button" role=auto graphic="auto.png" x=1570 y=1030 fix=true]
[button name="role_button" role=skip graphic="skip.png" x=1640 y=1030 fix=true]
[button name="role_button" role=config graphic="config.png" x=1730 y=1030 fix=true]
[button name="role_button" role=window graphic="close.png" x=1800 y=1030 fix=true]
[endmacro]


;メッセージボックス
[macro name="M0"]
[position layer="message0" left=0 top=756 width=1920 height=324 opacity=&sf.mopacity frame="frame_siori.png" page=fore visible=true]
[position layer="message0" page=fore margint="30" marginl="280" marginr="300" marginb="50"]
[endmacro]

[macro name="trans_in"]
[trans layer="%layer|0" time="%time|700" method="%method|fadeIn"]
[wt]
[endmacro]

[macro name="trans_out"]
[backlay layer="%layer|0"]
[trans layer="%layer|0" time="%time|700" method="%method|fadeOut"]
[freeimage layer="%layer|0"]
[wt]
[freeimage layer="%layer|0"]
[endmacro]

;keyframe
[keyframe name="nod3"]
[frame p="0%" y="0"]
[frame p="50%" y="10"]
[frame p="100%" y=" 0"]
[endkeyframe]

[keyframe name="nod"]
[frame p="0%" y="0"]
[frame p="50%" y="15"]
[frame p="100%" y=" 0"]
[endkeyframe]

[keyframe name="nod2"]
[frame p="0%" y="0"]
[frame p="25%" y="15"]
[frame p="50%" y="0"]
[frame p="75%" y="15"]
[frame p="100%" y=" 0"]
[endkeyframe]

[keyframe name="surp"]
[frame p="0%" y="0"]
[frame p="50%" y="-15"]
[frame p="100%" y=" 0"]
[endkeyframe]

[keyframe name="down"]
[frame p="0%" y="0"]
[frame p="100%" y="10"]

[keyframe name="up"]
[frame p="0%" y="0"]
[frame p="100%" y="-10"]
[endkeyframe]

[keyframe name="up2"]
[frame p="0%" y="0"]
[frame p="100%" y="-20"]
[endkeyframe]

[keyframe name="no"]
[frame p="0%" x="0"]
[frame p="25%" x="15"]
[frame p="66%" x="-15"]
[frame p="100%" x=" 0"]
[endkeyframe]

[keyframe name="left"]
[frame p="0%" x="0"]
[frame p="50%" x="20"]
[frame p="100%" x="0"]
[endkeyframe]

[return]


