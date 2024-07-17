*start
[cm]
[clearfix]
[start_keyconfig]
[hide time=0]
[fadeoutbgm time=300]
[wait time=500]
[voconfig sebuf=1 name="hokuto" vostorage="hokuto/hokuto_{number}.ogg" number=1 ]
[voconfig sebuf=2 name="minami" vostorage="minami2/minami_{number}.ogg" number=1 ]
[voconfig sebuf=3 name="rouzin" vostorage="seizi/takamura_{number}.ogg" number=1 ]
[voconfig sebuf=3 name="seiji" vostorage="seizi/takamura_{number}.ogg" number=22 ]
[voconfig sebuf=4 name="nao" vostorage="nao/nao_{number}.ogg" number=2 ]
[voconfig sebuf=5 name="reito" vostorage="reito/reito_{number}.ogg" number=1 ]
[voconfig sebuf=6 name="kaname" vostorage="kaname/kaname_{number}.ogg" number=1 ]
[voconfig sebuf=1 name="hutari" vostorage="mix/hai{number}.ogg" number=1 ]
[voconfig sebuf=1 name="itidou" vostorage="mix/oh{number}.ogg" number=1 ]
[voconfig sebuf=4 name="sannin" vostorage="mix/omo{number}.ogg" number=1 ]
[voconfig sebuf=3 name="hatena" vostorage="seizi/takamura_first{number}.ogg" number=1 ]
[voconfig sebuf=4 name="hatena2" vostorage="nao/nao_{number}.ogg" number=1 ]
[vostart]
[mask time=500]
[bg2 storage="seiza/520dipper.png" width=3500 height=2934 time=500 top=-1200]
[rolebutton]
[M0]
@layopt layer=message0 visible=true
[ptext name="chara_name_area" layer="message0" color="white" size=44 bold=true x=350 y=755 face="akko"]
#
[fadeinbgm time=1000 storage=seiji.ogg]
[wait time=500]
[camera time=100000 y=+600 layer=base wait=false]
[mask_off time=1000]

*1
#???
Las estrellas tienen la particularidad de que si encuentras una, o una constelación, puedes encontrar otras constelaciones a su alrededor, especialmente en las grandes, como el Cucharón o Virgo.[p][stopse buf=3]
*2
[voconfig sebuf=1 name="hatena" vostorage="hokuto/hokuto_{number}.ogg" number=272 ]
#???
…[p][stopse buf=1]
*3
[voconfig sebuf=3 name="hatena" vostorage="seizi/takamura_{number}.ogg" number=129 ]
#???
Y, sin embargo, una estrella sólo es un punto brillante. Es imposible saber qué estrella es observando sólo una. Se reconocen porque aparecen en el cielo nocturno en forma de constelaciones.[p][stopse buf=3]
#???
Porque esta justo delante del Cucharón, sabemos que la estrella del norte es una segunda estrella, es su brillo lo que nos permite saber si estamos en Leo o Virgo.[p][stopse buf=3]
*4
[voconfig sebuf=1 name="hatena" vostorage="hokuto/hokuto_{number}.ogg" number=273 ]
#???
…¿Y me estás diciendo que la personas son iguales?[p][stopse buf=1]
*5
[voconfig sebuf=3 name="hatena" vostorage="seizi/takamura_{number}.ogg" number=131 ]
#???
Sí, todo funciona de la misma manera.[p][stopse buf=3]

