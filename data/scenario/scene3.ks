*start
[cm]
[clearfix]
[start_keyconfig]
[hide time=0]
[fadeoutbgm time=300]
[wait time=500]
[voconfig sebuf=1 name="hokuto" vostorage="hokuto/hokuto_{number}.ogg" number=162 ]
[voconfig sebuf=2 name="minami" vostorage="minami/minami_{number}.ogg" number=108 ]
[voconfig sebuf=3 name="seizi" vostorage="seizi/takamura_{number}.ogg" number=91 ]
[voconfig sebuf=4 name="nao" vostorage="nao/nao_{number}.ogg" number=62 ]
[voconfig sebuf=5 name="reito" vostorage="reito/reito_{number}.ogg" number=28 ]
[voconfig sebuf=6 name="kaname" vostorage="kaname/kaname_{number}.ogg" number=1 ]
[vostart]
[mask time=500]
[bg2 storage="class.jpg" time="500"]
[rolebutton]
[M0]
@layopt layer=message0 visible=true
[ptext name="chara_name_area" layer="message0" color="white" size=44 bold=true x=350 y=755 face="NotoInitial"]
[wait time=500]
[mask_off time=1000]

*chapter3

#
日々は、飛ぶように過ぎていく。[p]
毎日の授業はしんどい。ついていくのもやっとだ。[p]
#教師
「まだ1年だからって手を抜いたりするんじゃないぞ！[r]　基礎が一番重要なんだから。みんなが予習に追われるのもわかるが、[r]　もっと重要なのは復習なんだからな！」[p]
#
[bg2 storage="ongaku.jpg" height=1554 top="-200" time="500"]
授業が終わったら部活でくたくたになるまで練習した。[r]成長の実感はないが、時間は待ってはくれない。[p]
とにかくやるしかない。[p]
[nao_magao]
#七音
「北斗君、次にコレ教えたいんだけど…できそう？」[p][stopse buf=4]
#
[hide][hokuto_w_magao]
#北斗
「大丈夫です。やってみます」[p][stopse buf=1]
#
[hide][minami_w_magao]
#美波
「……」[p][stopse buf=2]
#
[mask time=500]
[hide time=0]
[bg2 storage="kawa_n.jpg" time="500"]
[mask_off time=500]
週末の夜には爺さんと遅くなるぎりぎりまで夜空を見上げていた。[p]
そんな生活を続けていた。[p]
勉強も部活も休むわけにはいかない。[p]
それに、自分から言い出した手前、[r]爺さんとの天体観測に行かないわけにもいかない。[p]
[bg2 storage=black.png time=500]
[hokuto_w_aozame2]
#北斗
「ハァ…ハァ…」[p][stopse buf=1]
#
なんで自分はこんなことをしているのだろう。[p]
わからない。わからないが、止まってはならないという義務感がある。[p]
#教師
「おい、起きろ、加賀谷！」[p][playse storage=se/punch.ogg buf=8]
#
[bg2 storage="class.jpg" width=2500 height=1406 top=-300 left=-290 time="500"]
#北斗
[hw/aozame]
「ぇ…」[p][stopse buf=1]
#
気が付けば、数学の授業中に居眠りをしてしまったらしい。[p]
#教師
「え、じゃない！全く。しゃっきりしろ」[p]
#北斗
「…はぃ…」[p][stopse buf=1]
#教師
「…おい、顔色悪いぞ。大丈夫か。」[p]
#北斗
「だいじょうぶです…」[p][stopse buf=1]
#教師
「ちょっと触るぞ…おい、熱あるじゃないか。」[p]
#北斗
「ぇ…？」[p][stopse buf=1]
#教師
「…保健室行ってこい。保健委員、連れてってやってくれ。」[p]
#クラスメイト
「はい。」[p]
#北斗
[hw/aozame2]
「…」[p][stopse buf=1]
#
[hide][playse storage=se/chair.ogg buf=8][bg2 storage="class.jpg" time="1000"]
クラスメイトに肩を貸されて席を立ったあたりから、[r]自分の意識がどんどん薄れていった。[p]

