*start
[cm]
[clearfix]
[start_keyconfig]
[hide time=0]
[fadeoutbgm time=300]
[wait time=500]
[voconfig sebuf=1 name="hokuto" vostorage="hokuto/hokuto_{number}.ogg" number=99 ]
[voconfig sebuf=2 name="minami" vostorage="minami/minami_{number}.ogg" number=82 ]
[voconfig sebuf=3 name="seizi" vostorage="seizi/takamura_{number}.ogg" number=63 ]
[voconfig sebuf=4 name="nao" vostorage="nao/nao_{number}.ogg" number=22 ]
[voconfig sebuf=5 name="reito" vostorage="reito/reito_{number}.ogg" number=9 ]
[voconfig sebuf=6 name="kaname" vostorage="kaname/kaname_{number}.ogg" number=18 ]
[voconfig sebuf=1 name="hutari" vostorage="mix/hai{number}.ogg" number=2 ]
[voconfig sebuf=1 name="itidou" vostorage="mix/oh{number}.ogg" number=1 ]
[voconfig sebuf=4 name="sannin" vostorage="mix/omo{number}.ogg" number=1 ]
[vostart]
[mask time=500]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time="500"]
[kaname_bishou2 time=0]
[rolebutton]
[M0]
@layopt layer=message0 visible=true
[ptext name="chara_name_area" layer="message0" color="white" size=44 bold=true x=350 y=755 face="NotoInitial"]
[wait time=500]
[mask_off time=1000]
#
*chapter1
#奏女
「それじゃ、名簿のここにサインして…」[p][stopse buf=6]
#美波
[mw_magao]
「はい…」[p][stopse buf=2]
[mmhide]
[vostop]
#北斗
[hw_magao]
「…」[p][stopse buf=1]
[mhhide][vostart]
#
[move name=kaname left=140][nao_niko left=730]
#七音
「…よし。これで今年度のメンバーは確定！[r]　5人でがんばっていきましょー！」[p][stopse buf=4]
#
[move name=nao left=460][move name=kaname left=-80 wait=true][reito_komari left=850]
#令人
「結局、新入生は初日に来てくれた2人だけでしたね…」[p][stopse buf=5]
#七音
[n/niko2]
「上々よ上々。私たちも元々一学年1人2人しかいないんだし。」[p][stopse buf=4]
#奏女
[k/niko]
「2人とも毎日通ってくれてありがとう。[r]　これからは正式に部員として、どうぞよろしくね」[p][stopse buf=6]
#北斗
[hw_egao2]
「はい！」[p][stopse buf=1]
[mhhide]
#美波
[mw_bishou]
「よろしくお願いします。」[p][stopse buf=2]
[mask time=500]
[mmhide time=0][r/magao time=0]
#
[mask_off time=500]

#七音
[n/niko]
「さて、今年度のメンバーも決まったところで、[r]　今年度初の部会を開催したいと思います！」[p][stopse buf=4]
#一同
[hw_egao2]
「おー（パチパチ）」[p][stopse buf=1]
#
[mhhide]
#七音
[n/magao]
「ワタシ達にはやらなきゃいけないことがあります。」[p][stopse buf=4]
#北斗
[hw_mu2]
「やらなきゃいけないこと？」[p][stopse buf=1]
[mhhide]
#美波
[mw_magao2]
「…なんですか？」[p][stopse buf=2]
[mmhide]
#七音
[n/magao]
「それはね、…部則改定よ！」[p][stopse buf=4]
#令人
[r/komari]
「あー…」[p][stopse buf=5]
#奏女
[k/bishou]
「メンバーも新しくなったんだし、ルールも新しくしなきゃだよね」[p][stopse buf=6]
#北斗
[hw_mu]
「え、そんなもんですか？[r]　今までのがあるならそのままでもいいんじゃないですか？[r]　俺らもちゃんと守りますよ。」[p][stopse buf=1]
[mhhide]
#令人
[r/magao]
「いや、それが今までの部則がひどくて…俺もこの機会に変えたいです、[r]　七音さん」[p][stopse buf=5]
#七音
[n/niko]
「だよねえ…」[p][stopse buf=4]
#美波
[mw_magao2]
「…そんなにひどいんですか…どんな部則なんですか？」[p][stopse buf=2]
[mmhide]
#七音
[n/iradati]
「それはね…」[p][stopse buf=4]

