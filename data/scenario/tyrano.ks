
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

;北斗_冬服
[macro name="hokuto_w_akire"][chara_show name="hokuto" storage="hokuto_win/akire.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_aozame"][chara_show name="hokuto" storage="hokuto_win/aozame.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_aozame2"][chara_show name="hokuto" storage="hokuto_win/aozame2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_aseri"][chara_show name="hokuto" storage="hokuto_win/aseri.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_dere"][chara_show name="hokuto" storage="hokuto_win/dere.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_egao"][chara_show name="hokuto" storage="hokuto_win/egao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_egao2"][chara_show name="hokuto" storage="hokuto_win/egao2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_hohoemi"][chara_show name="hokuto" storage="hokuto_win/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_hutyou"][chara_show name="hokuto" storage="hokuto_win/hutyou.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_iradati"][chara_show name="hokuto" storage="hokuto_win/iradati.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_iradati2"][chara_show name="hokuto" storage="hokuto_win/iradati2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_kanasimi"][chara_show name="hokuto" storage="hokuto_win/kanasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_kanasimi2"][chara_show name="hokuto" storage="hokuto_win/kanasimi2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_magao"][chara_show name="hokuto" storage="hokuto_win/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_metozi"][chara_show name="hokuto" storage="hokuto_win/metozi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_mu"][chara_show name="hokuto" storage="hokuto_win/mu.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_mu2"][chara_show name="hokuto" storage="hokuto_win/mu2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_naki"][chara_show name="hokuto" storage="hokuto_win/naki.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_naki2"][chara_show name="hokuto" storage="hokuto_win/naki2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_odoroki"][chara_show name="hokuto" storage="hokuto_win/odoroki.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_w_tere"][chara_show name="hokuto" storage="hokuto_win/tere.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
;北斗_冬服_表情変更
[macro name="hw/akire"][chara_mod name="hokuto" storage="hokuto_win/akire.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/aozame"][chara_mod name="hokuto" storage="hokuto_win/aozame.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/aozame2"][chara_mod name="hokuto" storage="hokuto_win/aozame2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/aseri"][chara_mod name="hokuto" storage="hokuto_win/aseri.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/dere"][chara_mod name="hokuto" storage="hokuto_win/dere.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/egao"][chara_mod name="hokuto" storage="hokuto_win/egao.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/egao2"][chara_mod name="hokuto" storage="hokuto_win/egao2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/hohoemi"][chara_mod name="hokuto" storage="hokuto_win/hohoemi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/hutyou"][chara_mod name="hokuto" storage="hokuto_win/hutyou.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/iradati"][chara_mod name="hokuto" storage="hokuto_win/iradati.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/iradati2"][chara_mod name="hokuto" storage="hokuto_win/iradati2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/kanasimi"][chara_mod name="hokuto" storage="hokuto_win/kanasimi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/kanasimi2"][chara_mod name="hokuto" storage="hokuto_win/kanasimi2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/magao"][chara_mod name="hokuto" storage="hokuto_win/magao.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/metozi"][chara_mod name="hokuto" storage="hokuto_win/metozi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/mu"][chara_mod name="hokuto" storage="hokuto_win/mu.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/mu2"][chara_mod name="hokuto" storage="hokuto_win/mu2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/naki"][chara_mod name="hokuto" storage="hokuto_win/naki.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/naki2"][chara_mod name="hokuto" storage="hokuto_win/naki2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/odoroki"][chara_mod name="hokuto" storage="hokuto_win/odoroki.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hw/tere"][chara_mod name="hokuto" storage="hokuto_win/tere.png" cross="false" wait="true" time="%time|100][endmacro]
;北斗_夏服
[macro name="hokuto_s_akire"][chara_show name="hokuto" storage="hokuto_sum/akire.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_aozame"][chara_show name="hokuto" storage="hokuto_sum/aozame.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_aozame2"][chara_show name="hokuto" storage="hokuto_sum/aozame2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_aseri"][chara_show name="hokuto" storage="hokuto_sum/aseri.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_dere"][chara_show name="hokuto" storage="hokuto_sum/dere.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_egao"][chara_show name="hokuto" storage="hokuto_sum/egao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_egao2"][chara_show name="hokuto" storage="hokuto_sum/egao2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_hohoemi"][chara_show name="hokuto" storage="hokuto_sum/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_hutyou"][chara_show name="hokuto" storage="hokuto_sum/hutyou.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_iradati"][chara_show name="hokuto" storage="hokuto_sum/iradati.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_iradati2"][chara_show name="hokuto" storage="hokuto_sum/iradati2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_kanasimi"][chara_show name="hokuto" storage="hokuto_sum/kanasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_kanasimi2"][chara_show name="hokuto" storage="hokuto_sum/kanasimi2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_magao"][chara_show name="hokuto" storage="hokuto_sum/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_metozi"][chara_show name="hokuto" storage="hokuto_sum/metozi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_mu"][chara_show name="hokuto" storage="hokuto_sum/mu.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_mu2"][chara_show name="hokuto" storage="hokuto_sum/mu2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_naki"][chara_show name="hokuto" storage="hokuto_sum/naki.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_naki2"][chara_show name="hokuto" storage="hokuto_sum/naki2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_odoroki"][chara_show name="hokuto" storage="hokuto_sum/odoroki.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="hokuto_s_tere"][chara_show name="hokuto" storage="hokuto_sum/tere.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
;北斗_夏服_表情変更
[macro name="hs/akire"][chara_mod name="hokuto" storage="hokuto_sum/akire.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/aozame"][chara_mod name="hokuto" storage="hokuto_sum/aozame.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/aozame2"][chara_mod name="hokuto" storage="hokuto_sum/aozame2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/aseri"][chara_mod name="hokuto" storage="hokuto_sum/aseri.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/dere"][chara_mod name="hokuto" storage="hokuto_sum/dere.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/egao"][chara_mod name="hokuto" storage="hokuto_sum/egao.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/egao2"][chara_mod name="hokuto" storage="hokuto_sum/egao2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/hohoemi"][chara_mod name="hokuto" storage="hokuto_sum/hohoemi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/hutyou"][chara_mod name="hokuto" storage="hokuto_sum/hutyou.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/iradati"][chara_mod name="hokuto" storage="hokuto_sum/iradati.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/iradati2"][chara_mod name="hokuto" storage="hokuto_sum/iradati2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/kanasimi"][chara_mod name="hokuto" storage="hokuto_sum/kanasimi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/kanasimi2"][chara_mod name="hokuto" storage="hokuto_sum/kanasimi2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/magao"][chara_mod name="hokuto" storage="hokuto_sum/magao.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/metozi"][chara_mod name="hokuto" storage="hokuto_sum/metozi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/mu"][chara_mod name="hokuto" storage="hokuto_sum/mu.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/mu2"][chara_mod name="hokuto" storage="hokuto_sum/mu2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/naki"][chara_mod name="hokuto" storage="hokuto_sum/naki.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/naki2"][chara_mod name="hokuto" storage="hokuto_sum/naki2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/odoroki"][chara_mod name="hokuto" storage="hokuto_sum/odoroki.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="hs/tere"][chara_mod name="hokuto" storage="hokuto_sum/tere.png" cross="false" wait="true" time="%time|100][endmacro]

;美波_冬服
[macro name="minami_w_akire"][chara_show name="minami" storage="minami_win/akire.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_aozame"][chara_show name="minami" storage="minami_win/aozame.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_dere"][chara_show name="minami" storage="minami_win/dere.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_dere2"][chara_show name="minami" storage="minami_win/dere2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_egao"][chara_show name="minami" storage="minami_win/egao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_egao2"][chara_show name="minami" storage="minami_win/egao2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_hohoemi"][chara_show name="minami" storage="minami_win/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_ikari"][chara_show name="minami" storage="minami_win/ikari.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_ikarinaki"][chara_show name="minami" storage="minami_win/ikarinaki.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_iradati"][chara_show name="minami" storage="minami_win/iradati.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_kanasimi"][chara_show name="minami" storage="minami_win/kanasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_kira"][chara_show name="minami" storage="minami_win/kira.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_magao"][chara_show name="minami" storage="minami_win/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_magao2"][chara_show name="minami" storage="minami_win/magao2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_mogu"][chara_show name="minami" storage="minami_win/mogu.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_naki"][chara_show name="minami" storage="minami_win/nai.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_naki2"][chara_show name="minami" storage="minami_win/naki2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_odoroki"][chara_show name="minami" storage="minami_win/odoroki.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_oogoe"][chara_show name="minami" storage="minami_win/oogoe.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_tere"][chara_show name="minami" storage="minami_win/tere.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_tun"][chara_show name="minami" storage="minami_win/tun.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_tun2"][chara_show name="minami" storage="minami_win/tun2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_w_uwame"][chara_show name="minami" storage="minami_win/uwame.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
;美波_冬服_表情変化
[macro name="mw/akire"][chara_mod name="minami" storage="minami_win/akire.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/aozame"][chara_mod name="minami" storage="minami_win/aozame.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/dere"][chara_mod name="minami" storage="minami_win/dere.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/dere2"][chara_mod name="minami" storage="minami_win/dere2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/egao"][chara_mod name="minami" storage="minami_win/egao.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/egao2"][chara_mod name="minami" storage="minami_win/egao2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/hohoemi"][chara_mod name="minami" storage="minami_win/hohoemi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/ikari"][chara_mod name="minami" storage="minami_win/ikari.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/ikarinaki"][chara_mod name="minami" storage="minami_win/ikarinaki.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/iradati"][chara_mod name="minami" storage="minami_win/iradati.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/kanasimi"][chara_mod name="minami" storage="minami_win/kanasimi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/kira"][chara_mod name="minami" storage="minami_win/kira.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/magao"][chara_mod name="minami" storage="minami_win/magao.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/magao2"][chara_mod name="minami" storage="minami_win/magao2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/mogu"][chara_mod name="minami" storage="minami_win/mogu.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/naki"][chara_mod name="minami" storage="minami_win/nai.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/naki2"][chara_mod name="minami" storage="minami_win/naki2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/odoroki"][chara_mod name="minami" storage="minami_win/odoroki.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/oogoe"][chara_mod name="minami" storage="minami_win/oogoe.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/tere"][chara_mod name="minami" storage="minami_win/tere.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/tun"][chara_mod name="minami" storage="minami_win/tun.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/tun2"][chara_mod name="minami" storage="minami_win/tun2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="mw/uwame"][chara_mod name="minami" storage="minami_win/uwame.png" cross="false" wait="true" time="%time|100][endmacro]
;美波_夏服
[macro name="minami_s_akire"][chara_show name="minami" storage="minami_sum/akire.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_aozame"][chara_show name="minami" storage="minami_sum/aozame.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_dere"][chara_show name="minami" storage="minami_sum/dere.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_dere2"][chara_show name="minami" storage="minami_sum/dere2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_egao"][chara_show name="minami" storage="minami_sum/egao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_egao2"][chara_show name="minami" storage="minami_sum/egao2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_hohoemi"][chara_show name="minami" storage="minami_sum/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_ikari"][chara_show name="minami" storage="minami_sum/ikari.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_ikarinaki"][chara_show name="minami" storage="minami_sum/ikarinaki.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_iradati"][chara_show name="minami" storage="minami_sum/iradati.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_kanasimi"][chara_show name="minami" storage="minami_sum/kanasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_kira"][chara_show name="minami" storage="minami_sum/kira.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_magao"][chara_show name="minami" storage="minami_sum/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_magao2"][chara_show name="minami" storage="minami_sum/magao2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_mogu"][chara_show name="minami" storage="minami_sum/mogu.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_naki"][chara_show name="minami" storage="minami_sum/nai.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_naki2"][chara_show name="minami" storage="minami_sum/naki2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_odoroki"][chara_show name="minami" storage="minami_sum/odoroki.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_oogoe"][chara_show name="minami" storage="minami_sum/oogoe.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_tere"][chara_show name="minami" storage="minami_sum/tere.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_tun"][chara_show name="minami" storage="minami_sum/tun.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_tun2"][chara_show name="minami" storage="minami_sum/tun2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="minami_s_uwame"][chara_show name="minami" storage="minami_sum/uwame.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
;美波_夏服_表情変化
[macro name="ms/akire"][chara_mod name="minami" storage="minami_sum/akire.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/aozame"][chara_mod name="minami" storage="minami_sum/aozame.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/dere"][chara_mod name="minami" storage="minami_sum/dere.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/dere2"][chara_mod name="minami" storage="minami_sum/dere2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/egao"][chara_mod name="minami" storage="minami_sum/egao.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/egao2"][chara_mod name="minami" storage="minami_sum/egao2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/hohoemi"][chara_mod name="minami" storage="minami_sum/hohoemi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/ikari"][chara_mod name="minami" storage="minami_sum/ikari.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/ikarinaki"][chara_mod name="minami" storage="minami_sum/ikarinaki.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/iradati"][chara_mod name="minami" storage="minami_sum/iradati.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/kanasimi"][chara_mod name="minami" storage="minami_sum/kanasimi.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/kira"][chara_mod name="minami" storage="minami_sum/kira.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/magao"][chara_mod name="minami" storage="minami_sum/magao.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/magao2"][chara_mod name="minami" storage="minami_sum/magao2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/mogu"][chara_mod name="minami" storage="minami_sum/mogu.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/naki"][chara_mod name="minami" storage="minami_sum/nai.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/naki2"][chara_mod name="minami" storage="minami_sum/naki2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/odoroki"][chara_mod name="minami" storage="minami_sum/odoroki.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/oogoe"][chara_mod name="minami" storage="minami_sum/oogoe.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/tere"][chara_mod name="minami" storage="minami_sum/tere.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/tun"][chara_mod name="minami" storage="minami_sum/tun.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/tun2"][chara_mod name="minami" storage="minami_sum/tun2.png" cross="false" wait="true" time="%time|100][endmacro]
[macro name="ms/uwame"][chara_mod name="minami" storage="minami_sum/uwame.png" cross="false" wait="true" time="%time|100][endmacro]

;清二
[macro name="seizi_hohoemi"][chara_show name="seizi" storage="seizi/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_hohoemi2"][chara_show name="seizi" storage="seizi/hohoemi2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_kanasimi"][chara_show name="seizi" storage="seizi/knasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_kuti"][chara_show name="seizi" storage="seizi/kuti.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_magao"][chara_show name="seizi" storage="seizi/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_metozi"][chara_show name="seizi" storage="seizi/metozi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_mu"][chara_show name="seizi" storage="seizi/mu.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_hos_hohoemi"][chara_show name="seizi" storage="seizi_hos/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_hos_hohoemi2"][chara_show name="seizi" storage="seizi_hos/hohoemi2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_hos_kanasimi"][chara_show name="seizi" storage="seizi_hos/knasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_hos_kuti"][chara_show name="seizi" storage="seizi_hos/kuti.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_hos_magao"][chara_show name="seizi" storage="seizi_hos/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_hos_metozi"][chara_show name="seizi" storage="seizi_hos/metozi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="seizi_hos_mu"][chara_show name="seizi" storage="seizi_hos/mu.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
;清二_表情
[macro name="s/hohoemi"][chara_mod name="seizi" storage="seizi/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="s/hohoemi2"][chara_mod name="seizi" storage="seizi/hohoemi2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="s/kanasimi"][chara_mod name="seizi" storage="seizi/knasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="s/kuti"][chara_mod name="seizi" storage="seizi/kuti.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="s/magao"][chara_mod name="seizi" storage="seizi/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="s/metozi"][chara_mod name="seizi" storage="seizi/metozi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="s/mu"][chara_mod name="seizi" storage="seizi/mu.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="sh/hohoemi"][chara_mod name="seizi" storage="s/hos/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="sh/hohoemi2"][chara_mod name="seizi" storage="s/hos/hohoemi2.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="sh/kanasimi"][chara_mod name="seizi" storage="s/hos/knasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="sh/kuti"][chara_mod name="seizi" storage="s/hos/kuti.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="sh/magao"][chara_mod name="seizi" storage="s/hos/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="sh/metozi"][chara_mod name="seizi" storage="s/hos/metozi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="sh/mu"][chara_mod name="seizi" storage="s/hos/mu.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]

;kaname
[macro name="kaname_bishou"][chara_show name="kaname" storage="kaname/bishou.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="kaname_magao"][chara_show name="kaname" storage="kaname/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="k/bishou"][chara_mod name="kaname" storage="kaname/bishou.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="k/magao"][chara_mod name="kaname" storage="kaname/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]

;nao
[macro name="nao_bishou"][chara_show name="nao" storage="nao/bishou.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="nao_magao"][chara_show name="nao" storage="nao/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="n/bishou"][chara_mod name="nao" storage="nao/bishou.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="n/magao"][chara_mod name="nao" storage="nao/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]

;reito
[macro name="reito_bishou"][chara_show name="reito" storage="reito/bishou.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="reito_kanasimi"][chara_show name="reito" storage="reito/kanasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="reito_komori"][chara_show name="reito" storage="reito/komori.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="reito_magao"][chara_show name="reito" storage="reito/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="reito_niko"][chara_show name="reito" storage="reito/niko.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="reito_tukomi"][chara_show name="reito" storage="reito/tukomi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="r/bishou"][chara_mod name="reito" storage="reito/bishou.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="r/kanasimi"][chara_mod name="reito" storage="reito/kanasimi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="r/komori"][chara_mod name="reito" storage="reito/komori.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="r/magao"][chara_mod name="reito" storage="reito/magao.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="r/niko"][chara_mod name="reito" storage="reito/niko.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]
[macro name="r/tukomi"][chara_mod name="reito" storage="reito/tukomi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]

;yuko
[macro name="yuko"][chara_show name="yuko" storage="yuko/hohoemi.png" page="%page|fore" top="%top|20" left="%left" time="%time|700" width="%width|1000" wait="%wait|true"][endmacro]

[macro name="hhide"][chara_hide name="hokuto" time="%time|700" layer="message0" wait="%wait|true"][endmacro]
[macro name="mhide"][chara_hide name="minami" time="%time|700" layer="message0" wait="%wait|true"][endmacro]
[macro name="shide"][chara_hide name="seizi" time="%time|700" layer="message0" wait="%wait|true"][endmacro]
[macro name="nhide"][chara_hide name="nao" time="%time|700" layer="message0" wait="%wait|true"][endmacro]
[macro name="khide"][chara_hide name="kaname" time="%time|700" layer="message0" wait="%wait|true"][endmacro]
[macro name="rhide"][chara_hide name="reito" time="%time|700" layer="message0" wait="%wait|true"][endmacro]
[macro name="yhide"][chara_hide name="yuko" time="%time|700" layer="message0" wait="%wait|true"][endmacro]

[macro name="kaisou"][layopt layer=1 visible=true][image layer="1" storage="vignette.png" name="kaisou"][endmacro]
[macro name="fkaisou"][free name="kaisou" layer=1][endmacro]
;機能
[chara_config ptext="chara_name_area" pos_mode=true memory=true effect=easeOutQuad]
[macro name="rhide"][clearfix name="role_button"][endmacro]
[macro name="mhide"][anim layer="message0" opacity=0 time="%time|1000"][endmacro]
[macro name="mshow"][anim layer="message0" opacity=255 time="%time|1000"][endmacro]
;メニューボタン
[macro name="rolebutton"]
[button name="role_button" role=rock graphic="ui/lock.png" x=1836 y=1040 fix=true]
[button name="role_button" role=save graphic="ui/save.png" x=1180 y=1040 fix=true]
[button name="role_button" role=load graphic="ui/load.png" x=1277 y=1040 fix=true]
[button name="role_button" role=backlog graphic="ui/backlog.png" x=1377 y=1040 fix=true]
[button name="role_button" role=auto graphic="ui/auto.png" x=1525 y=1042 fix=true]
[button name="role_button" role=skip graphic="ui/skip.png" x=1625 y=1040 fix=true]
[button name="role_button" role=config graphic="ui/config.png" x=1713 y=1040 fix=true]
[button name="role_button" role=window graphic="ui/close.png" x=1876 y=1040 fix=true]
[endmacro]


;メッセージボックス
[macro name="M0"]
[position layer="message0" left=0 top=790 width=1920 height=290 opacity=&sf.mopacity frame="ui/frame.png" page=fore visible=true]
[position layer="message0" page=fore margint="15" marginl="390" marginr="220" marginb="50"]
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


