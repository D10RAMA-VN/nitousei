[if exp="sf.trans==undefined"][eval exp="sf.trans=0"][endif]

*restart
[if exp="sf.trans==3"]
    [title name=&"String('The\x20Invisible\x20Star')"]
    [dialog_config_ok text="Yes"]
    [dialog_config_ng text="No"]
[elsif exp="sf.trans==2"]
    [title name=&"String('La\x20estrella\x20invisible')"]
    [dialog_config_ok text="Si"]
    [dialog_config_ng text="No"]
[elsif exp="sf.trans==1"]
    [title name=&"String('The\x20Invisible\x20Star')"]
    [dialog_config_ok text="Yes"]
    [dialog_config_ng text="No"]
[else]
    [title name="見えない二等星"]
    [dialog_config_ok text="はい"]
    [dialog_config_ng text="いいえ"]
[endif]

[stop_keyconfig]
[hidemenubutton]
[call storage="novecole.ks"]
[plugin name="backlog"]
@call storage="backlog.ks"

[mask graphic="logo.png" time=1500]
[if exp="sf.trans==0"]
    [chara_new  name="hokuto" storage="hokuto_win/mu.png" width=900 jname="北斗" color=#EA580C]
    [chara_new  name="minami" storage="minami_win/magao.png" width=1200 jname="美波" color=#0299E3]
    [chara_new  name="seiji" storage="seizi/mu.png" width=900 jname="高村" color=#E11D48]
    [chara_new  name="nao" storage="nao/magao.png" width=900 jname="七音" color=#E3CC02]
    [chara_new  name="kaname" storage="kaname/magao.png" width=900 jname="奏女" color=#E63CB0]
    [chara_new  name="reito" storage="reito/magao.png" width=900 jname="令人" color=#0ACC62]
    [chara_new  name="yuko" storage="yuko/hohoemi.png" width=900 jname="優子" color=#0ACC62]
    [chara_new  name="rouzin" storage="seizi/mu.png" width=900 jname="老人" color=#E11D48]
    [chara_new  name="hutari" storage="hokuto_win/mu.png" width=900 jname="二人" color=#EA580C]
    [chara_new  name="itidou" storage="hokuto_win/mu.png" width=900 jname="一同" color=#EA580C]
    [chara_new  name="sannin" storage="hokuto_win/mu.png" width=900 jname="三人" color=#EA580C]
[else]
    [chara_new  name="hokuto" storage="hokuto_win/mu.png" width=900 jname="Hokuto" color=#EA580C]
    [chara_new  name="minami" storage="minami_win/magao.png" width=1200 jname="Minami" color=#0299E3]
    [chara_new  name="seiji" storage="seizi/mu.png" width=900 jname="Takamura" color=#E11D48]
    [chara_new  name="nao" storage="nao/magao.png" width=900 jname="Nao" color=#E3CC02]
    [chara_new  name="kaname" storage="kaname/magao.png" width=900 jname="Kaname" color=#E63CB0]
    [chara_new  name="reito" storage="reito/magao.png" width=900 jname="Reito" color=#0ACC62]
    [chara_new  name="yuko" storage="yuko/hohoemi.png" width=900 jname="Yuko" color=#0ACC62]
    [chara_new  name="rouzin" storage="seizi/mu.png" width=900 jname="Old  Man" color=#E11D48]
    [chara_new  name="hutari" storage="hokuto_win/mu.png" width=900 jname="Both" color=#EA580C]
    [chara_new  name="itidou" storage="hokuto_win/mu.png" width=900 jname="Everyone" color=#EA580C]
    [chara_new  name="sannin" storage="hokuto_win/mu.png" width=900 jname="All Three" color=#EA580C]
[endif]
[if exp="sf.trans==2"]
    [chara_new  name="hatena" storage="hokuto_win/mu.png" width=900 jname="???" color=#EA580C]
[else]
    [chara_new  name="hatena" storage="hokuto_win/mu.png" width=900 jname="？？？" color=#EA580C]
[endif]
[chara_new  name="hatena2" storage="hokuto_win/mu.png" width=900 jname="？？" color=#EA580C]

[seopt volume="&sf.current_se_vol" effect=true]
[seopt buf=1 volume="&sf.vo1_vol" effect=true]
[seopt buf=2 volume="&sf.vo2_vol" effect=true]
[seopt buf=3 volume="&sf.vo3_vol" effect=true]
[seopt buf=4 volume="&sf.vo4_vol" effect=true]
[seopt buf=5 volume="&sf.vo5_vol" effect=true]
[seopt buf=6 volume="&sf.vo6_vol" effect=true]
[seopt buf=8 volume="&sf.current_se_vol" effect=true]
[seopt buf=9 volume="&sf.current_se_vol" effect=true]

[glyph fix=true left=1750 top=880]

@call storage="tyrano.ks"
@call storage="macro.ks"

@layopt layer="message" visible=false


[mask_off time=1000]

[if exp="sf.trans==3"]
@jump storage="ru/title.ks"
[elsif exp="sf.trans==2"]
@jump storage="es/title.ks"
[elsif exp="sf.trans==1"]
@jump storage="en/title.ks"
[else]
@jump storage="ja/title.ks"
[endif]
[s]
