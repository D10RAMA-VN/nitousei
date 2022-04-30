[title name="見えない二等星"]

[stop_keyconfig]
[hidemenubutton]
[call storage="novecole.ks"]
[plugin name="backlog"]	
@call storage="backlog.ks"

[chara_new  name="hokuto" storage="hokuto_win/mu.png" width=900 jname="北斗" color=#EA580C]
[chara_new  name="minami" storage="minami_win/magao.png" width=1200 jname="美波" color=#0299E3]
[chara_new  name="seizi" storage="seizi/mu.png" width=900 jname="清二" color=#E11D48]
[chara_new  name="nanao" storage="nao/magao.png" width=900 jname="七音" color=#E3CC02]
[chara_new  name="kaname" storage="kaname/magao.png" width=900 jname="奏女" color=#E63CB0]
[chara_new  name="reito" storage="reito/magao.png" width=900 jname="令人" color=#0ACC62]
[chara_new  name="yuko" storage="yuko/hohoemi.png" width=900 jname="優子" color=#0ACC62]

[voconfig sebuf=4 name="kaname" vostorage="kaname/k_{number}.ogg" number=1 ]

[glyph fix=true left=1750 top=880]

@call storage="tyrano.ks"

@layopt layer="message" visible=false

;[mask time=1000]
;[image layer=0 page=fore visible=true storage=logo.png]
;[mask_off time=1000]
;[wait time=1000]
;[mask time=1000]
;[freeimage layer=0 time=100]
;[mask_off time=100]


@jump storage="title.ks"
[s]
