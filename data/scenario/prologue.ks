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
[voconfig sebuf=3 name="seizi" vostorage="seizi/takamura_{number}.ogg" number=22 ]
[voconfig sebuf=4 name="nao" vostorage="nao/nao_{number}.ogg" number=2 ]
[voconfig sebuf=5 name="reito" vostorage="reito/reito_{number}.ogg" number=1 ]
[voconfig sebuf=6 name="kaname" vostorage="kaname/kaname_{number}.ogg" number=1 ]
[voconfig sebuf=1 name="hutari" vostorage="mix/hai{number}.ogg" number=1 ]
[voconfig sebuf=1 name="itidou" vostorage="mix/oh{number}.ogg" number=1 ]
[voconfig sebuf=4 name="sannin" vostorage="mix/omo{number}.ogg" number=1 ]
[vostart]
[mask time=500]
[bg2 storage="seiza/520dipper.png" width=3500 height=2934 time=500 top=-1200]
[rolebutton]
[M0]
@layopt layer=message0 visible=true
[ptext name="chara_name_area" layer="message0" color="white" size=44 bold=true x=350 y=755 face="NotoInitial"]
#
[fadeinbgm time=1000 storage=seiji.ogg]
[wait time=500]
[camera time=100000 y=+600 layer=base wait=false]
[mask_off time=1000]

*1
#？？？
[playse storage=seizi/takamura_first.ogg loop=false buf=3]
「星というのは、一つの星、一つの星座が見つかれば、[r]　ほかの星座も続けて見つかることが多い。[r]　特に、北斗七星やおとめ座なんて大物はな。」[p][stopse buf=3]
*2
#？？？
[playse storage=hokuto/hokuto_272.ogg loop=false buf=1]
「…」[p][stopse buf=1]
*3
#？？？
[playse storage=seizi/takamura_129.ogg loop=false buf=3]
「とはいえ、星は一つではただの光る点だ。[r]　どの星かなんて一つだけ見てもわからん。[r]　星座として夜空に映るからわかる。」[p][stopse buf=3]
#？？？
[playse storage=seizi/takamura_130.ogg loop=false buf=3]
「北斗七星の先にあるから、ただの2等星が北極星だとわかるし、[r]　明るいだけの星もあの形の中にあるから[r]　しし座やおとめ座だとわかるのさ。」[p][stopse buf=3]
*4
#？？？
[playse storage=hokuto/hokuto_273.ogg loop=false buf=1]
「…人間も同じようなもの、ってことでしょ？」[p][stopse buf=1]
*5
#？？？
[playse storage=seizi/takamura_131.ogg loop=false buf=3]
「ああ。なんでもそうだよ。」[p][stopse buf=3]