#
[mask time=500]
[bg2 storage="black.jpg" time=500][reset_camera]
[mask_off time=500]
Recordando, desde que era pequeño he hecho muchas cosas.[p]
Béisbol, fútbol, baloncesto, judo y kendo.[p]
En la escuela secundaria, también formé parte del consejo estudiantil.[p]
Pero no había nada que realmente me dijera: " Aquí es".[p]
No es que se me diera mal. No soy un mal atleta.[p]
Pero en algún momento, de repente sentí que había concluido mi etapa.[p]
Así que nunca llegué a perfeccionar nada y me fui a otra parte.[p]
Aunque formé parte del consejo estudiantil hasta el final del curso, no diría que pude hacer algo por mi cuenta.[p]
Así que cuando llegué a la preparatoria, pensé que sería más difícil estudiar y no tenía muchas ganas de hacer nada.[p]
[fadeoutbgm time=500]
[mask time=1000]
[bg2 storage="rouka_s.jpg" time="1000"]
[fadeinbgm  storage="bg/school.ogg" time=1000]
[minami_w_magao2]
[mask_off time=500]
#minami
Ah Hokuto.[p][stopse buf=2]
#hokuto
[hokuto_w_egao2]
Oh, Minami, buen trabajo.[p][stopse buf=1]
#
[hide]
Es después de clase, durante los primeros días de la preparatoria. Los pasillos están llenos de alumnos nuevos que acompañan a los senpais recién promovidos.[p]
Hace unos momentos, tras la reunión de orientación para los nuevos alumnos, se ha levantado la restricción de participar en los clubes. Es el llamado "Periodo para Novatos".[p]
Estaba dando vueltas por ahí preguntándome adónde ir, cuando me detuvo una chica con una figura y una voz tan fría como el hielo.[p]
…¿Acaso esta primavera me hizo pensar así? Qué expresión más rara. A fin y al cabo, ya la conocía desde hacía mucho tiempo.[p]
[minami_w_magao]
[backlay layer=base]
[filter brightness=50 layer=base page=back]
[trans layer=base time=1000]
[wt]
Minami Kuruse.[p]
Ella ha estado conmigo desde preescolar, la hija del director del hospital más grande de la ciudad (su abuelo es el director, pero su padre también trabaja allí, por lo que se llama a sí misma así en broma)[p]
[free_filter layer=base page=back]
[trans layer=base time=1000]
#minami
[mw/tun]
¿Qué piensas hacer esta vez, Hokuto?[p][stopse buf=2]
#hokuto
[hokuto_w_mu2]
¿Esta vez? Ni siquiera he visitado ningún club todavía.[p][stopse buf=1]
#minami
[mw/odoroki]
Vaya, pensaba que ya habías decidido club. Asumí que ya estabas practicando o algo así.[p][stopse buf=2]
#hokuto
[hw/akire]
¿Quién crees que soy…?[p][stopse buf=1]
#minami
[mw/tun]
Es que tú siempre empiezas algo nuevo de improvisto, Hokuto.[p][stopse buf=2]
#hokuto
[hw/magao]
Eso… no puedo negarlo. Pero si vas a decir eso, ¿qué vas a hacer TÚ?. 　¿El club de arte como en la secundaria? ¿O quizás te unirás al consejo estudiantil otra vez?[p][stopse buf=1]
#minami
[mw/iradati]
No, cualquier cosa menos el consejo estudiantil. Tú me arrastraste para empezar, y sin darme cuenta, me obligaron a ser la presidenta del consejo estudiantil.[p][stopse buf=2]
#hokuto
Pero lo hacías bastante bien.[p][stopse buf=1]
#minami
Lo hacía mejor que alguien por ahí que no hacía su trabajo. Pero me cansé. En cuanto al club de arte, no soy muy buena pintora, no encajé allí.[p][stopse buf=2]
#hokuto
[hw/akire]
Entonces, ¿Qué piensas hacer?[p][stopse buf=1]
#minami
[mw/magao]
…Hmmm, no sé. El que me gustó en la reunión de orientación fue el club de música ligera…[p][stopse buf=2]
#hokuto
[hw/aseri]
El club de música ligera…[p][stopse buf=1]
#
[fadeoutbgm time=1000]
[chara_hide_all time=500]
[bg2 storage="stage.jpg" time="1000"]
Trato de recordar la reunión de orientación.
Sólo había tres personas en el escenario del auditorio.[p]
La banda sólo tenía guitarra y voz, bajo y batería.[p]
No soy músico, pero me parece que eso se llamaba un trío.[p]
Pero la vocalista era tan buena que costaba creer que fuera una estudiante de preparatoria.[p]
Además, los otros dos músicos acompañantes también lo hicieron muy bien.[p]
…Puedo decir honestamente que me sorprendió. Fue una gran actuación.[p]
Pero sobre todo, me impresionó lo alegres que se veían la vocalista y la bajista.[p]
Parecía que se lo pasaban mejor que nunca.[p]
[fadeinbgm  storage="bg/school.ogg" time=1000]
[bg2 storage="rouka_s.jpg" time="1000"]
[hokuto_w_magao left="40" wait=false][minami_w_magao left="640"]
#hokuto
Pero hay un montón de otros clubes de música, ¿no?[p][stopse buf=1]
#minami
[mw/bishou]
Es sólo que, me di cuenta de que estaban haciendo su mejor esfuerzo, aunque sólo eran 3, y sentí que parecían pasar el mejor momento de sus vidas…[p][stopse buf=2]
#hokuto
[hw/metozi]
……[p][stopse buf=1]
#minami
[mw/uwame]
¿Hokuto?[p][stopse buf=2]
#hokuto
[hw/egao2]
Entonces pasemos por el club de música ligera.[p][stopse buf=1]
#minami
[mw/odoroki]
¿Eh?[p][stopse buf=2]
#hokuto
[hw/magao]
Te interesa, ¿verdad?[p][stopse buf=1]
#minami
Pues sí, ¿a ti también?[p][stopse buf=2]
#hokuto
[hw/egao2]
Me acabo de dar cuenta de que nunca he tratado de tocar música. Así que me interesa, vamos.[p][stopse buf=1]
[anim layer=0 left="-=100" effect=easeInQuad opacity=0 time=500]
#minami
¡Espera! ¡Deja de jalarme!～～[p][stopse buf=2]
#
[chara_hide_all time=0]
[fadeoutbgm time=1000]
[wait time=500]
#
[bg2 storage="ongaku.jpg" height=1554 top="-200" time="1500" method=fadeInLeft]
[fadeinbgm storage=nichijo.ogg time=1000]
[nao_niko2]
#？？
¡Bienvenidos al club de música ligera Shikakita! Puede que lo haya dicho en el concierto de orientación, pero me presentaré de nuevo.[p][stopse buf=4]
#minami
[mw_tere]
S-Sí, por favor.[p][stopse buf=2]
#
[nhide wait=false][mmhide]
Y así, llegamos al club.[p]
Mientras que otros clubes de música tienen aulas en cabinas prefabricadas en las esquinas de la escuela, probablemente por falta de espacio, Este club tiene su propio salón en el edificio de la escuela.[p]
#nao
[nao_bishou]
Soy la presidenta del club, tercer año, Nao Hoshina. En la banda toco la guitarra y canto.[p][stopse buf=4]
#
[backlay layer=base]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time=0]
[filter brightness=50 layer=base page=back]
[trans layer=base time=1000]
[wt]
Esta mujer, la presidenta del club, está llena de energía, sacude su cabello largo hasta la cintura y habla alegremente.[p]
Hay una pizca de inocencia en su rostro, pero cuando cantaba se veía muy imponente.[p]
[free_filter layer=base page=back]
[trans layer=base time=1000]
[nhide]
#kaname
[kaname_bishou]
Soy Kaname Amamiya, la vicepresidenta y estoy en tercer año. Toco el bajo.[p][stopse buf=6]
#
[backlay layer=base]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time=0]
[filter brightness=50 layer=base page=back]
[trans layer=base time=1000]
[wt]
Esta persona, a diferencia de la presidenta del club, tiene el pelo corto y una sonrisa amable.[p]
[free_filter layer=base page=back]
[trans layer=base time=1000]
[khide]
#reito
[reito_magao left=360]
…Soy Reito Souma, de segundo año, toco la batería.[p][stopse buf=5]
#
[backlay layer=base]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time=0]
[filter brightness=50 layer=base page=back]
[trans layer=base time=1000]
[wt]
Y un hombre de segundo año.[p]
En la reunión de orientación los que hablaron fueron la presidenta y la vicepresidenta, así que me quedé pensando en él. Parecía muy astuto y silencioso…[p]
…Tal vez sea una persona que da miedo.[p]
#kaname
[bg2 storage="ongaku.jpg" height=1554 top="-200" page=back time=0][free_filter layer=base page=back]
[trans layer=base time=1000]
[kaname_niyake]
¡Wow, Reito-kun, estás tan nervioso![p][stopse buf=6]
#reito
[r/komari]
P-Por favor, para…[p][stopse buf=5]
#
[khide]
O de pronto no.[p]
Sus ojos se relejan después de un rato, parece que no sabe cómo lidiar con todo esto.[p]
Este es una de esas personas. De las que molestan mucho…[p]
[chara_hide name="reito" time="700"]
#nao
[nao_niko]
Así que, en estos momentos, nuestro club cuenta con 2 alumnos de tercer año y uno de segundo.[p][stopse buf=4]
#minami
[mw_magao]
…La mayoría son de tercer año.[p][stopse buf=2]
[mmhide]
#kaname
[kaname_kanasimi left=-120]
Sí… Nos preocupa que cuando nos retiremos este verano, sólo quede una persona en este club.[p][stopse buf=6]
#reito
[reito_tukomi left=840]
Vicepresidenta, no tienes que contarles todo eso…[p][stopse buf=5]
#nao
[n/magao]
Pero, es verdad que estarás solo después de que nos vayamos, Reito-kun.[p][stopse buf=4]
#nao
Por eso, me encantaría que ustedes dos se unieran a nosotros y—— un momento, ni siquiera me han dicho sus nombres, ¿pueden presentarse?[p][stopse buf=4]
[hide]
#hokuto
[hokuto_w_egao2]
¡Si![p][stopse buf=1]
#hokuto
Soy de primer año, Hokuto Kagaya. ¡Me emocionó mucho su concierto![p][stopse buf=1]
#hokuto
Y esta es mi amiga de la infancia Minami Kuruse[p][stopse buf=1]
#minami
[minami_w_iradati]
Oye, no tienes que presentarme…[p][stopse buf=2]
#kaname
[k_bishou2]
Wow, amigos de la infancia, que envidia…[p][stopse buf=6]
[mkhide]
#reito
[r_magao]
…¿Hmm? ¿Kuruse? Creo que he escuchado ese apellido antes…[p][stopse buf=5]
[mrhide]
#nao
[n_iradati]
¿En donde lo escuché?[p][stopse buf=4]
[mnhide]
#hokuto
Su familia administra el hospital. Lo han visto antes, el Hospital General Kuruse, el que está frente a la estación.[p][stopse buf=1]
#nao
[n_niko]
Oh, ¿ese sitio? Paso justo por delante todo el tiempo.[p][stopse buf=4]
[mnhide]
#minami
[mw/dere2]
N-No tenemos que hablar de mi familia…[p][stopse buf=2]
#nao
[n_niko3]
Ya veo. Por cierto, ¿por qué viniste al club, Minami? Me gustaría que me dijeras～[p][stopse buf=4]
[mnhide]
#minami
[mw/dere]
…Estaba visitando diferentes clubes, y de repente Hokuto me arrastró hasta el club de música ligera…[p][stopse buf=2]
#kaname
[k_niko]
Ya veo, ustedes dos son cercanos, ¿no?[p][stopse buf=6]
[mkhide]
#minami
[mw/tere]
¿C-Cercanos? Yo solo estoy cuidándolo…[p][stopse buf=2]
#hokuto
[hw/iradati]
¿Ah? ¿A qué te refieres?[p][stopse buf=1]
#minami
[mw/tun2]
Porque siempre estás haciendo locuras, ¡tengo que vigilarte![p][stopse buf=2]
#hokuto
[hw/iradati2]
¡¿Qué?![p][stopse buf=1]
#kaname
[k_niyake]
¡AH! Esto no es a lo que llaman…[p][stopse buf=6]
[mkhide]
#reito
[r_magao]
……[p][stopse buf=5]
[mrhide]
#nao
[n_kanasimi]
Ya veo, creo que ya entendí…[p][stopse buf=4]
[mnhide]
#minami
[mw/tun]
¿D-De qué hablas?[p][stopse buf=2]
#reito
[r_bishou]
Uhh, perdón por todas las preguntas pero, ¿en qué clubes estaban en la escuela secundaria?[p][stopse buf=5]
[mrhide]
#hokuto
[hw/egao2]
Yo estaba en el club de baloncesto.[p][stopse buf=1]
#kaname
[k_bishou]
Baloncesto, ¿empezaste en la escuela secundaria?[p][stopse buf=6]
[mkhide]
#hokuto
[hw/bishou][kanim name="hokuto" keyframe="nod" time="500"]
Sí. Cuando estaba en la primaria, estuve en béisbol juvenil, fútbol, judo, karate…[p][stopse buf=1]
#kaname
[k_magao]
Vaya, has hecho muchas cosas.[p][stopse buf=6]
[mkhide]
#hokuto
[hw/mu][kanim name="hokuto" keyframe="nod" time="500"]
Sí. Pero no me sentí bien en ninguno de ellos, o algo así…[p][stopse buf=1]
#minami
[mw/magao]
…[p][stopse buf=2]
#kaname
[k_magao]
Ya veo… ¿Y tú, Minami-chan?[p][stopse buf=6]
[mkhide]
#minami
[mw/tun]
Pues, yo estaba en el club de arte…[p][stopse buf=2]
#nao
[n_niko2]
El club de arte, ¡Qué bien![p][stopse buf=4]
#minami
[mw/kanasimi]
…Pero estaba tan ocupada con las actividades del consejo estudiantil que apenas asistía.[p][stopse buf=2]
#nao
[n_iradati]
¡¿Consejo estudiantil?![p][stopse buf=4]
[mnhide]
#hokuto
[hw/egao2]
Ella era la presidenta del consejo estudiantil. Y yo era el vicepresidente.[p][stopse buf=1]
#kaname
[k_iradati]
¿Y eras la Presidenta?[p][stopse buf=6]
[mkhide]
#minami
[mw/akire]
…Eso fue porque Hokuto me dijo que lo hiciera.[p][stopse buf=2]
[vostop][voconfig sebuf=1 name="hokuto" vostorage="hokuto/hokuto_{number}.ogg" number=24 ][vostart]
#hokuto
[hw/akire]
No, los dos empezamos como miembros del consejo. En otoño de nuestro segundo año, nos pidieron que alguien más fuera presidente, y pensé que Minami era la más adecuada para el puesto.[p][stopse buf=1]
#nao
[n_bishou]
Oh, ya veo. En fin, hablemos de nuestra agenda y nuestros futuros eventos…[p][stopse buf=4]
#
[fadeoutbgm time=1000]
[mask time=500]
[hide time=1000][mnhide time=0]
[mask_off time=500]
……[p]
[nao_bishou]
#nao
Por el momento, nuestro principal objetivo es organizar un concierto de graduación a principios de agosto.[p][stopse buf=4]
#hokuto
[hw_metozi]
Acabamos de unirnos al club y ya estamos hablando de sus graduaciones…[p][stopse buf=1]
[mhhide]
#minami
[mw_tun]
Oye, Hokuto, estás siendo grosero.[p][stopse buf=2]
[mmhide]
#nao
[n/niko]
Está bien, es la verdad. Por suerte nos permiten retirarnos más tarde. En otros clubes normalmente te retirarías en junio.[p][stopse buf=4]
#kaname
[kaname_niko]
Creo que todo es gracias a nuestros viejos senpais que crearon todas esas reglas.[p][stopse buf=6]
#nao
[n/bishou]
Así que, si se unen al club, tendrán hasta agosto para aprender a tocar un instrumento, ejercicios vocales o cualquier otra cosa que quieran hacer.[p][stopse buf=4]
#hokuto
[hw_odoroki]
Eh, ¿no es muy rápido?[p][stopse buf=1]
[mhhide]
#kaname
No te preocupes, es sorprendentemente fácil de entender.[p][stopse buf=6]
#nao
[n/niko]
Y si quieres, los dejaremos cantar todo lo que quieran. No hay muchos otros clubes de música ligera que dejen hacer tanto a los novatos, ¿sabes?[p][stopse buf=4]
#minami
[mw_magao2]
…Suena como una especie de anuncio sospechoso de un trabajo, ¿no?[p][stopse buf=2]
[mmhide]
#kaname
[k/niyake]
¡Ah!, Hasta sabes responder adecuadamente. ¡Tienes un gran sentido del humor![p][stopse buf=6]
#minami
[mw_magao2]
Al menos niéguenlo, por favor…[p][stopse buf=2]
[mmhide]
#kaname
[k/niko]
Está bien, está bien. No vamos a exprimirlos o algo así. ¡Simplemente nos divertiremos cantando![p][stopse buf=6]
#nao
[n/bishou]
Sólo les pido que el club siga vivo con Reito-kun, pero sobre todo, debemos divertirnos todos. Eso se los garantizo.[p][stopse buf=4]
#
[hide]
[vostop]
[reito_kanasimi]
#reito
……[p][stopse buf=5]
[rhide]
[voconfig sebuf=5 name="reito" vostorage="reito/reito_{number}.ogg" number=8 ][vostart]
[nao_niko2 wait=false left=730][kaname_kanasimi left=140]
#kaname
Creo que eso es todo lo que teníamos que decirles.…[p][stopse buf=6]
#nao
…¿Le gustaría unirse al club?[p][stopse buf=4]
[hide]
#hokuto
[hokuto_w_egao2]
¡Me uniré al club![p][stopse buf=1]
#minami
[font size=30][minami_w_odoroki]
¡¿Inmediatamente?! ¿Por qué no lo piensas un poco más?[p][stopse buf=2]
[resetfont]
#hokuto
[hw/bishou]
No te preocupes. Este sitio se ve interesante.[p][stopse buf=1]
#
Todo el mundo parece agradable y confiable.[p]
Pero, sobre todo, cuando descubro algo interesante, no dudo en participar.[p]
#minami
[mw/akire]
ya veo…[p]
#
Después de mirarme horrorizada por un segundo, al instante Minami pareció haber llegado también a una conclusión.[p]
#minami
[kanim name="minami" keyframe="nod" time="500"]
Está bien, lo siento, permítanme unirme también.[p][stopse buf=2]
[voconfig sebuf=2 name="minami" vostorage="minami/minami_{number}.ogg" number=30 ]
[hide]
#nao
[nao_niko]
¿En serio?[p][stopse buf=4]
#minami
[mw_bishou]
Sí. Además… la verdad, al principio yo también estaba interesada en el club de música ligera. Me gustaría intentarlo.[p][stopse buf=2]
[mmhide]
#nao
[n/niko2]
¡Genial! ¡Atrapamos dos frescos![p][stopse buf=4]
#reito
[reito_komari left=840]
No lo digas así…[p][stopse buf=5]
#kaname
[kaname_bishou left=-120]
Bueno, de momento, como estamos en el Periodo de Novatos, de momento serán miembros provisionales. Pueden visitar otros clubes, ¡o practicar con nosotros si lo desean![p][stopse buf=6]
#kaname
Sin embargo, aún no hemos decidido qué canciones cantaremos en nuestro próximo concierto.[p][stopse buf=6]
#nao
[n/bishou]
Entonces por ahora podemos tocar los instrumentos.[p][stopse buf=4]
#
[hide]
[hokuto_w_egao2 left=640 wait=false][minami_w_egao2 left=40]
#二人
¡Si![p][stopse buf=1]