[mask time=500]
[bg2 storage="hoken.jpg" width=3000 height=1687 left=-700 top=-100 time="1000"]
[playse storage=se/chime.ogg buf=8]
[wait time=1000]
[mask_off time=500]
#
チャイムの音で目が覚めた。[r]気が付けば自分は保健室のベッドに寝かされていた。[p]
[hs_hutyou]
#北斗
「あれ、今何時限目だろう…？」[p][stopse buf=1]
[mhhide]
#
だるい身体を起こしてみるが、時計が見当たらない。[p]
[fadeoutse buf=8 time=1000]
#北斗
[hs_mu2]
「…あ、」[p][stopse buf=1]
[mhhide]
#
自分が腕時計をしていることを思い出した。大分頭がボーっとしている。[p]
ちらっと見てみると、１６時を回っている。[p]
今のは５限終わりのチャイムだったようだ。[p]
ぼやけた頭が少しずつだが鮮明になってくる。[p]
確か２限の数学で倒れたはずだから…[p]
#北斗
[hs_kanasimi]
「…一日寝過ごしたのか、オレ…」[p][stopse buf=1]
[mhhide]
#養護
「あ、起きた？加賀谷君」[p]
#
[bg2 storage="hoken.jpg" time="500"][hokuto_s_mu]
#北斗
「あ、先生。」[p][stopse buf=1]
#養護
「大丈夫？」[p]
#北斗
[hs/mu2]
「まだちょっとだるいですけど、とりあえず。」[p][stopse buf=1]
#養護
「そう。喉とか痛くない？結構すごい熱だったけど。」[p]
#北斗
「いや、そういうのは特に。」[p][stopse buf=1]
#養護
「そう。新学期で疲れがたまっちゃった感じ？[r]　それに最近暑いもんね。衣替えも前倒しになるくらいだし、[r]　気温の変化に身体がびっくりしちゃったのかしら。」[p]
#北斗
[hs/mu]
「…かもしれないです。」[p][stopse buf=1]
#養護
「そっか。あ、そうだ、家の人に何回か電話したんだけどね、[r]　つながらなくて…」[p]
#北斗
[hs/mu2]
「…ああ、うちの親、大体昼間は寝てるので…」[p][stopse buf=1]
#養護
「あらそうなの？」[p]
#北斗
「でも、もう起きてると思いますし、まだ仕事行ってないはずです。」[p][stopse buf=1]
#養護
「…その、失礼かもしれないけど、加賀谷君の親御さんって…」[p]
#北斗
[hs/kanasimi]
「…その、うち母子家庭で。スーパーの夜勤で働いてて。」[p][stopse buf=1]
#養護
「そっか。大変なのね…とりあえず、もう1回電話かけてくるわ。[r]　お迎えに来てもらわないとね。」[p]
#北斗
[hs/mu]
「…すいません」[p][stopse buf=1]
#養護
「いいのよ。…そういえば、加賀谷君、あの子、彼女？」[p]
#北斗
[hs/odoroki]
「え？」[p][stopse buf=1]
#
急に近づいて小声で何をいうかと思えば、[r]先生がドアのほうに目線を送った。[p]
[hide][bg2 storage=rouka_s.jpg time=500][minami_s_ikari]
先生の目線の先に自分も目をやると、[r]廊下から美波がこちらをのぞいていた。[p]
[hide][bg2 storage=hoken.jpg time=500][hokuto_s_odoroki]
#養護
「あの子、休み時間になるたびに様子見に来てたわよ。[r]　お礼、言っといた方がいいんじゃない？」[p]
#北斗
[hs/bishou]
「…はい」[p][stopse buf=1]
#養護
「じゃ、職員室で電話してくるからね。」[p]
#
[hide]
自分がうなずくと、先生は出ていった。[p]
廊下で何か話していたかと思うと、[r]入れ替わりで少し赤い顔をした美波が入ってきた。[p]
[minami_s_uwame left=40 wait=false][hokuto_s_bishou left=640]
#美波
「…北斗、大丈夫？」[p][stopse buf=2]
#北斗
「うん、とりあえず。」[p][stopse buf=1]
#美波
[ms/dere]
「そう…」[p][stopse buf=2]
#北斗
「休み時間、来てくれたのか。」[p][stopse buf=1]
#美波
[ms/odoroki]
「だって、北斗が倒れたって聞いたから…」[p][stopse buf=2]
#北斗
「…心配してくれたんだ、ありがと」[p][stopse buf=1]
#美波
[ms/uwame]
「お礼なんていいわよ…ほら、ちゃんと布団かぶって横にならないと。」[p][stopse buf=2]
#北斗
[hs/hutyou]
「…悪い。」[p][stopse buf=1]
#
[hide][bg2 storage="hoken.jpg" width=3000 height=1687 left=-700 top=-100 time="1000"]
正直まだ少しだるいので、この気遣いがとてもありがたい。[p]
#北斗
[hs_mu]
「……」[p][stopse buf=1]
[mhhide]
#美波
[minami_s_magao2]
「……どうして、今日学校来たの？[r]　午前中に熱出すなんて、朝起きた時から体調悪くなかった？」[p][stopse buf=2]
#北斗
[hs_mu2]
「…正直だるいなとは思ってたけど、最近はずっとだったし。」[p][stopse buf=1]
[mhhide]
#美波
[ms/odoroki]
「ずっと…？」[p][stopse buf=2]
#北斗
[hs_mu]
「いや、平日は毎日部活して、毎日日付変わるくらいまで予習して、[r]　週末は昼間部活で夜は爺さんと星見て、また夜は勉強して、[r]　みたいな生活リズムだったし。」[p][stopse buf=1]
#北斗
「…正直ずっと寝不足だった」[p][stopse buf=1]
[mhhide]
#美波
[ms/magao2]
「……ご飯は、ちゃんと食べてる？」[p][stopse buf=2]
#北斗
[hs_mu]
「夜は母さんが作ってくれてるし。」[p][stopse buf=1]
#北斗
「でも、朝はともかく昼は簡単にすませてたかも。[r]　コンビニおにぎりとか、プロテインバー1本とか。」[p][stopse buf=1]
[mhhide]
#美波
[ms/aozame]
「…！なんで？」[p][stopse buf=2]
#北斗
[hs_metozi]
「いや、時間ないからさ、俺も母さんも。弁当なんか作らせるのも悪いし、[r]　コンビニで買うか購買のパン買うか、みたいな感じで。」[p][stopse buf=1]
#北斗
「食事代はもらってるけど、流石にそんないいもの買えないし…」[p][stopse buf=1]
[mhhide]
#美波
[ms/kanasimi]
「…そんな生活で、身体持つわけないじゃん…」[p][stopse buf=2]
#北斗
[hs_kanasimi]
「まあ、流石に無理したかな…」[p][stopse buf=1]
[mhhide]
#美波
[ms/magao]
「…とりあえず、しばらく休もう？今日木曜日だから、[r]　少なくとも月曜日までは、学校も部活も星もお休みして…」[p][stopse buf=2]
#北斗
[hs_iradati]
「…なんでだよ。明日の朝には治すし、部活も爺さんのとこにもいくよ。[r]　授業も一日でも休んだら取り戻せなくなるし…」[p][stopse buf=1]
[mhhide]
#美波
[ms/iradati]
「…ダメ！体調優先。部長やおじいさんには私から言っておくし、[r]　授業のノートなんかいくらでもあとで写させてあげるから。」[p][stopse buf=2]
#北斗
[hs_iradati2]
「嫌だ。明日も行く。行かなきゃ…」[p][stopse buf=1]
#美波
[ms/oogoe]
「北斗！！」[p][stopse buf=2]
#北斗
[hs_aseri]
「…！」[p][stopse buf=1]
#
[fadeinbgm storage=seiji.ogg time=1000]
[mhhide][ms/naki]
見れば、美波が目に涙を浮かべている。[p]
#北斗
[hs_mu]
「…なんだよ。」[p][stopse buf=1]
[mhhide]
#美波
「…普通さ、学校とか部活とか、休めるってなったらさ？[r]　普通の男子は、やった、1日サボれるって、思うもんじゃない？」[p][stopse buf=2]
#北斗
[hs_mu2]
「……そういうやつも、いるとは思うけど。」[p][stopse buf=1]
[mhhide]
#美波
[ms/naki2]
「じゃあさ、北斗はなんでそんなに頑張るの？」[p][stopse buf=2]
#北斗
[hs_mu]
「…そりゃあ、勉強はしなきゃいけないし、部活だって、[r]　下手なままじゃ迷惑かけるから…」[p][stopse buf=1]
[mhhide]
#美波
[ms/kanasimi]
「そんな状態で来られたほうが迷惑だよ…」[p][stopse buf=2]
#北斗
[hs_kanasimi]
「……」[p][stopse buf=1]
[mhhide]
#美波
[ms/ikari]
「……昔から、野球とかサッカーとか柔道とか空手とか、[r]　バスケとか生徒会とか、いきなり何か始めたかと思えば、[r]　最初は楽しそうにもみえたけど、途中からそうでもなかったよね。」[p][stopse buf=2]
#美波
「行かなきゃ、やらなきゃってイヤイヤ行ってるみたいだった。」[p][stopse buf=2]
#北斗
[hs_akire]
「それは…スポーツはさ、しょうがない時もあるだろ。[r]　きつい練習はあるし。生徒会なんか、面倒な仕事も多かったし。」[p][stopse buf=1]
[mhhide]
#美波
[ms/kanasimi]
「…でも、北斗のは、なんかそういうのだけじゃなかった。[r]　ううん、違う。別物だったよ、きっと。」[p][stopse buf=2]
#北斗
[hs_kanasimi]
「違う…？」[p][stopse buf=1]
[mhhide]
#美波
[ms/ikarinaki]
「だって、休みたいなんて、今と同じで言ってなかったし、[r]　それに、大体うまくやってたし。」[p][stopse buf=2]
#北斗
[hs_mu2]
「…」[p][stopse buf=1]
[mhhide]
#美波
「うまいのに、できてるのに、でも何か…物足りないみたいな感じと、[r]　でもやらなきゃいけないみたいな感じと…やらなきゃいけないなんて、[r]　誰にも言われてないのに。」[p][stopse buf=2]
#北斗
[hs_mu]
「それは…」[p][stopse buf=1]
[mhhide]
#美波
[ms/ikari]
「勉強なんか特にそう。勉強嫌だっていう割に、めっちゃ頑張るでしょ？[r]　中学のころから私より成績いいじゃない。」[p][stopse buf=2]
#北斗
[hs_metozi]
「成績はだって、落としたらさ…」[p][stopse buf=1]
[mhhide]
#美波
[ms/iradati]
「…お母さんが心配する？あの人、そんなに気にしなさそうだけど。」[p][stopse buf=2]
#北斗
[hs_mu]
「…まあ、本人もそう言ってるけど…」[p][stopse buf=1]
[mhhide]
#美波
[ms/ikari]
「……」[p][stopse buf=2]
#北斗
「……」[p][stopse buf=1]
#美波
「…天体観測が、一番意味わかんない。」[p][stopse buf=2]
#美波
「なんでそんなにあのお爺さんが気になるの？みえない星を探すってなに？[r]　なんなのよその星って！どこにある、なんて名前の星なの？」[p][stopse buf=2]
#北斗
[hs_mu]
「…知らない。」[p][stopse buf=1]
[mhhide]
#美波
[ms/ikarinaki]
「そんなの、見つかるわけないじゃん！[r]　ていうか、何を探してるの？あのお爺さん…」[p][stopse buf=2]
#北斗
[hs_metozi]
「…オレにもわかんないよ、そんなの。」[p][stopse buf=1]
[mhhide]
#美波
[ms/oogoe]
「だったら…！だったらなんであんなことしてるの？[r]　あんなに遅くまで、寝不足にまでなって！何があるのよ！」[p][stopse buf=2]
#北斗
[hs_mu]
「…わからない。わからないけど…」[p][stopse buf=1]
[mhhide]
#美波
[ms/naki2]
「……」[p][stopse buf=2]
#
ゆっくりと起き上がって、ただ、口にする。[p]
[fadeoutbgm time=500]
#北斗
[hs_kanasimi]
「……俺さ。」[p][stopse buf=1]
[mhhide]
#美波
「うん……」[p][stopse buf=2]
#北斗
[hs_kanasimi]
「……俺さ、夜に、家で一人でいるの、いやなんだよ。」[p][stopse buf=1]
[mhhide]
#美波
[ms/naki]
「…！」[p][stopse buf=2]
#北斗
[hs_kanasimi2]
「……なんかさ、家で一人でいるとさ、無性に寂しく感じるときあんだよ。[r]　誰もいないから、何の音もしないし。」[p][stopse buf=1]
[mhhide]
#美波
[ms/naki2]
「……」[p][stopse buf=2]
#北斗
[hs_kanasimi]
「でも、ふと仏壇の親父の遺影とか目にするとさ、なんか、見られている[r]　ような、そんで、何かをやらなきゃいけないような感じがしてさ…」[p][stopse buf=1]
[mhhide]
#美波
[ms/ikarinaki]
「…ッ…」[p][stopse buf=2]
#北斗
[hs_kanasimi]
「だから…だから、そういうことを感じなくて済むように、[r]　何かをやってないと、ダメなんだろうな…、[r]　遅くまで、練習だ稽古だって外で身体動かしてないと。」[p][stopse buf=1]
#北斗
「…そんで、自分は頑張れてるって思えてないと、ダメなんだろうな…」[p][stopse buf=1]
#北斗
「まあ、最近はホントにダメダメだけどな…授業ついてくのもギリギリ[r]　だし、なんでかギター全然うまくならないし…でも、」[p][stopse buf=1]
[mhhide]
#美波
[ms/naki]
「…ごめん」[p][stopse buf=2]
#北斗
[hs_odoroki]
「…美波？」[p][stopse buf=1]
#
[mhhide][hide]
[bg2 storage=still_cry.png time=1000]
#美波
「やっぱり…、やっぱりお父さんのことが…お父さんが、[r]　いないから…ごめん、北斗…ごめん…」[p][stopse buf=2]
#北斗
[hs_mu]
「…だから、それはもういいって。美波が悪いわけでもないし。[r]　そんなに気にしてないから。」[p][stopse buf=1]
[mhhide]
#美波
「気にしてるでしょ！寂しいって、言ってるでしょ…」[p][stopse buf=2]
#北斗
[hs_iradati2]
「…なんでお前がそんなこというんだよ。」[p][stopse buf=1]
[mhhide]
#美波
「だって、だって私の…」[p][stopse buf=2]
#北斗
[hs_iradati]
「いい加減しつこい…！」[p][stopse buf=1]
[mhhide]
[bg2 storage="hoken.jpg" width=3000 height=1687 left=-700 top=-100 time="500"][minami_s_odoroki]
#美波
「…！」[p][stopse buf=2]
#北斗
[hs_iradati]
「お前のせいだって、お前たちのせいで親父が死んだんだって、[r]　言えばお前の気が済むの？」[p][stopse buf=1]
#北斗
「…美波の罪悪感を、オレに押し付けないでよ…！」[p][stopse buf=1]
[mhhide]
#美波
[ms/oogoe]
「……！違う、私は、私は……」[p][stopse buf=2]
#北斗
[hs_aozame2]
「…ハァ、ハァ……」[p][stopse buf=1]
[mhhide]
#美波
[ms/naki2]
「…北斗。」[p][stopse buf=2]
#北斗
[hs_aozame]
「…出てって、熱が上がる。」[p][stopse buf=1]
[mhhide]
#美波
[ms/ikarinaki]
「……」[p][stopse buf=2]
#
[playse storage="se/step_fast.ogg" buf=8 sprite_time=0-2000]
[hide time=100]
オレがそういうと、美波は飛び出すように保健室を出ていった。[p]
#養護
「…加賀谷君？その、お母さんと連絡がついたけど…」[p]
#北斗
[hs_aozame]
「……」[p][stopse buf=1]
[mhhide]
#養護
「…加賀谷君、病人だからって、[r]　彼女を泣かせていいなんてことはないのよ？」[p]
#北斗
[hs_aozame]
「…彼女じゃないです。」[p][stopse buf=1]
[mhhide]
#
泣かせていいわけじゃないってことは、だるい頭でもわかっているのに。[p]
こんなどうでもいい言葉と布団の中に逃げてしまう自分が、情けなくて仕方ない。[p]

[mask graphic="cut/cutin_minami.png" time=1500]
[wait time=500]
[playbgm storage=eyecatch.ogg loop="false"]
[hide time=0]
[bg2 storage=heya.jpg time=4000][stopbgm]
[mask_off time=0]

@jump storage="scene4.ks" target=*chapter4