#
[k/magao wait=false][n/magao wait=false][r/magao]
#三人
「「「おもしろくあれ」」」[p][stopse buf=4]
#
[hide][minami_w_tun left=40 wait=false][hokuto_w_aseri left=640]
#二人
「「…はい？」」[p][stopse buf=1]
#
[hide]
[kaname_kanasimi left=-80 wait=false][nao_kanasimi left=460 wait=false][reito_kanasimi left=850]
#七音
「いやほんとに。この7文字だけなのよ。『おもしろくあれ』」[p][stopse buf=4]
#北斗
[hw_kanasimi]
「…なんか軽音部の部則っていうより芸能事務所の社訓っぽいですね」[p][stopse buf=1]
[mhhide]
#令人
「ホントだよな。去年の先輩達が悪ノリで作ったんだけどさ」[p][stopse buf=5]
#美波
[mw_magao2]
「なんで止めなかったんですか」[p][stopse buf=2]
[mmhide]
#七音
「いや、生徒会に提出したあとに私たちに知らされたのよ」[p][stopse buf=4]
#令人
[r/komari]
「事後承諾甚だしいにもほどがありましたね…あれは…」[p][stopse buf=5]
#北斗
[hw_kanasimi]
「うわあ…」[p][stopse buf=1]
[mhhide]
#七音
[n/magao]
「…という訳で。忌まわしい記憶を断ち切るためにも、[r]　新入生の２人も交えてちゃんとした部則を作りたいと思います！」[p][stopse buf=4]
#みんな
[hw_egao2]
「おー（拍手）」[p]
[mhhide]
#七音
[n/bishou]
「というわけで、早速会議よ。奏女、メモお願い。」[p][stopse buf=4]
#奏女
[k/bishou]
「はーい。ホワイトボード取ってくるねー。」[p][stopse buf=6]

[mask time=500]
[n/magao]
[mask_off time=500]