#
And thus our life in the Light Music Club began.[p]
[fadeoutbgm time=1000]
[mask time=500]
[hide time=0]
[bg2 storage="michi_n.jpg" time="1500"]
[fadeinbgm  storage="bg/river.ogg" time=1000]
[mask_off time=500]

#hokuto
[hokuto_w_mu2]
Ya está oscuro……[p][stopse buf=1]
#minami
[minami_w_magao]
Sí, démonos prisa en volver a casa.[p][stopse buf=2]
#hokuto
[hw/akire]
Cuando llegue a casa tendré que preparar las clases de mañana…[p][stopse buf=1]
#minami
[mw/magao2]
No me recuerdes eso… Pero no hay nada que hacer, es una preparatoria de alto nivel al fin y al cabo.[p][stopse buf=2]
#hokuto
[hw/mu2][kanim name="hokuto" keyframe="nod" time="500"]
Sí, pero… no pensé que sería tan difícil tras sólo dos semanas en el club…[p][stopse buf=1]
#
[hide]
Habían pasado dos semanas desde la reunión de orientación.[p]
Todavía estábamos en el período de novatos, por lo que algunos otros estudiantes vinieron a ver el club, [p]
Pero ninguno llegó a unirse al club todavía, por lo que después de la escuela teníamos una sesión de entrenamiento tanto para mí como para Minami.[p]
[minami_w_magao left=40 wait=false][hokuto_w_metozi left=640]
#minami
No podemos evitarlo, nuestros compañeros de tercer año dejarán el club en verano.[p][stopse buf=2]
#minami
Si no nos independizamos pronto, no podremos tocar como es debido.[p][stopse buf=2]
#hokuto
[hw/metozi]
Hay cinco miembros en el club, incluidos nosotros dos. También hay dos estudiantes de tercer año que se van a graduar. Si lo pensamos bien, a duras penas llegamos. Ojalá consigamos más miembros.[p][stopse buf=1]
#minami
[mw/magao2]
Pero el Periodo de Novatos está a punto de terminar, y todos los que vinieron parecían estar pensando en unirse a otro club…[p][stopse buf=2]
#hokuto
[hw/akire]
La mayoría parecían estar sólo mirando… Seriamente, podríamos ser sólo nosotros dos.[p][stopse buf=1]
#minami
[mw/akire]
Santo cielo, ni siquiera tuve la oportunidad de visitar los otros clubes por la culpa de alguien por ahí.[p][stopse buf=2]
#hokuto
[hw/iradati]
¿Ahora es culpa mía? Tampoco me dijiste que querías pasarte por otro club, Minami.[p][stopse buf=1]
#minami
[mw/uwame][font size=20]
…Bueno, es porque me pediste que te acompañara……[p][stopse buf=2]
[resetfont]
#hokuto
[hw/magao]
¿Hmm? ¿Qué?[p][stopse buf=1]
#minami
[mw/tun]
¡N-Nada![p][stopse buf=2]
#hokuto
[hw/aozame]
Y no pensé que fuera tan difícil aprender a tocar la guitarra…[p][stopse buf=1]
#minami
[mw/magao]
…realmente no tienes un plan, ¿verdad? ¿Por qué no te das prisa y te acabas "Estrellita donde estás"?[p][stopse buf=2]
#hokuto
[hw/iradati2]
Y tú, aprendiste a tocar el teclado tan fácilmente.[p][stopse buf=1]
#minami
[mw/bishou]
Tomé clases de piano en preescolar.  Me cansé y lo dejé en tercero. Pero mis dedos lo recuerdan sorprendentemente bien.[p][stopse buf=2]
#hokuto
[hw/iradati]
Lo sabia…[p][stopse buf=1]
#minami
[mw/akire]
Bueno, hay muchas cosas nuevas que aprender, como acordes y la formación de sonidos y cosas así. Es tan diferente de la música clásica que resulta difícil.[p][stopse buf=2]
#hokuto
[hw/kanasimi2]
Pero tú y yo partimos de puntos diferentes…[p][stopse buf=1]
#minami
[mw/magao2]
No estoy segura si eso es verdad... pero es extraño, porque normalmente en situaciones como estas, Tu eres el que entiende de inmediato.[p][stopse buf=2]
#hokuto
[hw/kanasimi2]
Tienes razón… En deportes pasaba eso.[p][stopse buf=1]
#minami
[mw/magao]
……[p][stopse buf=2]
#hokuto
[hw_magao]
…¿Qué?[p][stopse buf=1]
#minami
[mw_tun]
…no, nada, sólo me divierte verte en apuros.[p][stopse buf=2]
#hokuto
[hw/iradati2]
¿Qué? Maldita sea, espera y verás… ¿Hmm?[p][stopse buf=1]