#
[mask time=500]
[bg2 storage="black.jpg" time=500][reset_camera]
[mask_off time=500]
思えば小さいころから色んなことをやってきた。[p]
野球にサッカー、バスケに柔道剣道。[p]
中学では生徒会も掛け持ちして。[p]
でも、何一つこれだ、というものがなかった。[p]
下手だったわけではない。運動神経は悪い方ではないし。[p]
ただ、ある時急に「もういいかな」と思ってしまう。[p]
だから、何一つ極めることができずにやめて、他に行ってしまった。[p]
生徒会は流石に任期が終わるまで在籍していたものの、[r]自分から何かすることができたとは言えない。[p]
だから、高校に上がっても、ただ勉強がしんどくなると思うだけで、[r]何をやるという気もあまりなかった。[p]
[fadeoutbgm time=500]
[mask time=1000]
[bg2 storage="rouka_s.jpg" time="1000"]
[fadeinbgm  storage="bg/school.ogg" time=1000]
[minami_w_magao2]
[mask_off time=500]
#美波
「あ、北斗。」[p][stopse buf=2]
#北斗
[hokuto_w_egao2]
「お、美波、お疲れ。」[p][stopse buf=1]
#
[hide]
高校に入学して数日目の放課後。[r]廊下には新歓の先輩たちとついていく新入生たちであふれかえっている。[p]
ついさっきの新歓説明会から、部活動への加入が解禁された。[r]いわゆる新歓期間である。[p]
とはいえどこへ行ったものかとぶらついていたところ、[r]氷のように透き通る姿と声をした少女に呼び止められた。[p]
…春の陽気にでもあてられたか。こんな表現をするのはばからしい。[r]何せ昔から見知った間柄だ。[p]
[minami_w_magao]
[backlay layer=base]
[filter brightness=50 layer=base page=back]
[trans layer=base time=1000]
[wt]
[ruby text="クル"]来[ruby text="セ"]瀬[ruby text="ミ"]美[ruby text="ナミ"]波。[p]
保育園からずっと一緒で、街一番の大きな病院の院長令嬢（おじいさんが院長先生なので正しくは孫娘だが、お父さんも同じ病院の医師なので自分は茶化し半分にそう呼んでいる）でもある。[p]
[free_filter layer=base page=back]
[trans layer=base time=1000]
#美波
[mw/tun]
「北斗はなにするの？今度は。」[p][stopse buf=2]
#北斗
[hokuto_w_mu2]
「今度って、まだどこも見学行ってないよ。」[p][stopse buf=1]
#美波
[mw/odoroki]
「あら、てっきりもう部活決めてると思った。[r]　なんならもう練習に混ざってるかと。」[p][stopse buf=2]
#北斗
[hw/akire]
「オレをなんだと思ってるんだよ…」[p][stopse buf=1]
#美波
[mw/tun]
「だって北斗ったら、いつも急に新しいこと始めるから。」[p][stopse buf=2]
#北斗
[hw/magao]
「それはまあ…否定はしないけど。そういう美波はどうするんだよ。[r]　中学の時みたいに美術部か？それともまた生徒会にでも？」[p][stopse buf=1]
#美波
[mw/iradati]
「いやよ生徒会なんか。そもそも北斗に巻き込まれて入ったのに、[r]　いつの間にか生徒会長なんてさせられて。」[p][stopse buf=2]
#北斗
「それなりにうまくやってたじゃないか。」[p][stopse buf=1]
#美波
「仕事しない誰かさんよりはね。でももうこりごり。[r]　それに美術部もね～、あんまり絵得意じゃないし、[r]　雰囲気も合わなかったし。」[p][stopse buf=2]
#北斗
[hw/akire]
「じゃあどうするんだよ。」[p][stopse buf=1]
#美波
[mw/magao]
「…う～ん、どうしよう。[r]　説明会でいいなと思ったのは軽音部だったけどね…」[p][stopse buf=2]
#北斗
[hw/aseri]
「軽音部か…」[p][stopse buf=1]
#
[fadeoutbgm time=1000]
[chara_hide_all time=500]
[bg2 storage="stage.jpg" time="1000"]
先ほどの説明会を思い出す。
広い講堂のステージ上にいたのは、たった３人。[p]
ギターボーカルと、ベースと、ドラムだけのバンドだった。[p]
音楽には明るくないが、ああいうのはスリーピースというんだったか。[p]
ただ、圧倒的にボーカルの女性が上手くて、高校生とは思えないほどだった。[p]
それに、脇を固める二人もとてもかっこよかった。[p]
…正直、圧倒されたといっていい。[r]それぐらい、たしかにすごい演奏だった。[p]
でも何より、ボーカルとベースの女性の表情が[r]とても生き生きとしていたのが印象的だった。[p]
楽しくて、仕方がないという顔だった。[p]
[fadeinbgm  storage="bg/school.ogg" time=1000]
[bg2 storage="rouka_s.jpg" time="1000"]
[hokuto_w_magao left="40" wait=false][minami_w_magao left="640"]
#北斗
「音楽系なら他の部も色々あったけど？」[p][stopse buf=1]
#美波
[mw/bishou]
「なんかね。[r]　人数が少なくても精一杯やってるんだなっていうのが伝わったし、[r]　それに本人たちが一番楽しそうだったかなって…」[p][stopse buf=2]
#北斗
[hw/metozi]
「……」[p][stopse buf=1]
#美波
[mw/uwame]
「北斗？」[p][stopse buf=2]
#北斗
[hw/egao2]
「行くか、軽音部。」[p][stopse buf=1]
#美波
[mw/odoroki]
「えぇ？」[p][stopse buf=2]
#北斗
[hw/magao]
「興味あるんだろ？」[p][stopse buf=1]
#美波
「いや、そうだけど、北斗も？」[p][stopse buf=2]
#北斗
[hw/egao2]
「オレ、そういえば音楽はやったことないからさ。[r]　興味わいた。ほら行くぞ。」[p][stopse buf=1]
[anim layer=0 left="-=100" effect=easeInQuad opacity=0 time=500]
#美波
「あ、ちょっと引っ張らないで～！」[p][stopse buf=2]
#
[chara_hide_all time=0]
[fadeoutbgm time=1000]
[wait time=500]
#
[bg2 storage="ongaku.jpg" height=1554 top="-200" time="1500" method=fadeInLeft]
[fadeinbgm storage=nichijo.ogg time=1000]
[nao_niko2][playse storage=nao/nao_1.ogg loop=false buf=4]
#？？？
「ようこそ鹿北軽音部へ！[r]　新歓ライブでも言ったかもだけど、改めて自己紹介するね。」[p][stopse buf=4]
#美波
[mw_tere]
「は、はい。よろしくお願いします。」[p][stopse buf=2]
#
[nhide wait=false][mmhide]
というわけで、美波ともども部室にやってきた。[p]
他の音楽系の部活は校舎内の教室などでは敷地が足りないのか、[r]校舎の隅に建てられたプレハブ小屋に部室を構えているが、[r]軽音部はちゃんと校舎内に部室がある。[p]
#七音
[nao_bishou]
「ワタシが部長で3年生の[ruby text="ホシ"]保[ruby text="ナ"]科[ruby text="ナ"]七[ruby text="オ"]音。[r]　バンドではボーカルとギターやってます。」[p][stopse buf=4]
#
[backlay layer=base]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time=0]
[filter brightness=50 layer=base page=back]
[trans layer=base time=1000]
[wt]
部長というこの女性は、腰まである長髪を揺らしながら、[r]元気いっぱいに話している。[p]
こうしているとどこかあどけなさも感じさせるが、[r]さっきの絶唱では鬼気迫るものがあった。[p]
[free_filter layer=base page=back]
[trans layer=base time=1000]
[nhide]
#奏女
[kaname_bishou]
「同じく副部長で3年の[ruby text="アマ"]天[ruby text="ミヤ"]宮[ruby text="カナ"]奏[ruby text="メ"]女です。ベースやってます。」[p][stopse buf=6]
#
[backlay layer=base]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time=0]
[filter brightness=50 layer=base page=back]
[trans layer=base time=1000]
[wt]
そういうこの人は部長とは対象的に、[r]ショートヘアに柔和な笑顔をたたえている。[p]
[free_filter layer=base page=back]
[trans layer=base time=1000]
[khide]
#令人
[reito_magao left=360]
「…2年の[ruby text="ソウ"]草[ruby text="マ"]間[ruby text="レイ"]令[ruby text="ト"]人。ドラムとか、やってる。」[p][stopse buf=5]
#
[backlay layer=base]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time=0]
[filter brightness=50 layer=base page=back]
[trans layer=base time=1000]
[wt]
そして、男子の先輩。[p]
MCというか、部活説明は全て部長と副部長の２人でやっていたから、[r]この男性はどんな人なんだろうと思ったが、[r]目つきも鋭く寡黙な印象を受ける。[p]
…ちょっと怖い人なのかな。[p]
#奏女
[bg2 storage="ongaku.jpg" height=1554 top="-200" page=back time=0][free_filter layer=base page=back]
[trans layer=base time=1000]
[kaname_niyake]
「わー令人君、ハチャメチャに緊張してる～」[p][stopse buf=6]
#令人
[r/komari]
「や、やめてくださいそういうの…」[p][stopse buf=5]
#
[khide]
あ、大丈夫そう。[p]
目つきも「私、困ってます」と言わんばかりに緩みきっている。[p]
これはあれだ。この人は生粋のいじられキャラだ。[p]
[chara_hide name="reito" time="700"]
#七音
[nao_niko]
「えー、というわけで、今うちの部は3年生2人、[r]　2年生１人の計3人で活動してます。」[p][stopse buf=4]
#美波
[mw_magao]
「…３年生が多いんですね。」[p][stopse buf=2]
[mmhide]
#奏女
[kaname_kanasimi left=-120]
「そうなの。だから今年の夏には私達引退しちゃって、[r]　部員が1人になっちゃうのが心配で。」[p][stopse buf=6]
#令人
[reito_tukomi left=840]
「副部長、いまそこまで言わなくても…」[p][stopse buf=5]
#七音
[n/magao]
「まあでも、令人君が独りぼっちになっちゃうんじゃないかって言うのは[r]　本当のことよ。」[p][stopse buf=4]
#七音
「そういうこともあって、[r]　ぜひ2人にはうちの部に入って欲しいんだけど…って、[r]　２人の名前も聞いてなかった。自己紹介してくれる？」[p][stopse buf=4]
[hide]
#北斗
[hokuto_w_egao2]
「はい！」[p][stopse buf=1]
#北斗
「オレ、新入生の[ruby text="カ"]加[ruby text="ガ"]賀[ruby text="ヤ"]谷[ruby text="ホク"]北[ruby text="ト"]斗って言います！[r]　新歓ライブにすごく感動しました！」[p][stopse buf=1]
#北斗
「で、こっちが幼馴染の来瀬美波です。」[p][stopse buf=1]
#美波
[minami_w_iradati]
「ちょっと、私のことはいいから…」[p][stopse buf=2]
#奏女
[k_bishou2]
「わー、幼馴染なんだ。いいなあ…」[p][stopse buf=6]
[mkhide]
#令人
[r_magao]
「…ん？来瀬ってどっかで聞いたことあるな。」[p][stopse buf=5]
[mrhide]
#七音
[n_iradati]
「なんだっけ？」[p][stopse buf=4]
[mnhide]
#北斗
「こいつんち、病院なんですよ。ほら、来瀬総合病院。駅前の。」[p][stopse buf=1]
#七音
[n_niko]
「ああ、あそこ？いつも前通ってるよ！」[p][stopse buf=4]
[mnhide]
#美波
[mw/dere2]
「わ、私の家のことはもういいから…」[p][stopse buf=2]
#七音
[n_niko3]
「そうなんだ。[r]　え、そういえば美波ちゃんはどうしてここに来てくれたの？[r]　聞かせてほしいな～」[p][stopse buf=4]
[mnhide]
#美波
[mw/dere]
「…いやその、なんとなく新歓イベント色々と行ってたら、[r]　突然北斗に軽音部に行こうって引っ張られてきちゃって…」[p][stopse buf=2]
#奏女
[k_niko]
「そうなんだ～、仲良しなんだね。」[p][stopse buf=6]
[mkhide]
#美波
[mw/tere]
「な、仲良しだなんて。[r]　私がこいつの面倒見てるようなものっていうか…」[p][stopse buf=2]
#北斗
[hw/iradati]
「え、どういうことだよ。」[p][stopse buf=1]
#美波
[mw/tun2]
「だってあなたがいつも突飛なことしでかすから[r]　私が見張ってなきゃいけないんじゃない！」[p][stopse buf=2]
#北斗
[hw/iradati2]
「なんだって！？」[p][stopse buf=1]
#奏女
[k_niyake]
「おお、これはいわゆる…」[p][stopse buf=6]
[mkhide]
#令人
[r_magao]
「……」[p][stopse buf=5]
[mrhide]
#七音
[n_kanasimi]
「なるほどね、なんとなくわかったわこの子たちのこと…」[p][stopse buf=4]
[mnhide]
#美波
[mw/tun]
「な、なにがですか。」[p][stopse buf=2]
#令人
[r_bishou]
「ええと、その、質問ばかりで悪いんだけど、[r]　中学時代の部活は何だった？」[p][stopse buf=5]
[mrhide]
#北斗
[hw/egao2]
「オレ、バスケ部でした！」[p][stopse buf=1]
#奏女
[k_bishou]
「バスケか。中学からやってたの？」[p][stopse buf=6]
[mkhide]
#北斗
[hw/bishou][kanim name="hokuto" keyframe="nod" time="500"]
「はい。小学校のころは、[r]　少年野球とか、サッカーのクラブチームとか、柔道とか空手とか…」[p][stopse buf=1]
#奏女
[k_magao]
「え、色々やってたんだね。」[p][stopse buf=6]
[mkhide]
#北斗
[hw/mu][kanim name="hokuto" keyframe="nod" time="500"]
「はい。でも、中々どれも性に合わなかったというか、何というか…」[p][stopse buf=1]
#美波
[mw/magao]
「…」[p][stopse buf=2]
#奏女
[k_magao]
「そうなんだ…美波ちゃんは何してたの？」[p][stopse buf=6]
[mkhide]
#美波
[mw/tun]
「えっと、美術部だったんですけど…」[p][stopse buf=2]
#七音
[n_niko2]
「美術部か～、いいね。」[p][stopse buf=4]
#美波
[mw/kanasimi]
「…でも、生徒会活動が忙しくて、ほとんどできませんでした。」[p][stopse buf=2]
#七音
[n_iradati]
「生徒会！？」[p][stopse buf=4]
[mnhide]
#北斗
[hw/egao2]
「こいつ、生徒会長だったんですよ。で、オレが副会長で。」[p][stopse buf=1]
#奏女
[k_iradati]
「しかも生徒会長！？」[p][stopse buf=6]
[mkhide]
#美波
[mw/akire]
「…あれは北斗がやれっていうから。」[p][stopse buf=2]
[vostop][voconfig sebuf=1 name="hokuto" vostorage="hokuto/hokuto_{number}.ogg" number=24 ][vostart]
#北斗
[hw/akire]
「いや、あれは最初2人で庶務で入って。[r]　2年の秋に誰か会長出すってなって、[r]　美波の方が向いてると思ったからだし。」[p][stopse buf=1]
#七音
[n_bishou]
「あー、なんとなくわかったわ。それじゃとりあえず、[r]　私たちの活動日とか今後の予定とかなんだけど…」[p][stopse buf=4]
#
[fadeoutbgm time=1000]
[mask time=500]
[hide time=1000][mnhide time=0]
[mask_off time=500]
……[p]
[nao_bishou]
#七音
「というわけで、とりあえず当面の目標は、[r]　8月頭の卒業ライブになるわ。」[p][stopse buf=4]
#北斗
[hw_metozi]
「入部早々先輩たち卒業の話なんですね…」[p][stopse buf=1]
[mhhide]
#美波
[mw_tun]
「ちょっと北斗、失礼よ。」[p][stopse buf=2]
[mmhide]
#七音
[n/niko]
「いいの、ホントのことだし。これでも部活引退遅らせてもらってるの。[r]　ほかの文化部は6月引退とかもザラなんだから。」[p][stopse buf=4]
#奏女
[kaname_niko]
「ここは昔の先輩たちが伝統作っててくれたおかげかな～」[p][stopse buf=6]
#七音
[n/bishou]
「そうね、それで、もし2人が入部してくれたら、[r]　8月までに楽器とか発声練習とか、[r]　とにかく覚えてもらうことになるわ。」[p][stopse buf=4]
#北斗
[hw_odoroki]
「え、早くないです？」[p][stopse buf=1]
[mhhide]
#奏女
「大丈夫、意外となんとかなるなる。」[p][stopse buf=6]
#七音
[n/niko]
「それに、良ければガンガン歌ってもらうから。[r]　こんなに新人使う軽音部ほかになかなかないよ～？」[p][stopse buf=4]
#美波
[mw_magao2]
「…なんかブラックな求人広告みたいじゃないです？」[p][stopse buf=2]
[mmhide]
#奏女
[k/niyake]
「お、いいところを突っついてくる。ツッコミのセンスありだね。」[p][stopse buf=6]
#美波
[mw_magao2]
「いや否定してください…」[p][stopse buf=2]
[mmhide]
#奏女
[k/niko]
「大丈夫大丈夫。変にしごいたりとかしないから。楽しく歌うだけ。」[p][stopse buf=6]
#七音
[n/bishou]
「その辺に関しては令人君と一緒に部を存続させてって欲しいっていう[r]　老婆心が混じってるけど、なによりみんな楽しまないと。[r]　そこは保証するよ。」[p][stopse buf=4]
#
[hide]
[vostop]
[reito_kanasimi]
#令人
「……」[p][stopse buf=5]
[rhide]
[voconfig sebuf=5 name="reito" vostorage="reito/reito_{number}.ogg" number=8 ][vostart]
[nao_niko2 wait=false left=730][kaname_kanasimi left=140]
#奏女
「というところで、説明は多分以上なんだけど…」[p][stopse buf=6]
#七音
「…入部してくれないかな？」[p][stopse buf=4]
[hide]
#北斗
[hokuto_w_egao2]
「入部します！」[p][stopse buf=1]
#美波
[font size=30][minami_w_odoroki]
「即答！？もうちょっと考えない？」[p][stopse buf=2]
[resetfont]
#北斗
[hw/bishou]
「大丈夫。ここやっぱり面白そうだし。」[p][stopse buf=1]
#
先輩たちは良い人たちみたいで安心だし。[p]
なにより、こういうおもしろそうなものを見つけた時は、[r]迷わず飛び込むことにしている。[p]
#美波
[mw/akire]
「そう…」[p]
#
そういって呆れたような目をしたかと思うと、[r]次の瞬間には美波も覚悟を決めたようだった。[p]
#美波
[kanim name="minami" keyframe="nod" time="500"]
「よし、すいません、私も入れてください。」[p][stopse buf=2]
[voconfig sebuf=2 name="minami" vostorage="minami/minami_{number}.ogg" number=30 ]
[hide]
#七音
[nao_niko]
「え、いいの？」[p][stopse buf=4]
#美波
[mw_bishou]
「はい。それに…実のところ、私も軽音部、元々興味あったので。[r]　やってみたいです。」[p][stopse buf=2]
[mmhide]
#七音
[n/niko2]
「やったー！部員2人ゲット～！」[p][stopse buf=4]
#令人
[reito_komari left=840]
「だから言い方…」[p][stopse buf=5]
#奏女
[kaname_bishou left=-120]
「まあ、しばらくは新歓期間だから、ひとまず仮入部ってことで。[r]　他の部を見に行ってもいいし、[r]　もしよかったら練習に混ざってくれてもいいし。」[p][stopse buf=6]
#奏女
「といっても、次のライブの曲もまだ決まってないんだけど。」[p][stopse buf=6]
#七音
[n/bishou]
「そしたら、今日はとりあえず楽器触ってみようか。」[p][stopse buf=4]
#
[hide]
[hokuto_w_egao2 left=640 wait=false][minami_w_egao2 left=40]
#二人
「はい！」[p][stopse buf=1]