#七音
「さて、早速だけど、何かアイデアある人？」[p][stopse buf=4]
#令人
[r/kanasimi]
「…まあ、運営とか風紀とかその辺の細かいことに関しては[r]　文化部規則に載ってるし、[r]　結局スローガンみたいなものにしてる部が多いみたいですけど…。」[p][stopse buf=5]
#七音
[n/kanasimi]
「先生達も生徒会もゆるゆるだしねー。[r]　たった一言の部則そのままスルーしちゃう感じだし。」[p][stopse buf=4]
#北斗
[hw_kanasimi2]
「…大丈夫なんですかこの学校…？」[p][stopse buf=1]
[mhhide]
#奏女
[k/bishou2]
「…ちゃんとしてるところはちゃんとしてるから…ハハハ…」[p][stopse buf=6]
#美波
[mw_magao2]
「…まあつまり、私達自身が、この部をどういう部にしたいか[r]　っていうことを部則に書けばいいんですかね？」[p][stopse buf=2]
[mmhide]
#七音
[n/niko]
「美波ちゃん良いこと言う！そうしよう！」[p][stopse buf=4]
#北斗
[hw_mu2]
「どういう部にしたいか、かあ…」[p][stopse buf=1]
[mhhide]
#奏女
[k/magao]
「そうだねえ、あんまり思いつかないけど…[r]　いつでもみんなで仲良くいたいかなあ…」[p][stopse buf=6]
#七音
[n/magao]
「決まりね。今日からうちの部則は『みんな、仲良く』よ！」[p][stopse buf=4]
#北斗
[hw_tere]
「待って待って待って！」[p][stopse buf=1]
[mhhide]
#令人
[r/tukomi]
「いくらなんでも！」[p][stopse buf=5]
#七音
[n/iradati]
「うるさい、奏女の言うことは絶対なのよ！」[p][stopse buf=4]
#美波
[mw_akire]
「こういうのって、部長の言うことは絶対とかありますけど、[r]　副部長の言うことは絶対なんですね…」[p][stopse buf=2]
[mmhide]
#七音
[n/bishou]
「だって奏女だもん。この子がいうことなら間違いないわ！」[p][stopse buf=4]
#令人
[r/komari]
「…七音さんの奏女さんに対する信頼は何なんだ…」[p][stopse buf=5]
#奏女
[k/niyake]
「…うーん、令人君だけには言われたくないな…[r]　まあ私も言った手前あれだけど、もうちょっと考えよう、七音？」[p][stopse buf=6]
#七音
[n/kanasimi]
「うーん、奏女が言うなら。でもいいと思うんだけどなー。」[p][stopse buf=4]
#美波
[mw_magao2]
「…別に、入れればいいんじゃないですか。[r]　もっと他にも付け足していけば。」[p][stopse buf=2]
[mmhide]
#北斗
[hw_mu2]
「確かに。部則は一つじゃなきゃいけないわけじゃないですし。」[p][stopse buf=1]
[mhhide]
#令人
[r/komari]
「まあ普通はたくさんあるものですよね。[r]　…今までがおかしかっただけで。」[p][stopse buf=5]
#七音
[n/bishou]
「そしたら他にも考えようか。あとどんな部にしたいか。」[p][stopse buf=4]
#令人
[r/magao]
「…一応、軽音部なんですから、[r]　毎日の練習とか、演奏とかに関することも入れたいです。」[p][stopse buf=5]
#北斗
[hw_magao]
「そういやここ、軽音部でしたね」[p][stopse buf=1]
[mhhide]
#美波
[mw_akire]
「…北斗、失礼過ぎ。」[p][stopse buf=2]
[mmhide]
#奏女
[k/magao]
「軽音に関してか…真面目に取り組む、とか？」[p][stopse buf=6]
#七音
[n/bishou]
「…まあでも、好きでやってる部活だからね。[r]　大会云々があるわけでもなし、何よりみんなで楽しくやりたいな。」[p][stopse buf=4]
#令人
[r/kanasimi]
「……」[p][stopse buf=5]
#七音
[n/niko3]
「ここはそういう所じゃない…、[r]　音楽だけじゃなくて時折関係ない遊びもしながら[r]　みんなでワイワイ楽しい時間が過ごせる場所にしたいの。」[p][stopse buf=4]
#美波
[mw_magao2]
「…でも、だからってダラダラしていいわけでもないですよね。」[p][stopse buf=2]
[mmhide]
#北斗
[hw_magao]
「新歓ライブで見せてもらったくらいのすごい演奏できるようになりたい[r]　です。そのためには、締めるところは締めるべきなんでしょうし…」[p][stopse buf=1]
[mhhide]
#奏女
[k/magao]
「うーん、どうしたらいいんだろう…」[p][stopse buf=6]
#美波
[mw_magao]
「…そしたら、」[p][stopse buf=2]
[mmhide]
#七音
[n/magao]
「美波ちゃん、なにか浮かんだ？」[p][stopse buf=4]
#美波
[mw_magao2]
「真面目にやるときはその分楽しんで打ち込み、[r]　やり過ぎたときはちゃんと休む。」[p][stopse buf=2]
#美波
「そしてもしちょっと遊びすぎちゃったりして気が抜けちゃったあとは[r]　その分真面目にやって取り返す、メリハリをつける、[r]　っていうのはどうでしょうか。」[p][stopse buf=2]
[mmhide]
#奏女
[k/bishou2]
「それいいかも！」[p][stopse buf=6]
#北斗
[hw_magao]
「でも、メリハリをつける、だけだと味気ないですよね、[r]　そうだな…よし、こんなのはどうですか？」[p][stopse buf=1]
#北斗
[chara_mod name=hokuto storage=hokuto_win/egao2.png time=700]
「『マジメさと楽しさは両立させるべし！』」[p][stopse buf=1]
[mhhide]
#七音
[n/niko]
「いいね、なんかその『させるべし！』っていかにも部則っぽい！」[p][stopse buf=4]
#奏女
[k/bishou2]
「じゃあ、これも付け足しとくねー。」[p][stopse buf=6]
#七音
[n/niko3]
「うんうん、良くなってきた。去年のより明らかに良いよー！」[p][stopse buf=4]