#
[fadeinbgm time=1000 storage=seiji.ogg]
[hide]
;視線移動のエフェクト
[bg2 storage="still_takamura.png" time="1000"][eval exp="sf.ST1=1"]
Aparté la mirada mientras me enfadaba y vi una figura en la esquina de mi ojo.[p]
O mas bien, fue ese telescopio lo primero que me llamó la atención.[p]
Un anciano la mira fijamente mientras el telescopio apunta hacia el cielo.[p]

[bg2 storage="michi_n.jpg" time="1000"]
[minami_w_magao2 left=40 wait=false][hokuto_w_mu2 left=640]
#minami
¿Hm? ¿Que pasó?[p][stopse buf=2]
#hokuto
Allí, en la orilla del río…[p][stopse buf=1]
#minami
[mw/magao]
¿En la orilla del rio?… Oh, ¿El anciano del telescopio?[p][stopse buf=2]
#hokuto
[hw/odoroki]
¿Lo conoces?[p][stopse buf=1]
#minami
[mw/bishou]
No, pero es famoso en el barrio. "Un anciano que siempre mira las estrellas en la orilla del río"[p][stopse buf=2]
#hokuto
[hw/mu]
Ya veo, no sabía.[p][stopse buf=1]
#minami
[mw/akire]
No sabes porque no te socializas con tus vecinos ni nada de eso…[p][stopse buf=2]
#hokuto
[hw/akire]
Cállate. ¿Pero él está siempre aquí?[p][stopse buf=1]
#minami
[mw/bishou]
Eso dicen. En una noche despejada como ésta, siempre lo hace. A menudo se queda aquí hasta que sale el sol.[p][stopse buf=2]
#hokuto
[hw/odoroki]
¡¿En serio?![p][stopse buf=1]
#minami
[mw/magao][kanim name="minami" keyframe="nod" time="500"]
Sí, pero nadie sabe por qué está tan obsesionado con mirar las estrellas.[p][stopse buf=2]
#hokuto
[hw/mu2]
¿Qué? ¿A pesar de que lo conocen por eso?[p][stopse buf=1]
#minami
[mw/magao2]
No, sólo lo ven por ahí, pero no hablan con él. No parece salir mucho de casa durante el día, por lo que no parece socializar con los vecinos…[p][stopse buf=2]
#
[mhide]
#hokuto
[hw/metozi]
Hmmm……[p][stopse buf=1]
#
[hide]
[bg2 storage="still_takamura.png" time="1000"]
[playse  storage="se/step_grass.ogg" ]
No sé por qué lo hice, pero me encontré descendiendo por la orilla del río y me acerqué al anciano.[p]
#minami
[mw_aozame]
¡¿Oye?![p][stopse buf=2]
[mmhide]
#hokuto
[hw_egao2]
Hola anciano, ¿Qué está haciendo aquí?[p][stopse buf=1]
[mhhide]
#rouzin
¿Hmm? ¿No lo ves? Estoy buscando una estrella.[p][stopse buf=3]
#hokuto
[hw_magao]
¿Busca una estrella? Hay cientos ahí fuera.[p][stopse buf=1]
[mhhide]
#rouzin
No busco una estrella que pueda ver. Estoy buscando una estrella invisible ahora mismo.[p][stopse buf=3]
#hokuto
[hw_kanasimi]
¿Una estrella invisible?[p][stopse buf=1]
[mhhide]
#minami
[mw_odoroki]
¡Espérame! Lo siento, por hablarle así de repente.[p][stopse buf=2]
[mmhide]
#rouzin
No me importa. Me estaba cansando de hablar sólo con policías de mirada muerta.[p][stopse buf=3]
#hokuto
[hw_magao]
Entonces, ¿qué quiere decir con que está buscando estrellas invisibles?[p][stopse buf=1]
[mhhide]
#rouzin
Una estrella que llevo años buscando y que aún no he encontrado.[p][stopse buf=3]
#hokuto
[hw_akire]
Vaya… ¿por qué pasar años buscando algo que ni siquiera sabe que existe?[p][stopse buf=1]
[mhhide]
#rouzin
……Porque estoy seguro de que existe.[p][stopse buf=3]
#hokuto
[hw_odoroki]
?? …¿Cómo así? ¿En teoría debería estar ahí?[p][stopse buf=1]
[mhhide]
#rouzin
……Sí, algo así.[p][stopse buf=3]
#hokuto
[hw_magao]
¿Hmm…?[p][stopse buf=1]
[mhhide]
#
¿De qué habla este anciano? No lo entiendo.[p]
Pero mientras habla, no aparta la vista de su telescopio.[p]
Había algo en su apariencia que me atrajo hacia él.[p]
Así que hable como siempre lo hago.[p]
[fadeoutbgm time=1000]
#hokuto
[hw_egao2]
…En ese caso, ¿puedo ayudarlo a buscarla? No sé si le ayudará en algo.[p][stopse buf=1]
[mhhide]
#
[bg2 storage="kawa_n.jpg" time=1000]
[hokuto_w_egao2][seizi_magao]
#rouzin
…Oh.[p][stopse buf=3]
#
Fue sólo entonces cuando el anciano dirigió su mirada hacia mí.[p]
[chara_move name="hokuto" time=700 left=360 anim=true wait=false][chara_move name="seiji" time=700 left=-195 anim=true wait=false][minami_w_odoroki left=840]
#minami
Oye, ¿de qué estás hablando?… Lo siento mucho.[p][stopse buf=2]
#rouzin
…No, parece que hay jóvenes interesantes hoy en día. Claro, puedes acompañarme.[p][stopse buf=3]
#minami
[mw/tere]
¡¿Eh?![p][stopse buf=2]
#hokuto
¡Que bien![p][stopse buf=1]
#rouzin
[s/mu]
Ven aquí, te enseñaré a usar el telescopio.[p][stopse buf=3]
#hokuto
[kanim name="hokuto" keyframe="nod" time="500"]
¡Sí![p][stopse buf=1]
#
[hide][minami_w_aozame]
#minami
E-Espera…[p][stopse buf=2]
#rouzin
[s_magao]
Usted también, señorita. Ven aquí. No quiero tener que repetir esto dos veces.[p][stopse buf=3]
[mshide]
#minami
[mw/oogoe]
¿Que? ¿Qué está pasando?～[p][stopse buf=2]

