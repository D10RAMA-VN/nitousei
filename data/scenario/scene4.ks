*start
[cm]
[clearfix]
[start_keyconfig]
[hide time=0]
[fadeoutbgm time=300]
[wait time=500]
[voconfig sebuf=1 name="hokuto" vostorage="hokuto/hokuto_{number}.ogg" number=229 ]
[voconfig sebuf=2 name="minami" vostorage="minami/minami_{number}.ogg" number=149 ]
[voconfig sebuf=3 name="seizi" vostorage="seizi/takamura_{number}.ogg" number=91 ]
[voconfig sebuf=4 name="nao" vostorage="nao/nao_{number}.ogg" number=63 ]
[voconfig sebuf=5 name="reito" vostorage="reito/reito_{number}.ogg" number=28 ]
[voconfig sebuf=6 name="kaname" vostorage="kaname/kaname_{number}.ogg" number=36 ]
[vostart]
[mask time=500]
[bg2 storage="heya.jpg" time="500"]
[rolebutton]
[M0]
@layopt layer=message0 visible=true
[ptext name="chara_name_area" layer="message0" color="white" size=44 bold=true x=350 y=755 face="NotoInitial"]
[wait time=500]
[mask_off time=1000]

*chapter4
[fadeinbgm storage="bg/room.ogg" time=1000]
[fadeinse storage="bg/clock.ogg" loop=true buf=9 time=1000]
#
翌日。[p]
流石に一日学校は休みにした。[p]
夕方ともなれば熱はとっくに下がり、それなりに体調も良くなってきた。[p]
母さんは昨日仕事を休んで看病してくれたが、[r]流石に今日まで休ませるほどでもなかったので[r]夕方ごろいつも通り仕事に出かけて行った。[p]
1日ぶりにスマホを開くと部活は来週月曜まで休みになった[r]という連絡が入っていた。[p]
…明らかに自分のせいだ。[p]
美波から何かあるかと思い一瞬身構えたが、[r]彼女からの新着履歴は何も入っていなかった。[p]
傷つけてしまったと悔いても悔やみきれない俺と、[r]何も着信が無くて良かったと喜ぶ最低なオレが、両方自分の中にいる。[p]
…母さんの作ってくれたおかゆもいい加減食べてしまった。[p]
布団の中で過ごすのもいい加減退屈だ。[p]
…爺さんは、今日もあの河川敷にいるのだろうか。[p]
美波は行かないようにと言っていたし、[r]爺さんにも伝えておくように言っていた気がする。[p]
しかし、このまま悶々と過ごすのは限界だ。[p]
#北斗
「…行こう。」[p][stopse buf=1]

[fadeoutse buf=9 time=500]
[fadeoutbgm time=500]
[mask time=500]
[bg2 storage="kawa_n.jpg" time="1000"]
[seizi_hohoemi time=0]
[fadeinbgm  storage="bg/river.ogg" time=1000]
[mask_off time=500]