[mask time=500]
[wait time=700]
[mask_off time=500]

#七音
[n/bishou]
「よし。部則についてはこんなところで。[r]　じゃあ次は、ライブについてだね。」[p][stopse buf=4]
#奏女
[k/bishou]
「そろそろ曲とか決めないとだもんね。」[p][stopse buf=6]
#北斗
[hw_odoroki]
「どんな感じなんですか？」[p][stopse buf=1]
[mhhide]
#令人
[r/bishou]
「いつもみんな自分が弾いてみたい曲を持ち寄ってみる感じかな。」[p][stopse buf=5]
#令人
「今回は練習期間３か月くらいだから、[r]　３、４曲くらいはやりたいって感じですかねえ…？」[p][stopse buf=5]
#七音
[n/kanasimi]
「そうだね…私たちにとっては最後のライブになっちゃうから、[r]　くいのこりがないようにしたいな。」[p][stopse buf=4]
#北斗
[hw_metozi]
「くいのこり…？」[p][stopse buf=1]
[mhhide]
#美波
[mw_magao2]
「くいのこりってなんですか。悔いが残らないようにってことですか？」[p][stopse buf=2]
[mmhide]
#七音
[n/niko]
「あ、ごめんごめん。先輩が前に反省会に噛んでからずっと[r]　悔いが残ることをくいのこりっていうようになっちゃったの」[p][stopse buf=4]
#北斗
[hw_metozi]
「いや普通に悔いが残らないようにでいいじゃないですか…」[p][stopse buf=1]
#
[mhhide]
とはいえ謎に語感がいいのは何なんだろう。[p]
くいのこり。くいのこり。うん。なんかすげー言いやすい。[p]
#令人
[r/magao]
「…話戻しましょう」[p][stopse buf=5]
#七音
[n/bishou]
「あ、そうだね。[r]　えーっと、曲についてなんだけど、やってみたい曲がある人？」[p][stopse buf=4]
#奏女
[k/bishou2]
「七音は何かあるんでしょう？」[p][stopse buf=6]
#七音
[n/niko3]
「あ、うん。ちょっと古い曲なんだけどね。いい曲があって…」[p][stopse buf=4]
#
[hide]
そういうと、部長はスマホで動画サイトを開き、ある動画を再生した。[p]
;（bgM　IN　二等星になって　夕子ボーカル)[p]
[kaname_magao left=-80 wait=false][nao_niko3 left=460 wait=false][reito_magao left=850]
#令人
「…昭和歌謡ですか？」[p][stopse buf=5]
#七音
[n/bishou]
「うん。あ、バンドアレンジの譜面も検索済みだから安心して。」[p][stopse buf=4]
#奏女
[k/bishou2]
「出た。七音の懐メロチョイス。」[p][stopse buf=6]
#七音
[n/niko]
「えへへ。最後までこんなんでごめんね」[p][stopse buf=4]
#奏女
[k/bishou]
「ううん、それでこそ七音だし。でも大分優しい曲調だね。」[p][stopse buf=6]
#七音
[n/bishou]
「うん。だから後半かな、やるとしたら。」[p][stopse buf=4]
#北斗
[hw_mu]
「……」[p][stopse buf=1]
[mhhide]
#美波
[mw_magao2]
「北斗？」[p][stopse buf=2]
[mmhide]
#北斗
[hw_mu2]
「…どっかで聞いたことあるな、この曲。なんだっけ…」[p][stopse buf=1]
[mhhide]
#七音
[n/niko]
「これ、『二等星になって』っていう曲なの。[r]　結構有名だからどこかで聞いたことあるのかもね。」[p][stopse buf=4]
#
[hide][hokuto_w_metozi]
#北斗
「……」[p][stopse buf=1]
#
[hide]
スマホのスピーカーから流れる、少し音質の悪い歌声に集中する。[p]
何か、懐かしさを覚える。[p]
曲調が懐メロ特有のものだから、というわけではない。[p]
動画の概要欄に書いてある「北野夕子」という歌手の名前も、[r]確かにどっかで見たような気はするが、それでもない。[p]
[bg2 storage=byousitu.jpg time=500]
何か、脳裏に浮かび上がってくるようなものがある。[p]
白い壁と、狭い場所。そんな曖昧なイメージ。[p]
…だめだ、これ以上は思い出せない。[p]
でも、この曲がいい曲であることはよくわかる。[p]
切ない別れの曲だ。[p]
[bg2 storage=ongaku.jpg height=1554 top="-200" time=500]
[kaname_magao left=-80 wait=false][nao_bishou left=460 wait=false][reito_magao left=850]
#七音
「なんか、ちょっと恥ずかしいけどね。」[p]
#七音
「でも、私にとって、私と奏女にとっては最後のライブだから、[r]　ちゃんとお別れをするって曲も入れたくて。」[p][stopse buf=4]
#令人
[r/komari]
「…そんな寂しいこと言わないでくださいよ」[p][stopse buf=5]
#奏女
[k/bishou]
「…そうだね。この曲はいいかも。」[p][stopse buf=6]
#
[hide][minami_w_bishou]
#美波
「私も。…北斗は、どう？」[p][stopse buf=2]
#
…この曲には、何か惹かれるものがある。[p]
その正体は、まだわかってはいないが。[r]それを確かめてみたい。そう感じる。[p]
[hide][hokuto_w_mu]
#北斗
「オレも、この曲やってみたいです。」[p][stopse buf=1]
[hide][kaname_magao left=-80 wait=false][nao_niko3 left=460 wait=false][reito_magao left=850]
#七音
「よし。決まりだね。[r]　それじゃあこれは確定で、あとみんなやってみたい曲ある？」[p][stopse buf=4]
#令人
「そしたら…」[p][stopse buf=5]
#奏女
[k/bishou2]
「こういうのはどう…？」[p][stopse buf=6]
#美波
[mw_magao2]
「ちょっと、考えてきてもいいですか…？」[p][stopse buf=2]
[mmhide]
#
そんなこんなで、なんと一週間ほどもああでもないこうでもないと[r]議論が続き、なんとかセットリストが決まったのだった。[p]