#
[hide]
Así que los tres miramos las estrellas juntos esa noche hasta las 9:00 p.m.[p]
Minami estaba nerviosa todo el tiempo, pero sus padres trabajaban en la noche, así que no me preocupaba que se enteraran, por lo que me dedique a mirar las estrellas mientras le pedía al viejo que me enseñara.[p]
[fadeoutbgm time=1000]
[bg2 storage="still_kansoku.png" time=1000][eval exp="sf.ST2=1"]
#rouzin
Ahora, en lugar de mirar a una estrella que ni siquiera conoces, es mejor empezar mirando una estrella conocida.[p][stopse buf=3]
#rouzin
De lo contrario, sólo mirarás al cielo vacío sin ningún rumbo.[p][stopse buf=3]
#hokuto
¡Entendido![p][stopse buf=1]
#rouzin
Ya he ajustado el visor y el zoom. Vamos a empezar observando la luna.[p][stopse buf=3]
#hokuto
¿La luna? ¿Puedes ver bien el patrón del conejo y todo eso?[p][stopse buf=1]
#rouzin
Hoy la luna es creciente, así que no podrás ver tan lejos. Eso lo puedes ver durante una noche de luna llena.[p][stopse buf=3]
#rouzin
Pero los días de luna llena no son muy buenos para mirar las estrellas, porque la luz de la luna es demasiado brillante e impide ver las demás estrellas.[p][stopse buf=3]
#hokuto
Ya veo… ¡oh, la luna creciente es preciosa![p][stopse buf=1]
#minami
…¿Cómo puede la luz de la luna impedir ver las demás estrellas?[p][stopse buf=2]
#rouzin
Sí, depende de la estrella. La luz de las estrellas normales es bastante débil.[p][stopse buf=3]
#rouzin
Las luces de las calles, las luces de la ciudad.  No sólo eso, incluso la luz de los teléfonos móviles y linternas puede obstruir la luz de las estrellas.[p][stopse buf=3]
#rouzin
Aunque la luna esté en el mismo cielo nocturno, sigue siendo una fuente de luz.[p][stopse buf=3]
#rouzin
…Esta parte solía tener una mejor vista de las estrellas. Hoy en día es mucho más ciudad.[p][stopse buf=3]
#minami
Ehhh…[p][stopse buf=2]
#hokuto
Minami también está interesada.[p][stopse buf=1]
#minami
¡¡N-No es eso!![p][stopse buf=2]
#rouzin
Oh, así que te llamas Minami… Ahora que lo pienso, no les he preguntado sus nombres.[p][stopse buf=3]
#minami
Oh, disculpe. Mi nombre es Minami Kuruse.[p][stopse buf=2]
#hokuto
Mi nombre es Hokuto Kagaya. ¿Cuál es tu nombre, viejo?[p][stopse buf=1]
#rouzin
…Soy Takamura. Seiji Takamura… Pero, Te llamas Hokuto-kun? Ese nombre viene de una estrella.[p][stopse buf=3]
#hokuto
Sí, me pusieron el nombre en honor al Cucharón.[p][stopse buf=1]
#seiji
Ya veo. Perfecto, el Cucharón es visible en primavera. Miremos entonces al Cucharón.[p][stopse buf=3]
#
Entonces el viejo, que se presentó como Takamura, tocó el telescopio, tal vez para reducir su zoom, y luego cambió su dirección.[p]
[fadeinbgm storage=kaisou.ogg time=500]
[bg2 storage="seiza/419dipper.png" width=2279 height=1909 time=500 left=-700 top=-350 wait=false]
[image layer=1 storage=lens.png time=500 visible=true]