#高村
「…おや、北斗君。身体を壊していたのではなかったのかい？」[p][stopse buf=3]
#
[hide][seizi_hohoemi left=15 wait=false][hokuto_s_magao left=680]
#北斗
「…まあなんとか。やっぱり美波が来てましたか。」[p][stopse buf=1]
#高村
「ああ、昨晩な。喧嘩したとも言っていたが。」[p][stopse buf=3]
#北斗
[hs/akire]
「美波、あいつ何でも言うじゃん…」[p][stopse buf=1]
#高村
[s/kanasimi]
「そう言うな。相当思いつめていたよ。」[p][stopse buf=3]
#北斗
[hs/magao]
「…」[p][stopse buf=1]
#高村
[s/metozi]
「少しだけ聞いたが。せっかく人が心配してくれるのを無下にするのは…」[p][stopse buf=3]
#北斗
[hs/kanasimi]
「…それはわかってますよ、でも…」[p][stopse buf=1][vostop]
#
[hide][seizi_magao]
#高村
「……」[p][vostart]
#
爺さんの視線が鋭くなっていく。[r]まるで、言い訳するなと言っているように。[p]
でも、…でも。[p]
[hide][seizi_magao left=15 wait=false][hokuto_s_kanasimi2 left=680]
#北斗
「…違うんですよ。美波は。」[p][stopse buf=1]
#高村
「違うとは？」[p][stopse buf=3]
#北斗
[hs/kanasimi]
「昔、ちょっと色々あって……」[p][stopse buf=1][vostop]
#高村
「……」[p][vostart]
#北斗
「……」[p][stopse buf=1][vostop]
#高村
「……」[p][vostart]
#北斗
[hs/mu2]
「……聞いてくれますか？」[p][stopse buf=1]
#高村
[s/mu]
「話してくれるなら。嫌なら話してくれなくてもいい。」[p][stopse buf=3]
#
こんな失礼な話し方にも、爺さんはオレに逃げ道を作ってくれる。[p]
だからこそ、なんとしても話さなければならない。[p]
#北斗
[hs/kanasimi2]
「……ちょっとアレな話なんです。」[p][stopse buf=1]
#高村
[s/magao]
「アレとは？」[p][stopse buf=3]
#北斗
[hs/kanasimi]
「…俺の親父の話なんですけど。」[p][stopse buf=1]
#高村
「ふむ。」[p][stopse buf=3]
#北斗
[hs/mu]
「…亡くなってるんですよ。だいぶ前に。」[p][stopse buf=1]
#高村
[s/kanasimi]
「…そうなのか。」[p][stopse buf=3]
#北斗
[hs/mu2]
「まあ、ありきたりな病気してて。治療とか手術とかしたけどダメで。[r]　それで…」[p][stopse buf=1][vostop]
#高村
「……」[p][vostart]
#
[hide][hokuto_s_mu]
#北斗
「…うちの親父の主治医が、美波の親父さんだったんです。」[p][stopse buf=1]
#
[hide][seizi_magao]
#高村
「……！」[p][stopse buf=3]
#
[hide][hokuto_s_akire]
#北斗
「元々ご近所さんだったし、知り合いの主治医って、こういう時に気まずく[r]　なったりするから引き受けないのが普通らしいんですけど…」[p][stopse buf=1]
#北斗
[hs/bishou]
「…親父が病気なんだって美波に言ったら、[r]　うちのパパはお医者さんだからって、[r]　親父さんにかけあってくれたらしくて。」[p][stopse buf=1]
#北斗
[hs/kanasimi]
「それで美波の親父さんが治療してくれたけど、[r]　まあさっき言った通りダメで。それで……」[p][stopse buf=1]
#北斗
[hs/mu2]
「あいつ、無駄に責任感じてるらしいんですよね、色々と。」[p][stopse buf=1][vostop]
#高村
[s_magao]
「……」[p][vostart]
[mshide]
#北斗
[hs/mu]
「こっちは別に、親父さんの処置が悪かったわけでもないし、[r]　気にしてないのに…」[p][stopse buf=1]
#北斗
[hs/kanasimi]
「そんなことがあったから、[r]　あいつ色々と俺に構うようになったんですよね…」[p][stopse buf=1]
#北斗
「それで、俺、昨日美波に言っちゃって。[r]　罪悪感を押し付けるな、なんて…」[p][stopse buf=1]
#
[seizi_magao]
#高村
「そうか…それは…随分なことを言ったな。」[p][stopse buf=3]
#北斗
[hs/metozi]
「はい…」[p][stopse buf=1]
#高村
[s/mu]
「ふむ…それで、キミは美波君にどうしてほしい。[r]　キミはどうしたいんだね。」[p][stopse buf=3]
#北斗
[hs/mu]
「別に、ひどいこと言いたかったわけでもないですし、[r]　謝りたいです。」[p][stopse buf=1]
[voconfig sebuf=1 name="hokuto" vostorage="hokuto/hokuto_{number}.ogg" number=253 ]
[voconfig sebuf=3 name="seizi" vostorage="seizi/takamura_{number}.ogg" number=104 ]
#高村
[s/metozi]
「…それなら、[r]　私のところに来るより先に謝ってきたら良かったのではないか？」[p][stopse buf=3]
#
…グゥの音も出ない。[p]
#北斗
[hs/magao]
「…そうですね、すいません、変な話聞いてもらっちゃって。」[p][stopse buf=1]
#
[hide]
やはり今すぐにでも謝りに行こう。[r]そう思い立ち去ろうとしたとき、爺さんに呼び止められた。[p]
[seizi_magao]
#高村
「待て、北斗君。とにかく話を聞いてほしかった、[r]　というのもわかるが…キミは、それだけでもないんじゃないのか？」[p][stopse buf=3]
#北斗
[hs_odoroki]
「え…？」[p][stopse buf=1]
[mhhide]
#高村
「とにかく、[r]　自分が悪いようだから謝らなければならないことはわかっていても、[r]　本当のところは何といえばいいのかわからんのだろう。」[p][stopse buf=3]
#北斗
[hs_magao]
「……なんで、そんな風に。」[p][stopse buf=1]
[mhhide]
#高村
[s/hohoemi]
「キミは見る限り考えるより先に身体が動くタチだろう。」[p][stopse buf=3]
#高村
「それなのに美波君のところではなく私のところに来たということは、[r]　何かしかの答えが欲しい、そうでなければ美波君と話せない、」[p][stopse buf=3]
#高村
「あるいはとりあえず謝ったところで、お互いにしこりが残るんじゃないか、[r]　そう思っている…違うかな？」[p][stopse buf=3]
#
…自分でも言語化できていないもやもやを、すべて突きつけられたようだ。[p]
[hide][seizi_hohoemi left=15 wait=false][hokuto_s_akire left=680]
#北斗
「……これが、亀の甲より年の功、ってやつですか。」[p][stopse buf=1]
#高村
[s/hohoemi2]
「は、そんな大層なもんじゃない。…昔、私も家内とよくケンカしたが、[r]　結局あいつが何に腹を立てているのかわからんこともよくあった、[r]　というだけのことさ」[p][stopse buf=3]
#北斗
[hs/odoroki]
「…家内って、奥さん？爺さん、奥さんいるんですか」[p][stopse buf=1]
#
…意外な言葉が出てきた。[r]いつも一人でいるものだから、自然と独身だと思っていたが。[p]
#高村
[s/magao]
「ああ。…まあ私たちのことはいい。さて、今は君たちのことだ。[r]　もう一度聞くぞ。」[p][stopse buf=3]
#高村
「キミは美波君にどうしてほしい。キミはどうしたいんだね。」[p][stopse buf=3]
#北斗
[hs/kanasimi]
「それは…」[p][stopse buf=1]
#高村
「それがわからなければ、何も変わらないぞ。」[p][stopse buf=3]
#北斗
[hs/kanasimi2]
「……」[p][stopse buf=1]
#
[fadeoutbgm time=500][hide]
美波にオレはどうして欲しいのか。[p]
あまり気を使わないでほしい。構わないでほしい。[p]
…本当にそうなのか？[p]
そして、オレは美波にどうしたい？[p]
なんと言ってやりたいんだ。[p]
いいよ、心配するな、大丈夫だから。[p]
オレはいつもそんな言葉をかけてきた。[p]
それは、心の一番深いところに、[r]美波を立ち入らせないようにする拒絶の言葉だった。[p]
オレは、本当は美波がうざったくて仕方なかったのか？[p]
[seizi_magao left=15 wait=false][hokuto_s_kanasimi left=680]
#北斗
「そんな、はずは…」[p][stopse buf=1]
#高村
[s/mu]
「ん？」[p][stopse buf=3]
#北斗
[hs/kanasimi2]
「…すいません、よくわかりません…」[p][stopse buf=1]
#高村
[s/hohoemi]
「…そうか。まあ、ゆっくり考えるといい。[r]　あまり時間をかけすぎてこじれてもいかんがな。」[p][stopse buf=3]
#高村
「少し星でも見よう、病み上がりだというから、ほんの少しだけな。」[p][stopse buf=3]
#北斗
[hs/bishou]
「はい…それじゃあ」[p][stopse buf=1]
#
そういって、爺さんの望遠鏡に手をかけようとした。[p]
#高村
「まあ、今日はそれは使わずに。星空全体を眺めてみようじゃないか。」[p][stopse buf=3]
#北斗
[hs/odoroki]
「え…？」[p][stopse buf=1]
#高村
[s/hohoemi2]
「思えば、最初にこれを教えておけばよかったかな。」[p][stopse buf=3]
#
[hide][fadeinbgm storage=seiji.ogg time=1000]
そういって、爺さんは天に向かって指をさした。[p]
[bg2 storage="seiza/419dipper.png" width=2279 height=1909 time=500 left=-300 top=-350]
その指先にあるのは、北斗七星。[p]
#高村
[s_hohoemi]
「北斗七星、キミの星だ。もう覚えたろう？」[p][stopse buf=3]
[mshide]
#北斗
[hs_magao]
「ええ…桶の部分を伸ばしていくと、北極星にたどり着くって…」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi2]
「そうだ。[r]　じゃあ、今度は柄の方をあの弓なりの形に沿って伸ばしてごらん。」[p][stopse buf=3]
#
[mshide]
[bg2 storage="seiza/usikai.png" width=1951 height=1635 time=500 left=0 top=-500]
#北斗
[hs_akire]
「え…？あ、なんか明るい星が…」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi]
「それはうしかい座のアークトゥルスだ。[r]　さらに、そのカーブのままのばしてみなさい。」[p][stopse buf=3]
#
[mshide]
言われるがままに指を動かしていく。[p]
#北斗
[hs_odoroki]
「えーっと…また明るい星が…ってあれ？」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi2]
「見覚えがあるだろう？」[p][stopse buf=3]
#
[mshide]
[bg2 storage="seiza/usikai_virgo.png" width=1951 height=1635 time=500 left=0 top=-500]
#北斗
[hs_mu]
「…おとめ座…」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi]
「そう。おとめ座。その1等星、スピカだ。[r]　この星の並びを、春の大曲線という。」[p][stopse buf=3]
[mshide]
#北斗
[hs_mu]
「…おとめ座、か。」[p][stopse buf=1]
#
[mhhide]
美波の守護星座。なんだってこんなタイミングでこれを見せるのか。[p]
#高村
[s_kuti]
「そしてな？アークトゥルスとスピカの中点から、[r]　今度は垂直に伸ばしていくと…」[p][stopse buf=3]
#
[mshide]
[bg2 storage="seiza/Stryangle.png" width=1951 height=1635 time=500 left=0 top=-50]
#北斗
[hs_odoroki]
「…しし座だ。」[p][stopse buf=1]
#
[mhhide]
今度はオレの守護星座にたどり着く。[p]
[bg2 storage="seiza/Stryangle.png" width=2050 height=1718 time=500 left=-130 top=-550]
#高村
[s_hohoemi]
「そう、しし座のデネボラ。この3つの星を、春の大三角というんだ。」[p][stopse buf=3]
[mshide]
#北斗
[hs_mu]
「春の大三角…なんか、北斗七星もしし座も、おとめ座に関係あるんだ」[p][stopse buf=1]
[mhhide]
#高村
[s_hohoemi]
「ああ。」[p][stopse buf=3]
#
[mshide]
爺さんの意図することが、なんとなく読めた。…とはいえ。[p]
[bg2 storage=kawa_n.jpg time=500][fadeoutbgm time=1000]
[hokuto_s_akire left=680 wait=false][seizi_hohoemi left=15]
#北斗
「…爺さん、言いたいことはわかるけど、クサすぎだよ…」[p][stopse buf=1]
#高村
「そうか？まあとにかくだ、星というのは、一つの星、[r]　一つの星座が見つかれば、ほかの星座も続けて見つかることが多い。」[p][stopse buf=3]
#高村
「特に、北斗七星やおとめ座なんて大物はな。」[p][stopse buf=3]
#北斗
[hs/mu]
「…」[p]
#高村
[s/magao]
「とはいえ、星は一つではただの光る点だ。[r]　どの星かなんて一つだけ見てもわからん。[r]　星座として夜空に映るからわかる。」[p][stopse buf=3]
#高村
「北斗七星の先にあるから、ただの2等星が北極星だとわかるし、[r]　明るいだけの星もあの形の中にあるから[r]　しし座やおとめ座だとわかるのさ。」[p][stopse buf=3]
#北斗
[hs/bishou]
「…人間も同じようなもの、ってことでしょ？」[p][stopse buf=1]
#高村
[s/hohoemi2]
「ああ。なんでもそうだよ。」[p][stopse buf=3]
#北斗
[hs/metozi]
「……」[p][stopse buf=1]
#高村
[s/hohoemi]
「…さて、今日はここまでだ。[r]　私も、慣れないことを言ってむず痒いしな。」[p][stopse buf=3]
#北斗
[hs/akire]
「…やっぱりかっこつけてた」[p][stopse buf=1]
#高村
[s/kuti]
「はは、まあ、とにかく今日は早く帰りなさい。」[p][stopse buf=3]
#北斗
[hs/egao2][kanim name="hokuto" keyframe="nod" time="500"]
「うん、ありがとう爺さん。それじゃ。」[p][stopse buf=1]
#高村
[s/mu]
「…北斗君、やっぱり最後に一つだけ、付け足しておく。」[p][stopse buf=3]
#北斗
[hs/odoroki]
「え？」[p][stopse buf=1]
#高村
[s/magao]
「…自分のことを本気で思ってくれる女など、[r]　一生で一人出会えるかどうかだぞ。」[p][stopse buf=3]
#
それは、あんまりにも蛇足に過ぎるだろうと思われる言葉で。[p]
だからオレは、逆に聞き返してやった。[p]
#北斗
[hs/bishou]
「…爺さんは、一人は見つかったの？」[p][stopse buf=1]
#高村
[s/hohoemi]
「ああ、一人だけな。」[p][stopse buf=3]
#北斗
[hs/magao]
「爺さんほど長く生きてても、一人だけなんだ。」[p]
#高村
「ああ、そうだ。」[p][stopse buf=3]
#北斗
[hs/magao]
「そっか。…わかった。覚えとく。」[p][stopse buf=1]
#
そうして、オレは家路についた。[p]

[mask graphic="cut/cutin_reito.png" time=1500]
[wait time=500]
[eval exp="sf.chap4=1"]
[playbgm storage=eyecatch2.ogg  loop="false"]
[hide time=0]
[bg2 storage=michi.jpg time=6000][stopbgm]
[mask_off time=500]

@jump storage="scene5.ks" target=*chapter5