[mask time=500]
[hide]
[bg2 storage="genkan.jpg" time="500"]
[mask_off time=500]

#
ようやくセットリストを決め、部活が終わってすぐに家路についた。[p]
[playse  storage="se/door.ogg"]
玄関のドアを開け、一言。[p]
#北斗
「ただいま」[p][stopse buf=1]
#
……当然、返事はない。[p]
[bg2 storage="ima.jpg" time="500"]
#北斗
「…さてと。」[p][stopse buf=1]
#
[playse  storage="se/fridge.ogg"]
冷蔵庫から母の作り置きを取り出す。今日はチャーハンらしい。[p]
#北斗
「ちょっと今日手抜きだろ…母さん」[p][stopse buf=1]
#
といってもちゃんと毎日料理を作り置きしてくれてるのは[r]感謝すべきなのだろう。[p]
冷蔵庫の調味料棚を見ると、[r]未開封のインスタントラーメンの粉末スープ袋が目に付く。[p]
#北斗
「母さんまたインスタント麺で昼済ませたろ…しかもこれ、[r]　2袋開けたのか？」[p][stopse buf=1]
#
流石に成長期の息子のためにそれなりに料理はしてくれるのだが、[r]放っておくとすぐインスタントやレトルトですましてしまう。[p]
#北斗
「…しょうがないな。」[p][stopse buf=1]
#
母も忙しい上に昼夜逆転の生活をしているのだ。[p]

#北斗
「いただきます」[p][stopse buf=1]
#
PM１９：００。今日はいつもより少し遅い夕食。[p]
といっても爺さんと天体観測をする夜よりはよっぽど早いのだが。[p]