#seiji
[s_mu]
¡Muy bien, echa un vistazo![p][stopse buf=3]
[mshide]
#hokuto
[hw_mu2]
Oh, puedo ver siete estrellas.[p][stopse buf=1]
[mhhide]
#seiji
[s_metozi]
No existe exactamente una constelación llamada el Cucharón, sino que es parte de la cola de la Osa Mayor.[p][stopse buf=3]
[mshide]
#hokuto
[hw_odoroki]
¿En serio?[p][stopse buf=1]
[mhhide]
#minami
[mw_magao2]
¿Dónde he oído hablar antes de la "Osa Mayor"…?[p][stopse buf=2]
[mmhide]
#seiji
[s_mu]
En la antigua Grecia, una mujer que había tenido un hijo de Zeus fue convertida en osa por Hera, la verdadera esposa de Zeus, porque estaba celosa… Esa es la historia de esa constelación.[p][stopse buf=3]
#seiji
Pero en la mayor parte del mundo tiene el aspecto de un gran cucharón, o eso he oído.[p][stopse buf=3]
[mshide]
#hokuto
[hw_mu]
Bueno, no se ve mucho más que las siete estrellas, suena más natural decir que estas siete estrellas son la constelación.[p][stopse buf=1]
[mhhide]
#seiji
[s_mu]
Estoy seguro de que hay otras razones por las que la gente no piensa en el Cucharón como parte de la Osa Mayor.　Creo que es más obvio si la observas sin usar el telescopio.[p][stopse buf=3]
#
[mshide]
A continuación, el viejo apuntó hacia el cielo nocturno y señaló al Cucharón.[p]
[bg2 storage="seiza/419dipperName.png" width=2279 height=1909 time=700 left=-300 top=-400 wait=false]
[freeimage layer=1 time=700]
#seiji
[s_magao]
Si piensas en el Cucharón, hay dos estrellas que son los extremos de la sección del cucharón que recogería el agua. Se llaman Dube, la estrella Alfa, y Merak, la estrella Beta…[p][stopse buf=3]
[mshide]
#hokuto
[hw_aozame]
¿Alfa, beta…?[p][stopse buf=1]
[mhhide]
#seiji
[s_mu]
Bueno, no importa cómo se llamen. Mide su distancia con tu dedo… Y si estiras esa longitud cinco veces más… ¿No ves una estrella un poco más brillante?[p][stopse buf=3]
[mshide]
#hokuto
[hw_mu]
¿Cinco veces…? Si veo algo, ¿cuál es esa estrella?[p][stopse buf=1]
#
[mhhide]
[bg2 storage="seiza/419dipperHName.png" width=2279 height=1909 time=500 left=-300 top=-400]
#minami
[mw_magao]
La Estrella Polar, ¿verdad?[p][stopse buf=2]
[mmhide]
#hokuto
[hw_odoroki]
Oh, siento que hicimos esto en la escuela secundaria…[p][stopse buf=1]
[mhhide]
#seiji
[s_hohoemi]
Aunque tu nombre viene de la Estrella Polar, ¿no sabias cómo encontrarla?[p][stopse buf=3]
[mshide]
#hokuto
[hw_odoroki]
No, creo que oí algo sobre eso en alguna parte… La Estrella Polar significa que por allá está el norte, ¿no?[p][stopse buf=1]
[mhhide]
#seiji
[s_mu]
Sí. Antiguamente, los viajeros, marineros y otros se basaban en la Estrella Polar cuando no sabían en qué dirección ir.[p][stopse buf=3]
#seiji
El cielo estrellado cambia de posición de este a oeste con el tiempo debido a la rotación de la Tierra, pero únicamente la estrella polar mantiene su posición.[p][stopse buf=3]
#seiji
Es difícil medir los puntos cardinales con otras estrellas cuando las encuentras, pero con la estrella polar, apenas la encuentras, sabes que está hacia el norte.[p][stopse buf=3]
[mshide]
#hokuto
[hw_odoroki]
Y la clave para encontrar una estrella tan importante es el Cucharón…[p][stopse buf=1]
[mhhide]
#seiji
[s_mu]
Correcto. El Cucharón también está siempre orientado en la dirección de la Estrella Polar, por lo que puedes encontrarla siempre.　Pero sólo en las noches de invierno y primavera.[p][stopse buf=3]
[mshide]
#minami
[mw_magao]
Así que puedes ver diferentes estrellas en diferentes momentos del año, dependiendo de la estación.[p][stopse buf=2]
[mmhide]
#hokuto
[hw_bishou]
Según la estación... Ah, como el Triángulo de Verano en Tanabata. Pero eso no cambia el hecho de que las constelaciones son absolutamente esenciales para localizar estrellas importantes.[p][stopse buf=1]
#hokuto
Mi papá sí que me puso un buen nombre, ¿no?[p][stopse buf=1]
[mhhide]
#minami
[mw_kanasimi]
……[p][stopse buf=2]
[mmhide]
#seiji
[s_mu]
…por cierto, también se puede encontrar la estrella polar desde Casiopea.[p][stopse buf=3]
[mshide]
#hokuto
[hw_odoroki]
¿Eh? ¿En serio?[p][stopse buf=1]
[mhhide]
#seiji
[s_magao]
Si. ¿Ves esas 5 estrellas que se parecen a la letra W del alfabeto? En la parte superior de la W, si la estiras cinco veces, igual que antes…[p][stopse buf=3]
#
[mshide]
[bg2 storage="seiza/419dipperK.png" width=2800 height=2346 time=500 left=0 top=-1250]
#hokuto
[hw_kanasimi]
…Igual que desde el lado del Cucharón. Y ahí está la estrella polar… No sé por qué, pero me sorprende saber que hay otra forma de encontrarla…[p][stopse buf=1]
[mhhide]
#seiji
[s_hohoemi]
Ha ha ha. El cielo estrellado siempre ha sido prácticamente igual. Puedes encontrar muchas maneras de encontrar una sola estrella.[p][stopse buf=3]
#
[mshide]
Tiene razón. Estábamos hablando de mitología griega, y de cómo encontrar la Osa Mayor.[p]
Y se supone que la mitología griega se creó en a.C.[p]
#hokuto
[hw_metozi]
（¿…? Si es así, ¿qué estrella estás buscando? ¿Una estrella que no tienes forma de encontrar? ¿Qué tipo de estrella es?）[p][stopse buf=1]
[mhhide]
#minami
[mw_magao]
…Y sin embargo, la estrella Polaris es un poco apagada, difícil de encontrar.[p][stopse buf=2]
#minami
Sin el Cucharón, la perdería de vista y no sabría qué estrella es. Esa estrella de allí es más brillante y más visible…[p][stopse buf=2]
#
[mmhide]
[bg2 storage="seiza/420virgo.png" width=2150 height=1280 time=500 left=0 top=-200]
#seiji
[s_magao]
¿Eh?… Ah, te refieres a Spica en la constelación de Virgo.[p][stopse buf=3]
[mshide]
#minami
[mw_odoroki]
¡¿Esa constelación es Virgo?![p][stopse buf=2]
[mmhide]
#seiji
[s_hohoemi]
Oh, eso llamó tu atención. ¿Por casualidad eres Virgo, Minami-kun?[p][stopse buf=3]
[mshide]
#minami
[mw_bishou]
Sí.[p][stopse buf=2]
[mmhide]
#hokuto
[hw_egao2]
Por cierto, yo soy Leo.[p][stopse buf=1]
[mhhide]
#minami
[mw_tun]
¡No te preguntó, Hokuto![p][stopse buf=2]
[mmhide]
#seiji
[s_kuti]
Ha ha, Ya veo. Parece que los dos nacieron en verano.[p][stopse buf=3]
#
[mshide]
¿Qué? ¿Puede saber en qué estación nacimos con sólo preguntarnos nuestras constelaciones?[p]
Yo nací el 7 de agosto y Minami el 7 de septiembre, nacimos exactamente el mismo día.[p]
…No me digas que este viejo se ha memorizado todos los cumpleaños del horóscopo…[p]
#minami
[mw_odoroki]
Sí. Pero, aún estamos en abril… ¿Cómo podemos ver a Virgo?…[p][stopse buf=2]
[mmhide]
#seiji
[s_magao]
El zodíaco en astrología se refiere a las constelaciones en la trayectoria del sol.[p][stopse buf=3]
[mshide]
#hokuto
[hw_mu]
¿La trayectoria del sol…?[p][stopse buf=1]
#
[mhhide]
[bg2 storage="seiza/ecliptic.png" width=1920 height=1080 time=500 left=0 top=0]
#seiji
[s_magao]
El sol sale por el este y se pone por el oeste. Ese trayecto.[p][stopse buf=3]
#seiji
Si las estrellas fueran visibles a lo largo del sol a la luz del día, las constelaciones se superpondrían al sol así. Piénsalo de ese modo.[p][stopse buf=3]
[mshide]
#hokuto
[hw_magao]
¿Ya… veo?[p][stopse buf=1]
[mhhide]
#seiji
[s_hohoemi]
Como he dicho antes, las estrellas que podemos ver cambian con las estaciones. Esto se debe a que las posiciones de la Tierra, el Sol y las constelaciones cambian dependiendo de la órbita terrestre.[p][stopse buf=3]
#seiji
En sus cumpleaños, alrededor del verano, Virgo y Leo están en la misma dirección que el Sol visto desde la Tierra. Por eso decimos que el sol entra en esas constelaciones.[p][stopse buf=3]
[mshide]
#hokuto
[hw_egao2]
Oh, este lado de la tierra es Japón, de cara al sol y a las constelaciones, así se podrian ver las estrellas de día.[p][stopse buf=1]
[mhhide]
#seiji
[s_hohoemi]
Y en esta época del año, la tierra se encuentra entre el sol y las constelaciones, así que…[p][stopse buf=3]
[mshide]
#minami
[mw_bishou]
Puedes ver a Virgo y Leo en primavera como lo estamos haciendo ahora, ¿no?[p][stopse buf=2]
#
[mmhide]
Ya veo.[p]
Si puedes recordar la fecha en que las constelaciones son visibles y las fechas del horóscopo, siempre que puedas recordar ambas, entonces puedes cambiarlas seis meses y saber cuándo se acerca una a otra.[p]
…No, igual tendrias que memorizarlo todo de una forma u otra. Eres increíble, viejo.[p]
[bg2 storage="kawa_n.jpg" time=1000]
[hokuto_w_mu2 left=680 wait=false][seizi_mu left=15]
#hokuto
De que estábamos hablando… Ah, sí, dijiste algo de que la estrella en Virgo es más fácil de ver que la Estrella Polar.[p][stopse buf=1]
#seiji
Correcto. Spica de Virgo es una estrella de primera magnitud, y la estrella Polar es una estrella de segunda magnitud, o una segunda estrella.[p][stopse buf=3]
#hokuto
[hw/mu]
¿Primeras y segunda estrellas? …Haces que suene como si la Estrella Polar fuera claramente inferior.[p][stopse buf=1]
#seiji
En cierto modo, sí. Las estrellas se clasifican según su brillo.[p][stopse buf=3]
#seiji
Spica, la estrella alfa más brillante de Virgo, es una primera estrella, mientras que la estrella polar es una segunda estrella un poco más tenue.[p][stopse buf=3]
#seiji
Aun así, a simple vista se pueden ver hasta la 6, y en las grandes ciudades sólo se puede ver hasta la magnitud 3 como mucho, por lo que la estrella Polar sigue siendo una de las más brillantes en general.[p][stopse buf=3]
#hokuto
[hw/kanasimi]
Aunque sigue siendo un poco plana…[p][stopse buf=1]
#seiji
[s/metozi]
…Por cierto, el Cucharón sólo tiene estrellas de segunda y tercera magnitud.[p][stopse buf=3]
#hokuto
[hw/aozame]
…¿En serio? Eso es impactante…[p][stopse buf=1]
#
Siento que estaba hablando de mí por un segundo, y me sorprendí, a pesar de que no tiene nada que ver conmigo.[p]
#seiji
[s/hohoemi]
Bueno, hay una primera estrella en Leo llamada Regulus.[p][stopse buf=3]
#hokuto
[hw/mu]
…Ah bueno, entonces esta bien.[p][stopse buf=1]
#seiji
…Y no sólo el brillo caracteriza a las estrellas. Sus colores, su centelleo, las formas de sus constelaciones… todas tienen su encanto.[p][stopse buf=3]
#seiji
El Cucharón es sólo una constelación y, sin embargo, es muy conocida, fácilmente reconocible y útil a la hora de buscar otras estrellas. Me parece una constelación magnífica.[p][stopse buf=3]
#hokuto
[hw/akire]
…Perdona que te obligue a decirme algo así.[p][stopse buf=1]
#seiji
No, no, no. Pero si vamos a ir tan lejos, deberíamos echarle un vistazo a las estrellas relacionadas con el Sur, en honor a Minami-kun. La Cruz del Sur es la formación más común de las constelaciones del sur.[p][stopse buf=3]
#
[chara_move name="hokuto" time=700 left=360 wait=false anim=true][chara_move name="seiji" time=700 left=-195 wait=true anim=true][minami_w_bishou left=840]
#minami
Cruz del Sur, el Crux ¿verdad?[p][stopse buf=2]
#hokuto
[hw/bishou]
Oh, he oído hablar de esto.[p][stopse buf=1]
#seiji
[s/metozi]
La Cruz del Sur es una constelación que sólo puede verse en el hemisferio sur, o al menos en los alrededores de Okinawa.…[p][stopse buf=3]
#hokuto
Okinawa… por lo que no será posible verla aquí en el norte…[p][stopse buf=1]
#
 Sentí una inexplicable sensación de superioridad.[p]
