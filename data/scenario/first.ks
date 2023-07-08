[title name=&"String('The\x20Invisible\x20Star')"]
[stop_keyconfig]
[hidemenubutton]
[call storage="novecole.ks"]
[plugin name="backlog"]
@call storage="backlog.ks"

[mask graphic="logo.png" time=1500]
[chara_new  name="hokuto" storage="hokuto_win/mu.png" width=900 jname="Hokuto" color=#EA580C]
[chara_new  name="minami" storage="minami_win/magao.png" width=1200 jname="Minami" color=#0299E3]
[chara_new  name="seizi" storage="seizi/mu.png" width=900 jname="Takamura" color=#E11D48]
[chara_new  name="nao" storage="nao/magao.png" width=900 jname="Nao" color=#E3CC02]
[chara_new  name="kaname" storage="kaname/magao.png" width=900 jname="Kaname" color=#E63CB0]
[chara_new  name="reito" storage="reito/magao.png" width=900 jname="Reito" color=#0ACC62]
[chara_new  name="yuko" storage="yuko/hohoemi.png" width=900 jname="Yuko" color=#0ACC62]
[chara_new  name="rouzin" storage="seizi/mu.png" width=900 jname="Old  Man" color=#E11D48]
[chara_new  name="hutari" storage="hokuto_win/mu.png" width=900 jname="Both" color=#EA580C]
[chara_new  name="itidou" storage="hokuto_win/mu.png" width=900 jname="Everyone" color=#EA580C]
[chara_new  name="sannin" storage="hokuto_win/mu.png" width=900 jname="All Three" color=#EA580C]
[chara_new  name="hatena" storage="hokuto_win/mu.png" width=900 jname="？？？" color=#EA580C]
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


@jump storage="title.ks"
[s]