#
こうして、俺たちの軽音部生活が始まった。[p]
[fadeoutbgm time=1000]
[mask time=500]
[hide time=0]
[bg2 storage="michi_n.jpg" time="1500"]
[fadeinbgm  storage="bg/river.ogg" time=1000]
[mask_off time=500]

#北斗
[hokuto_w_mu2]
「もう真っ暗だな……」[p][stopse buf=1]
#美波
[minami_w_magao]
「ホント。早く帰りましょ。」[p][stopse buf=2]
#北斗
[hw/akire]
「帰ったら帰ったで明日の予習が待ってるけどな…」[p][stopse buf=1]
#美波
[mw/magao2]
「そんなこと言わないでよ…しょうがないじゃない、[r]　一応進学校なんだもの。」[p][stopse buf=2]
#北斗
[hw/mu2][kanim name="hokuto" keyframe="nod" time="500"]
「まあな…それにしてもまさか入部二週間で[r]　いきなりこんなハードだとは思わなかった…」[p][stopse buf=1]
#
[hide]
説明会から二週間が経った。[p]
まだ新歓期間中で、軽音部にも他の新入生がちょろっと見学に来たりも[r]したけど、入部まで行くやつはいなくて、[r]放課後はほぼほぼオレと美波の講習会と化していた。[p]
[minami_w_magao left=40 wait=false][hokuto_w_metozi left=640]
#美波
「仕方ないわよ。3年の先輩たちは夏には退部なんだもの。」[p][stopse buf=2]
#美波
「早く私たちが一人前にならないと、[r]　まともな演奏できなくなっちゃうから。」[p][stopse buf=2]
#北斗
[hw/metozi]
「オレたち2人入れても部員が5人。卒業していく3年生も2人。[r]　改めて考えるとホントギリギリだな…[r]　もうちょっと新入部員入ってくれるといいけど。」[p][stopse buf=1]
#美波
[mw/magao2]
「でも、もう新歓期間終わりだし、[r]　あとから来た人たちみんな別の部も考えてるみたいだったし…」[p][stopse buf=2]
#北斗
[hw/akire]
「ほとんど冷やかしみたいなやつらが多かったな…[r]　マジでオレたち2人だけかも。」[p][stopse buf=1]
#美波
[mw/akire]
「まったく、誰かさんのせいで他の部の見学にも行かなかったし。」[p][stopse buf=2]
#北斗
[hw/iradati]
「なんだよオレのせいかよ。[r]　美波だって別の部に行きたいなんて言わなかったじゃないか。」[p][stopse buf=1]
#美波
[mw/uwame][font size=30]
「…まあ、北斗が誘ってきたから。」[p][stopse buf=2]
[resetfont]
#北斗
[hw/magao]
「ん、なんだって？」[p][stopse buf=1]
#美波
[mw/tun]
「な、なんでもない！」[p][stopse buf=2]
#北斗
[hw/aozame]
「まあでも、まさかギターの弾き方覚えるのがここまでむずいとは…」[p][stopse buf=1]
#美波
[mw/magao]
「…ふん、ホントあんたって無計画よね。[r]　早くきらきら星から卒業したら？」[p][stopse buf=2]
#北斗
[hw/iradati2]
「そういうお前はあっさりキーボード覚えやがって。」[p][stopse buf=1]
#美波
[mw/bishou]
「だって幼稚園からピアノ習ってたもの。[r]　小3くらいで嫌になってやめちゃったけど。意外と指が覚えてたわ。」[p][stopse buf=2]
#北斗
[hw/iradati]
「そういやそうだったな…」[p][stopse buf=1]
#美波
[mw/akire]
「まあ、コードとか音づくりとか、新しく覚えることも多いけど。[r]　クラシックとは色々違いすぎて大変だわ。」[p][stopse buf=2]
#北斗
[hw/kanasimi2]
「でもオレとはスタートラインが違うだろ…」[p][stopse buf=1]
#美波
[mw/magao2]
「まあそれは…でも、珍しいわね、[r]　こういうとき、いつもだったらなんだかんだ[r]　北斗のほうがすぐにコツを覚えてこなしちゃうのに。」[p][stopse buf=2]
#北斗
[hw/kanasimi2]
「そうなんだよな…スポーツとかなら割と」[p][stopse buf=1]
#美波
[mw/magao]
「……」[p][stopse buf=2]
#北斗
[hw_magao]
「…なんだよ。」[p][stopse buf=1]
#美波
[mw_tun]
「…ううん、苦しんでるあんたをみて面白がってるだけよ。」[p][stopse buf=2]
#北斗
[hw/iradati2]
「なんだと？くそ～、いまに見てろよ…ん？」[p][stopse buf=1]