#北斗
「……」[p][stopse buf=1]
#
無音なのが耐えられないので、適当にTVをつけてみる。[p]
ゴールデンタイムのバラエティ。[p]
昔は割と好きだった気もするが、騒がしいばかりでむしろやるせなさが[r]募るばかりなので、ニュースに変えた。[p]
#北斗
「ごちそうさま。」[p][stopse buf=1]
#
食べ終わった食器を洗い、とっととシャワーを浴びる。[p]
#北斗
「…さて、予習するか」[p][stopse buf=1]
#
[bg2 storage="heya.jpg" time="500"]
PM20：00。明日は主要3教科がそろっているので相当予習がきつい。[p]
まずは数学Ⅰから手を付ける。[p]
中学時代は一番苦手だったはずの数学が、なぜか今は一番楽に感じる。[p]
整数、実数という初歩的な内容だからかもしれないが、一番の理由は、[r]
手を動かせばなんとかなるものだからだと思う。[p]
古文や英語は、中学の間は文の意味がとれていればなんとかなっていたのに、高校に上がったとたん文法を覚えるばかりになった。[p]
四段に上一、二段、下一、二段に変格活用。[p]
基本5文型だのなんだのかんだの…[p]
正直覚えられる気がしない。[p]
何が同格の”is”と存在の”is”なのか。”is”は”is”だ。[p]
…今の英文にしたら Is is a is.とかになるのか？[p]
#北斗
「…わーくだらね」[p][stopse buf=1]
#
ともかくやるより仕方ない。点数を落とすわけには行かないのだ。[p]
この間の実力テストは、学年5位だった。悪くはないはずだ。[p]
しかし、もっとやらなければ。[p]
やらなければ、ならないんだ。[p]
結局予習が終わりきったのは日付が変わってからだった。[p]
#北斗
「…やべ、とっとと寝よ。」[p][stopse buf=1]
#
こうして、今日も一人、静かな夜が過ぎていく。[p]

[mask time=500]
[bg2 storage="byousitu.jpg" time="500"]
[mask_off time=500]

#？？
「午後20時31分、ご臨終です。」[p]
#北斗の母
「う、うう、あなた…」[p]
#北斗
「…ご臨終？ご臨終ってなに？おじさん。」[p][stopse buf=1]
#？？
「…ごめん、北斗君。私は、お父さんの病気を治せなかった。[r]　本当にごめんよ。」[p]
#北斗
「…治せなかった？お父さんはどうなったの？」[p][stopse buf=1]
#？？
「きみのお父さんは、天国に行ってしまったんだ。」[p]
#北斗
「そんな…うそだ！だって、おじさんがお父さんを助けてくれるって。[r]　美波が言ってたもん！」[p][stopse buf=1]
#？？
「ごめんな、本当にごめん…」[p]
#北斗
「嘘つき…美波もおじさんもうそつき！」[p][stopse buf=1]
#
少年が、泣きべそをかいている。[p]

[mask time=500]
[bg2 storage="heya.jpg" time="500"]
[mask_off time=500]
[playse  storage="se/alarm.ogg"]
#北斗
「……」[p][stopse buf=1]
;ここまで背景黒、目を開ける感じで背景部屋に
#
携帯のアラームが鳴っている。液晶には6：45の文字。[p]
#北斗
「……起きなきゃか」[p][stopse buf=1]
#
この日常世界では、過去を思い出して泣くような時間は与えられない。[p]

[mask graphic="cut/cutin_takamura.png" time=500]
[vostop]
[wait time=500]
[voconfig sebuf=1 name="hokuto" vostorage="hokuto/hokuto_{number}.ogg" number=137 ]
[voconfig sebuf=2 name="minami" vostorage="minami/minami_{number}.ogg" number=100 ]
[voconfig sebuf=3 name="seizi" vostorage="seizi/takamura_{number}.ogg" number=64 ]
[vostart]
[kaname_kanasimi left=-80 time=0][nao_kanasimi left=460 time=0][reito_magao left=850 time=0][hw_hutyou time=0]
[bg2 storage="ongaku.jpg" height=1554 top="-200" time="4000"]
[mask_off time=500]

@jump storage="scene2.ks" target=*chapter2