#minami
[mw/tun]
…¿Qué me miras?[p][stopse buf=2]
#hokuto
[hw/akire]
No… nada…[p][stopse buf=1]
#seiji
Oigan, oigan, no peleen por pequeñeces…[p][stopse buf=3]
[fadeoutbgm time=1000]
[mask time=500]
[bg2 storage="kawa_n.jpg" time="1500"]
[s/mu time=0][hw/metozi time=0]
[fadeinbgm  storage="bg/river.ogg" time=1000]
[mask_off time=500]

#minami
[mw_iradati]
Oh, es tan tarde…[p][stopse buf=2]
#seiji
Sí, se está haciendo demasiado tarde, dense prisa y vayan a casa.[p][stopse buf=3]
#hokuto
…Ah, supongo que acabamos solo mirando las estrellas y no encontramos la estrella que estabas buscando…[p][stopse buf=1]
#seiji
[s/hohoemi]
No te preocupes.[p][stopse buf=3]
#
Puedo sentirlo cuando lo miro diciendo eso…[p]
…como si estuviera alegre de poder pasar el tiempo con nosotros por ahora.[p]
O tal vez sólo está contento de que no hayamos indagado más.[p]
#hokuto
[hw/mu]
No, voy a volver. Y esta vez te ayudaré como es debido, viejo…[p][stopse buf=1]
#minami
[mw/magao2]
¿De qué estás hablando? Además, no puedo creer que vayas a salir tan tarde otra vez…[p][stopse buf=2]
#seiji
[s/mu]
…Bueno, no me molestaría, pero… Esos uniformes, ustedes son estudiantes de secundaria.　¿No interferirá con sus estudios?[p][stopse buf=3]
#minami
[mw/magao2]
Así es. Además, vamos a estar ocupados con las actividades del club… Por otra parte, ¿qué le decimos a nuestros padres?…[p][stopse buf=2]
#hokuto
[hw/aseri]
…Entonces sólo los fines de semana. Sólo viernes y sábados por la noche. Así está bien, ¿no? Mis padres no dirán nada.[p][stopse buf=1]
#hokuto
Minami, sabes, nuestra escuela no tiene un club de astronomía, pero creo que ahora estamos en uno.[p][stopse buf=1]
#minami
[mw/magao]
…¿Tanto te gusta mirar las estrellas?[p][stopse buf=2]
#hokuto
[hw/egao2][kanim name="hokuto" keyframe="nod" time="500"]
Sí.[p][stopse buf=1]
#minami
[mw/magao2]
…Ya veo.[p][stopse buf=2]
#
Minami sacudió sus hombros y suspiró.[p]
#minami
[mw/akire]
Haaaaa…… okay. Voy a preguntarle a mis padres también.[p][stopse buf=2]
#hokuto
[hw/odoroki]
¿En serio?[p][stopse buf=1]
#minami
[mw/bishou]
Ya sé que probablemente vengas solo aunque te deje solo, Hokuto, lo cual me preocupa mucho. Viejo, ¿te parece bien?[p][stopse buf=2]
#seiji
[s/hohoemi]
Sí, no me molesta.[p][stopse buf=3]
#hokuto
[hw/egao2]
Muy bien, está decidido. Volveré, viejo.[p][stopse buf=1]