#
[fadeinbgm time=1000 storage=seiji.ogg]
[hide]
;視線移動のエフェクト
[bg2 storage="still_takamura.png" time="1000"][eval exp="sf.ST1=1"]
ふてくされてそっぽを向いた視線の先に、人影が見えた。[p]
いや、本当は最初に目を奪われたのはその大きな望遠鏡だった。[p]
遥かな天空へ向けられたそれを、老人が必死に覗き込んでいる。[p]

[bg2 storage="michi_n.jpg" time="1000"]
[minami_w_magao2 left=40 wait=false][hokuto_w_mu2 left=640]
#美波
「ん、どしたの？」[p][stopse buf=2]
#北斗
「いや、あの河川敷に…」[p][stopse buf=1]
#美波
[mw/magao]
「河川敷？…ああ、あの望遠鏡のおじいさん？」[p][stopse buf=2]
#北斗
[hw/odoroki]
「知り合いか？」[p][stopse buf=1]
#美波
[mw/bishou]
「ううん。でも近所では有名よ？[r]　いつも河川敷で天体観測してるおじいさん。」[p][stopse buf=2]
#北斗
[hw/mu]
「そうなのか。知らなかった。」[p][stopse buf=1]
#美波
[mw/akire]
「あなた近所付き合いとかあんましないから…」[p][stopse buf=2]
#北斗
[hw/akire]
「うっせ。でもそんなにいつもいるのか。」[p][stopse buf=1]
#美波
[mw/bishou]
「そうみたい。こんな晴れた夜はいつも。[r]　日が昇るまでやってることもしょっちゅうだって。」[p][stopse buf=2]
#北斗
[hw/odoroki]
「そんなにか！？」[p][stopse buf=1]
#美波
[mw/magao][kanim name="minami" keyframe="nod" time="500"]
「うん。でも、どうしてそんなに天体観測に夢中なのか、[r]　だれも知らないんだって。」[p][stopse buf=2]
#北斗
[hw/mu2]
「え、有名なんじゃないのか？」[p][stopse buf=1]
#美波
[mw/magao2]
「いや、みんな見かけてるだけで話しかけたりはしてないらしいし。[r]　昼間はあんまり家から出ないらしいから[r]　近所づきあいもしてないみたいだし…」[p][stopse buf=2]
#
[mhide]
#北斗
[hw/metozi]
「ふ～ン……」[p][stopse buf=1]
#
[hide]
[bg2 storage="still_takamura.png" time="1000"]
[playse  storage="se/step_grass.ogg" ]
その時、なぜ自分がそうしたのかはわからないけど、[r]気づけば河川敷を駆け下りて爺さんに近づいていた。[p]
#美波
[mw_aozame]
「ちょっと！？」[p][stopse buf=2]
[mmhide]
#北斗
[hw_egao2]
「なあ爺さん、こんばんは。何してるんです？」[p][stopse buf=1]
[mhhide]
#老人
「ん？見てわからないのか。お星さまを探しているんだ。」[p][stopse buf=3]
#北斗
[hw_magao]
「探してる？星ならいくらでも見えるじゃないか。」[p][stopse buf=1]
[mhhide]
#老人
「見えている星じゃない。今は見えないお星さまを探しているんだ。」[p][stopse buf=3]
#北斗
[hw_kanasimi]
「見えない星？」[p][stopse buf=1]
[mhhide]
#美波
[mw_odoroki]
「ちょっとちょっと。すいません、急に話しかけちゃって。」[p][stopse buf=2]
[mmhide]
#老人
「構わんよ。目の死んだ駐在にしか話しかけられなくて[r]　飽き飽きしていたところだ。」[p][stopse buf=3]
#北斗
[hw_magao]
「それで、見えない星を探してるって、なに？」[p][stopse buf=1]
[mhhide]
#老人
「ああ、何年探しても見つからないお星さまだ。」[p][stopse buf=3]
#北斗
[hw_akire]
「へえ…なんでそんなあるかもわからないものを[r]　何年も探してるんです？」[p][stopse buf=1]
[mhhide]
#老人
「……絶対にあるとわかっているからさ。」[p][stopse buf=3]
#北斗
[hw_odoroki]
「？…なんですか、理論上はあるはずみたいな感じですか。」[p][stopse buf=1]
[mhhide]
#老人
「……そんなようなものだ。」[p][stopse buf=3]
#北斗
[hw_magao]
「へぇ…？」[p][stopse buf=1]
[mhhide]
#
この爺さんは、何を言っているんだろう。よくわからない。[p]
ただ、こんな話をしながらも、決して望遠鏡から顔を外そうとしない。[p]
その姿には、なぜかひきつけられるようなものがあって。[p]
つい、いつものように言ってしまった。[p]
[fadeoutbgm time=1000]
#北斗
[hw_egao2]
「…それなら、一緒に探してもいいですか？[r]　何の役にも立たないかもしれないけど。」[p][stopse buf=1]
[mhhide]
#
[bg2 storage="kawa_n.jpg" time=1000]
[hokuto_w_egao2][seizi_magao]
#老人
「…ほう。」[p][stopse buf=3]
#
その時初めて、爺さんはこっちを向いてくれた。[p]
[chara_move name="hokuto" time=700 left=360 anim=true wait=false][chara_move name="seizi" time=700 left=-195 anim=true wait=false][minami_w_odoroki left=840]
#美波
「ちょっと、何勝手に言ってるのよ。…すいませんホントに。」[p][stopse buf=2]
#老人
「…いや、今時面白い若者がいるものだ。[r]　いいだろう。付き合いなさい。」[p][stopse buf=3]
#美波
[mw/tere]
「え？！」[p][stopse buf=2]
#北斗
「よっしゃ！」[p][stopse buf=1]
#老人
[s/mu]
「こっちに来なさい。望遠鏡の使い方を教えてやろう。」[p][stopse buf=3]
#北斗
[kanim name="hokuto" keyframe="nod" time="500"]
「はい！」[p][stopse buf=1]
#
[hide][minami_w_aozame]
#美波
「ちょ、ちょっと…」[p][stopse buf=2]
#老人
[s_magao]
「お嬢さん、キミもだ。早くこっちへ。二度手間は嫌いなんだ。」[p][stopse buf=3]
[mshide]
#美波
[mw/oogoe]
「え、ええ？何この状況～！」[p][stopse buf=2]

