[title name="陽だまりの栞"]

[stop_keyconfig]
[hidemenubutton]
[call storage="novecole.ks"]
[plugin name="backlog"]	
@call storage="backlog.ks"

[chara_new  name="souitiro" storage="shinguzi/frend.png" width=900 jname="宗一郎" color=000]
[chara_new  name="shinguzi" storage="shinguzi/frend.png" width=1200 jname="眞行寺" color=000]
[chara_new  name="child" storage="shinguzi/frend.png" width=900 jname="子供" color=000]

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
