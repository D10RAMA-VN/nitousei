[title name="見えない二等星"]

[stop_keyconfig]
[hidemenubutton]
[call storage="novecole.ks"]
[plugin name="backlog"]	
@call storage="backlog.ks"

[chara_new  name="hokuto" storage="hokuto/hokuto1.png" width=900 jname="北斗" color=000]
[chara_new  name="minami" storage="minami/minami1.png" width=1200 jname="美波" color=000]
[chara_new  name="seizi" storage="seizi/seizi1.png" width=900 jname="清二" color=000]
[chara_new  name="nanao" storage="hokuto/hokuto1.png" width=900 jname="七音" color=000]
[chara_new  name="kaname" storage="hokuto/hokuto1.png" width=900 jname="奏女" color=000]
[chara_new  name="reito" storage="hokuto/hokuto1.png" width=900 jname="令人" color=000]



@call storage="tyrano.ks"

@layopt layer="message" visible=false

;[mask time=1000]
;[image layer=0 page=fore visible=true storage=logo.png]
;[mask_off time=1000]
;[wait time=1000]
;[mask time=1000]
;[freeimage layer=0 time=100]
;[mask_off time=100]


;@jump storage="title.ks"
@jump storage=scene1.ks
[s]