#
[hide]
そうして、その晩は9時過ぎまで星を3人で眺めることになった。[p]
美波は終始ひやひやしていたが、[r]美波のご両親が夜勤で夜遊びがばれる心配もないのは把握していたので、[r]俺は気にせずひたすら爺さんに教えてもらいながら星をみた。[p]
[fadeoutbgm time=1000]
[bg2 storage="still_kansoku.png" time=1000][eval exp="sf.ST2=1"]
#老人
「さて、いきなりどこにあるのかもわからない星を見るよりは、[r]　有名な星を見るところから始めた方がよかろう。」[p][stopse buf=3]
#老人
「そうでないと、[r]　むやみに何もない夜空をただ見回すだけになってしまうからな。」[p][stopse buf=3]
#北斗
「はい。」[p][stopse buf=1]
#老人
「ファインダーと倍率はもう調整してある。まずは月から見てみるか。」[p][stopse buf=3]
#北斗
「月ですか。ウサギの模様とかよく見えたりします？」[p][stopse buf=1]
#老人
「今日は三日月だから、そこまでは見えんだろう。[r]　また満月の夜にでも見るといい。」[p][stopse buf=3]
#老人
「ただ、月明りが強すぎるとほかの星が見えなくなるから、[r]　満月の日はあまり天体観測には向かないんだがな。」[p][stopse buf=3]
#北斗
「なるほど…お、三日月がきれいに見える！」[p][stopse buf=1]
#美波
「…月の光でほかの星が見えなくなるなんてことがあるんですか？」[p][stopse buf=2]
#老人
「ああ。星にもよるが、基本星の光はあまりに弱い。」[p][stopse buf=3]
#老人
「街灯、繁華街の光。[r]　それだけじゃない、携帯電話や懐中電灯の光でさえ、[r]　星の光をさえぎってしまう。」[p][stopse buf=3]
#老人
「月も同じ夜空にあるとはいえ、光源には違いないからな。」[p][stopse buf=3]
#老人
「…この町も、昔はもっと星がよく見えたんだがなあ。[r]　最近は随分街になってしまった。」[p][stopse buf=3]
#美波
「へえ…」[p][stopse buf=2]
#北斗
「なんだ、美波も興味津々じゃん。」[p][stopse buf=1]
#美波
「そ、そんなんじゃないわよ。」[p][stopse buf=2]
#老人
「キミは美波君というのか。…そういえば名前を聞いていなかったな。」[p][stopse buf=3]
#美波
「あ、すいません。来瀬美波といいます。」[p][stopse buf=2]
#北斗
「オレは加賀谷北斗です。爺さんの名前は？」[p][stopse buf=1]
#老人
「…高村だ。[ruby text="たか"]高[ruby text="むら"]村[ruby text="せい"]清[ruby text="じ"]二。…しかし、キミは北斗君というのか。[r]　星の名前なんだな。」[p][stopse buf=3]
#北斗
「ええ、北斗七星からつけたって。」[p][stopse buf=1]
#高村
「なるほど。ちょうど北斗七星は春によく見える星だ。[r]　次は北斗七星を見てみるか。」[p][stopse buf=3]
#
そういうと高村と名乗った爺さんは望遠鏡の倍率を下げるためなのか、[r]望遠鏡をいじり、そして方向を変えた。[p]
[fadeinbgm storage=kaisou.ogg time=500]
[bg2 storage="seiza/419dipper.png" width=2279 height=1909 time=500 left=-700 top=-350 wait=false]
[image layer=1 storage=lens.png time=500 visible=true]