#
Después de eso, empezaron los días de búsqueda de la estrella, junto con el viejo.[p]
Costó mucho convencer a los padres de Minami, pero nos lo permitieron siempre y cuando no bajaran nunca las notas.[p]
Y así, todas las semanas, todos los fines de semana por la noche, nos reuníamos en la orilla del río y mirábamos las estrellas a través del telescopio.[p]
[fadeoutbgm time=1000]


[mask time="1500"]
[clearfix]
@layopt layer=message0 visible=false
[hide time=0]
[bg2 storage="black.png" time=0]
[iscript]
sf.current_bgm_vol = sf._system_config_bgm_volume;
[endscript]
[wait time="1500"]
[mask_off time="500"]
[if exp="sf._system_config_bgm_volume>=1&&sf.SM1!=1"]
[movie storage="OP_nitousei.webm" skip=false volume="&sf.current_bgm_vol"]
[elsif exp="sf._system_config_bgm_volume>=1&&sf.SM1==1"]
[movie storage="OP_nitousei.webm" skip=true volume="&sf.current_bgm_vol"]
[else]
[movie storage="OP_nitousei.webm" skip=true volume=0]
[endif]
[mask time="700"]
[eval exp="sf.SM1=1"][eval exp="sf.chapPro=1"]
[rolebutton]
@layopt layer=message0 visible=true
[kaname_bishou2 time=0]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time="1000"]
[mask_off time="1000"]

@jump storage="es/scene1.ks" target=*chapter1