#高村
[s_mu]
「さあ、見てごらん。」[p][stopse buf=3]
[mshide]
#北斗
[hw_mu2]
「あ、なんか七つの星が見える。」[p][stopse buf=1]
[mhhide]
#高村
[s_metozi]
「正確には、北斗七星という星座があるわけではなく、[r]　おおぐま座の尾の部分なんだがな。」[p][stopse buf=3]
[mshide]
#北斗
[hw_odoroki]
「そうなの？」[p][stopse buf=1]
[mhhide]
#美波
[mw_magao2]
「おおぐま座って、どこかで聞いたことがあるような…？」[p][stopse buf=2]
[mmhide]
#高村
[s_mu]
「古代ギリシャでは、主神ゼウスの子を産んだ女性が、[r]　ゼウスの本妻であるヘラの嫉妬によって熊に変えられてしまった、[r]　という星座さ。」[p][stopse buf=3]
#高村
「もっとも、世界の多くではひしゃくに見えるとか[r]　色々言われていたようだがね。」[p][stopse buf=3]
[mshide]
#北斗
[hw_mu]
「まあ、七つの星以外あんまりよく見えないし、[r]　この7つの星で星座って言われた方が自然にみえる。」[p][stopse buf=1]
[mhhide]
#高村
[s_mu]
「北斗七星がおおぐま座の一部だ、[r]　というイメージがあまりないのは他にも理由があるとは思うよ。[r]　望遠鏡を覗かずに見た方がわかるかな。」[p][stopse buf=3]
#
[mshide]
そういうと、爺さんは夜空にむかって北斗七星を指さした。[p]
[bg2 storage="seiza/419dipperName.png" width=2279 height=1909 time=700 left=-300 top=-400 wait=false]
[freeimage layer=1 time=700]
#高村
[s_magao]
「北斗七星をひしゃくとして見たときに、[r]　水を組む部分の先にあたる２つの星があるだろう。[r]　アルファ星のデューベとベータ星のメラクというが…」[p][stopse buf=3]
[mshide]
#北斗
[hw_aozame]
「アルファ、デューベ…？」[p][stopse buf=1]
[mhhide]
#高村
[s_mu]
「まあ名前はどうでもよい。その長さを指で測る。[r]　そしてそのままその長さを５倍して伸ばしてみると…[r]　少し明るい星が見えないか？」[p][stopse buf=3]
[mshide]
#北斗
[hw_mu]
「5倍…？なんかあるけど、あの星がなんなの？」[p][stopse buf=1]
#
[mhhide]
[bg2 storage="seiza/419dipperHName.png" width=2279 height=1909 time=500 left=-300 top=-400]
#美波
[mw_magao]
「北極星、ですよね。」[p][stopse buf=2]
[mmhide]
#北斗
[hw_odoroki]
「あ、なんか中学の理科でやってたような…」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi]
「北斗という名前でも、北極星の探し方を知らんか」[p][stopse buf=3]
[mshide]
#北斗
[hw_odoroki]
「いや、なんかどっかで聞いたような気は…北極星ってことは、[r]　あっちが北だってことですよね。」[p][stopse buf=1]
[mhhide]
#高村
[s_mu]
「そう。昔の旅人や船乗りなど、[r]　方位がわからない時には北極星を頼りにした。」[p][stopse buf=3]
#高村
「星空は地球の回転の影響で東から西へ、[r]　時間がたつごとに位置が変わっていくが、[r]　北極星だけは位置が変わらない。」[p][stopse buf=3]
#高村
「他の星は見つけたところで方位を測るのは難しいが、[r]　北極星は見えている限りそちらが北だとわかるからね。」[p][stopse buf=3]
[mshide]
#北斗
[hw_odoroki]
「そんな大事な星を見つける手がかりが北斗七星…」[p][stopse buf=1]
[mhhide]
#高村
[s_mu]
「そう。北斗七星も常に北極星の方向を向いているから、[r]　いつでも北極星を見つけられる。[r]　もっとも、冬から春にかけての夜に限って、の話だがね。」[p][stopse buf=3]
[mshide]
#美波
[mw_magao]
「季節によって、見える星は変わりますもんね。」[p][stopse buf=2]
[mmhide]
#北斗
[hw_bishou]
「季節によって…ああ、七夕の夏の大三角とか、そういう。まあでも、[r]　大事な星を探すのに絶対に必要な星座ってのは変わらないし。」[p][stopse buf=1]
#北斗
「父さんも名前だけはいいのつけてくれたな。」[p][stopse buf=1]
[mhhide]
#美波
[mw_kanasimi]
「……」[p][stopse buf=2]
[mmhide]
#高村
[s_mu]
「…ちなみに、北極星はカシオペア座からでも見つけられるんだがね。」[p][stopse buf=3]
[mshide]
#北斗
[hw_odoroki]
「え、そうなの？」[p][stopse buf=1]
[mhhide]
#高村
[s_magao]
「そうさ。あのアルファベットのWに似た5つの星があるだろう。[r]　Wに見立てた上側に、やはり5文字分伸ばしていくと…」[p][stopse buf=3]
#
[mshide]
[bg2 storage="seiza/419dipperK.png" width=2800 height=2346 time=500 left=0 top=-1250]
#北斗
[hw_kanasimi]
「…北斗七星側からやってみても同じだし。[r]　やっぱりあれ北極星だ…なんか代わりがあるっていうと、[r]　なんでか知らないけどショックだな…」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi]
「ははは。まあ、星空はずっと昔からほぼ同じ形なんだ。[r]　一つの星を探す方法なんていくつも見つかるさ。」[p][stopse buf=3]
#
[mshide]
それはそうか。[r]さっきもギリシャ神話だのおおぐま座だのという話が出てきたところだ。[p]
ギリシャ神話なんて、成立したのは紀元前のはずだし。[p]
#北斗
[hw_metozi]
「（…？その割にはなんか星を探してるって…、[r]　見つけ方が今でもわからないって、一体どんな星なんだ？）」[p][stopse buf=1]
[mhhide]
#美波
[mw_magao]
「…それにしても、北極星ってなんだかちょっとパッとしないというか、[r]　ちょっと見つけにくい星ですね。」[p][stopse buf=2]
#美波
「それこそ北斗七星がないとすぐ見失って、[r]　どの星だかわかんなくなっちゃいそう。[r]　あっちの星の方が、なんだか明るくて目立つというか…」[p][stopse buf=2]
#
[mmhide]
[bg2 storage="seiza/420virgo.png" width=2150 height=1280 time=500 left=0 top=-200]
#高村
[s_magao]
「ん？…ああ、おとめ座のスピカか。」[p][stopse buf=3]
[mshide]
#美波
[mw_odoroki]
「あれ、おとめ座なんですか！？」[p][stopse buf=2]
[mmhide]
#高村
[s_hohoemi]
「おや、初めて食いつきがいいね。もしかして美波君、おとめ座かい？」[p][stopse buf=3]
[mshide]
#美波
[mw_bishou]
「はい、そうです。」[p][stopse buf=2]
[mmhide]
#北斗
[hw_egao2]
「ちなみに、オレはしし座。」[p][stopse buf=1]
[mhhide]
#美波
[mw_tun]
「北斗には聞いてないでしょ。」[p][stopse buf=2]
[mmhide]
#高村
[s_kuti]
「はは、そうかそうか。二人とも夏生まれなんだね。」[p][stopse buf=3]
#
[mshide]
え？星座聞いただけで季節わかるの？[p]
オレが８月７日生まれ、美波が９月７日生まれだから、[r]ばっちり合ってるんだよな。[p]
…まさかこの爺さん、星占いの誕生日全部暗記してるんじゃ…[p]
#美波
[mw_odoroki]
「はい。でも、まだ4月…おとめ座が見えるって…」[p][stopse buf=2]
[mmhide]
#高村
[s_magao]
「星占いの十二宮というのは、[r]　太陽の道、黄道上にある星座のことなんだ。」[p][stopse buf=3]
[mshide]
#北斗
[hw_mu]
「太陽の道…？」[p][stopse buf=1]
#
[mhhide]
[bg2 storage="seiza/ecliptic.png" width=1920 height=1080 time=500 left=0 top=0]
#高村
[s_magao]
「太陽は東から昇って西に沈んでいくだろう。その道さ。」[p][stopse buf=3]
#高村
「もし昼間でも太陽と一緒に星が見えていたとしたら、[r]　太陽と重なって見えるはずの星座。そう思えばいい。」[p][stopse buf=3]
[mshide]
#北斗
[hw_magao]
「なる…ほど？」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi]
「さっきも言ったが、季節によって見える星が変わる。[r]　地球と太陽、そして星座の位置が、[r]　地球の公転によって変わるからだ。」[p][stopse buf=3]
#高村
「君たちの誕生日、[r]　夏ごろにはおとめ座やしし座は地球から見て太陽と同じ方向にある。[r]　だから太陽が星座に入る、という言い方をする。」[p][stopse buf=3]
[mshide]
#北斗
[hw_egao2]
「ああ、地球のこの面が日本で、太陽と星座のほうを向いているから、[r]　昼間に星が見えれば、みたいな言い方してたのか。」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi]
「そして、今の時期は地球が太陽と星座の間の位置にあるから…」[p][stopse buf=3]
[mshide]
#美波
[mw_bishou]
「今みたいな春先に、おとめ座やしし座が見える、ですね。」[p][stopse buf=2]
#
[mmhide]
そういうことか。[p]
星座の見える時期と星占いの時期、それぞれのどっちかさえ覚えれば、[r]あとはそれを半年ずらせばもう片方の時期もわかると。[p]
…いや、どのみちどっちかは全部暗記しないといけないことに[r]変わりはないだろう。すごいな爺さん。[p]
[bg2 storage="kawa_n.jpg" time=1000]
[hokuto_w_mu2 left=680 wait=false][seizi_mu left=15]
#北斗
「あれ、なんの話だっけ…あ、そう、[r]　おとめ座の星が北極星ならわかりやすいのに、みたいな話だっけ。」[p][stopse buf=1]
#高村
「そうだな。おとめ座のスピカは一等星で、北極星は二等星だからね。」[p][stopse buf=3]
#北斗
[hw/mu]
「一等星と二等星？[r]　…なんか明らかに北極星のほうが劣ってるみたいな言い方だけど。」[p][stopse buf=1]
#高村
「一面ではそうだな。星は明るさによって等級付けされている。」[p][stopse buf=3]
#高村
「おとめ座の一番明るいアルファ星、スピカは一等星、[r]　対して北極星は少し暗い二等星だ。」[p][stopse buf=3]
#高村
「それでも、肉眼で見える限界は六等星まであり、[r]　街中ではせいぜい三等星くらいまでしか見えないから、[r]　星全体では北極星も明るい方だがね。」[p][stopse buf=3]
#北斗
[hw/kanasimi]
「とはいってもな、ちょっと地味ってのは何か…」[p][stopse buf=1]
#高村
[s/metozi]
「…ついでに言うと、北斗七星も二等星と三等星しかないんだな。」[p][stopse buf=3]
#北斗
[hw/aozame]
「…マジですか。大分ショックなんですけど。」[p][stopse buf=1]
#
なんというか、自分自身も今一つパッとしないと言われている気がする。[r]自分自身とは関係ないはずなんだけど。[p]
#高村
[s/hohoemi]
「まあ、しし座にはレグルスという一等星があるから。」[p][stopse buf=3]
#北斗
[hw/mu]
「…それなら、まあ、いっか。」[p][stopse buf=1]
#高村
「…それにな、明るさだけが星の全てじゃない。[r]　色や瞬き、星座の形…魅力はそれぞれだ。」[p][stopse buf=3]
#高村
「北斗七星なんて、星座の一部でありながらここまで有名で、[r]　わかりやすい形で、他の星探しに役立つ星なんだ。[r]　立派な星だと思うよ、私もね。」[p][stopse buf=3]
#北斗
[hw/akire]
「…なんかフォローさせちゃってすいません。」[p][stopse buf=1]
#高村
「いやいや。しかし、せっかくなら美波君にちなんで、[r]　南にかかわる星も見てみたいところだが。[r]　南とつく星座と言えば南十字星だけれどもなあ。」[p][stopse buf=3]
#
[chara_move name="hokuto" time=700 left=360 wait=false anim=true][chara_move name="seizi" time=700 left=-195 wait=true anim=true][minami_w_bishou left=840]
#美波
「南十字星、サザンクロス、ですか？」[p][stopse buf=2]
#北斗
[hw/bishou]
「あ、なんか聞いたことある。」[p][stopse buf=1]
#高村
[s/metozi]
「南十字星は、南半球、[r]　せめて沖縄くらいでないと見えない星座でなあ…」[p][stopse buf=3]
#北斗
「沖縄って、この北国で見えるわけないですね…」[p][stopse buf=1]
#
なんとも言えない優越感を感じる。[p]
#美波
[mw/tun]
「…何よその目は。」[p][stopse buf=2]
#北斗
[hw/akire]
「いや別に？」[p][stopse buf=1]
#高村
「こらこら、つまらんことで喧嘩するんじゃない…」[p][stopse buf=3]
[fadeoutbgm time=1000]
[mask time=500]
[bg2 storage="kawa_n.jpg" time="1500"]
[s/mu time=0][hw/metozi time=0]
[fadeinbgm  storage="bg/river.ogg" time=1000]
[mask_off time=500]

#美波
[mw_iradati]
「ああ、もうこんな時間に…」[p][stopse buf=2]
#高村
「流石にこれ以上は遅くなるな。早く帰りなさい。」[p][stopse buf=3]
#北斗
「…って、[r]　結局普通に天体観測しただけで爺さんの目当ての星探さなかったな…」[p][stopse buf=1]
#高村
[s/hohoemi]
「なに、いいんだよ。」[p][stopse buf=3]
#
そう言う爺さんの様子を見て感じる。[p]
…まるで、とりあえず時間つぶしができてよかったと言っているようだ。[p]
あるいは、本題に入らずに済んでよかったとでもいうような、そんな感じ。[p]
#北斗
[hw/mu]
「いや、また来ます。今度はちゃんと爺さんに協力するので。」[p][stopse buf=1]
#美波
[mw/magao2]
「ちょっと、何言ってるの。[r]　それに、またこんな遅くまで外出するなんて…」[p][stopse buf=2]
#高村
[s/mu]
「…まあ、私は構わんが。その制服、君たちは高校生なんだろう。[r]　学業にも支障が出るんじゃないのか？」[p][stopse buf=3]
#美波
[mw/magao2]
「そうよ。それに、これから部活で忙しくなるのに…[r]　それに、お父さんたちもなんていうか…」[p][stopse buf=2]
#北斗
[hw/aseri]
「…じゃあ、週末だけ。金曜か土曜の夜だけ。[r]　それぐらいならいいだろう？うちの親は何も言わないだろうし。」[p][stopse buf=1]
#北斗
「美波もさ、うちの学校天文部ないけど、兼部したと思って。」[p][stopse buf=1]
#美波
[mw/magao]
「…そんなに気に入ったの？天体観測。」[p][stopse buf=2]
#北斗
[hw/egao2][kanim name="hokuto" keyframe="nod" time="500"]
「ああ。」[p][stopse buf=1]
#美波
[mw/magao2]
「…そう。」[p][stopse buf=2]
#
そういうと、美波は大きく肩を揺らし、ため息をついた。[p]
#美波
[mw/akire]
「ハァ…わかった。私もお父さんたちに頼んでみる。」[p][stopse buf=2]
#北斗
[hw/odoroki]
「ほんとか？」[p][stopse buf=1]
#美波
[mw/bishou]
「ほっといても北斗一人で来るんだろうけど、[r]　それは色々心配だから。お爺さん、いいですか？」[p][stopse buf=2]
#高村
[s/hohoemi]
「ああ、私は構わんよ。」[p][stopse buf=3]
#北斗
[hw/egao2]
「よし、決まりだな。爺さん、また来るよ。」[p][stopse buf=1]

#
それから、俺たちと爺さんのお星さまを探す日々が始まった。[p]
美波の両親を説得するのは流石に骨が折れたけど、[r]成績を絶対に落とさないことを条件に許してもらった。[p]
こうして毎週毎週、[r]週末の夜になると河川敷に集まって望遠鏡を眺めることになったんだ。[p]
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

@jump storage="scene1.ks" target=*chapter1