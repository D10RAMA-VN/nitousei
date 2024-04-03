var lang;
var chapterTitle;
var summary;
var chapterButton;
var musicTitle;
if (TYRANO.kag.variable.sf.trans == 2) {
  lang = 'es';
  chapterTitle = [
    'Prologo', 'Capítulo 1', 'Capítulo 2', 'Capítulo 3', 'Capítulo 4', 'Capítulo 5', 'Capítulo 6', 'Capítulo 7', 'Capítulo 8', 'Capítulo 9', 'Epílogo'
  ];
  summary = [
    "Hokuto no ha encontrado algo a lo que dedicarse. Junto con su amiga de la infancia Minami, se une al club de música ligera en la escuela preparatoria. Un día, de camino a casa, ven a un viejo, llamado Takamura, que mira las estrellas junto a la orilla del río. El está buscando una estrella invisible. Sin comprender la situación, Hokuto y Minami se unen a él…",
    'Hokuto y Minami se unen oficialmente al club. Al principio, modificaron las reglas del club, que solían ser un poco confusas, y luego empezaron a preparar una lista de canciones para su próximo concierto. Nao propuso una vieja canción llamada "Convirtiéndose en una segunda estrella" para la lista de canciones. Por alguna razón, Hokuto sintió una extraña conexión con la canción.',
    "Hokuto no parece mejorar con la guitarra. Intenta llevar su guitarra a la observación de las estrellas con Takamura para practicar, cuando Takamura lo ve tocando le dice, 「……¿Me prestas la guitarra un momento?」",
    "Hokuto se siente abrumado por su vida cotidiana. Al final llega a su límite y se desmaya. Cuando Minami llega a la enfermería para ver cómo está, Hokuto empieza a desahogarse con ella. ¿Por qué se esfuerza tanto a pesar de no dedicarse a nada? ¿Por qué sale a mirar las estrellas con Takamura? Los pensamientos de Hokuto son más insoportables para Minami que para el propio Hokuto.",
    "Hokuto visita a Takamura. ¿Por qué hizo llorar a Minami? Cuando Takamura le pregunta al respecto, Hokuto comienza a contarle sobre su historia con Minami, la cual está relacionada con el padre de Hokuto que falleció. Al ver que Hokuto está preocupado, Takamura le pide que miren juntos las estrellas, diciéndole, basado en su experiencia con su mujer, 「¿Qué quieres hacer tú y qué quieres que haga ella?」",
    "Hokuto y Minami siguen sintiéndose incómodos mientras pasa otra semana. En medio de todo esto, Minami le da a Hokuto una caja de almuerzo, que dice que fue hecha por su mamá. Esa tarde, mientras almuerza con Reito, Hokuto empieza a entender. Se da cuenta de cómo tocar mejor la guitarra y de lo que quiere hacer por Minami.",
    "Hokuto y Minami visitan de nuevo a Takamura. Hokuto le pregunta a Takamura. ¿Cuál es exactamente la estrella que está buscando? La respuesta está en la canción que una vez tocó para ellos, 'Convirtiéndose en una segunda estrella'.  Takamura responde: 'Es una estrella que vi hace tiempo'. Hokuto se ofrece a ayudar a Takamura a buscar su estrella.",
    "Con el comienzo de la temporada de lluvia, Se preparan para sus exámenes. Minami le hace el almuerzo todos los días, y Hokuto desea agradecérselo, así que la invita a un parfait en una cafetería cercana. Hokuto le da las gracias mientras hablan de los viejos tiempos. Sin embargo, Hokuto sigue incrédulo por su amabilidad. Minami le responde expresándole sus sentimientos, los más grandes de este universo…",
    "Hokuto recibe la confesión de amor de Minami. Mientras se pregunta cómo debe responder a sus sentimientos, le llega una carta por correo. Takamura está internado en el hospital donde trabaja el padre de Minami. Hokuto se muestra angustiado y enfadado con Takamura, que pierde fuerzas día a día, sin poder hacer nada al respecto. En ese momento, Takamura le pide un favor a Hokuto.",
    "Hokuto y Minami deciden observar las estrellas en la azotea del hospital con Takamura. Mientras las estrellas fugaces de la lluvia de meteoritos de las Perseidas resplandecían, Takamura le pide a Hokuto que vuelva a tocar 'Convirtiendose en una segunda estrella'… Cuando termina la actuación, un par de estrellas tenues resplandecen en el cielo…",
    "Unos días después, Hokuto y Minami hablan de su futuro mientras tocan una partitura que Takamura dejó para ellos. Y finalmente, Hokuto expresa sus verdaderos sentimientos por Minami…"
  ];
  chapterButton = 'Ir al Capítulo';
  musicTitle = [
    "1. Tema de Hokuto", "2. Tema de Hokuto　2da ver.", "3. Tema de Minami", "4. Tema de Takamura", "5. Reunión del Club de Música Ligera!", "6. Estrella guía", "7. Convirtiéndose en una segunda estrella - Guitarra", "8. La estrella invisible", "9. Convirtiéndose en una segunda estrella"
  ];
} else if (TYRANO.kag.variable.sf.trans == 1){
  lang = 'en';
  chapterTitle = [
    'Prologue', 'Chapter 1', 'Chapter 2', 'Chapter 3', 'Chapter 4', 'Chapter 5', 'Chapter 6', 'Chapter 7', 'Chapter 8', 'Chapter 9', 'Epilogue'
  ];
  summary = [
    "Hokuto hasn't found something to devote himself to. Together with his childhood friend Minami, they join the light music club after entering high school. One day on their way home, they see an old man named Takamura, who is stargazing by the riverside. Takamura is searching for an invisible star. Without understanding the situation, Hokuto and Minami join him…",
    "Hokuto and Minami officially joined the club. At first, they revised the club rules, which used to be a bit of a mess, and then started to make a set list for their next live performance. Nao brought up an old song called \"Becoming a Second Star\" as a candidate for the set list. For some reason, Hokuto felt a strange connection with the song.",
    "Hokuto doesn't seem to be improving on the guitar. He tries to bring his guitar to the stargazing with Takamura to practice. When Takamura sees him playing, he says, \"………Can I borrow that guitar for a minute?\"",
    "Hokuto gets overwhelmed with his daily life. He eventually reaches his limit and collapses. When Minami comes to the infirmary to check on him, Hokuto begins to vent his feelings to her. Why is he trying so hard despite not being devoted to anything? Why is he going stargazing with Takamura? Hokuto's thoughts are more unbearable for Minami than for Hokuto himself.",
    "Hokuto visits Takamura by himself. Why did he make Minami cry? When Takamura asks him about it, Hokuto begins to tell him about his relationship with Minami, as it's related to Hokuto's father who passed away. As Hokuto is troubled, Takamura asks him to look at the stars together, asking him, based on his experience with his wife, \"What do you want to do and what do you want her to do?\"",
    "Hokuto and Minami continue to feel awkward as another week goes by. In the midst of all this, Minami gives Hokuto a lunch box that she says was made by her mother. That afternoon, while having lunch with Reito, Hokuto begins to understand. He realizes how to play the guitar better and what he wants to do for Minami.",
    "Hokuto and Minami visit Takamura again. Hokuto asks Takamura what exactly is the star that he is looking for. The answer lies in the song he once played for them, \"Becoming a Second Star.\" Takamura responds, \"It is a star that I saw once.\" Hokuto offers to help Takamura look for his star.",
    "As the rainy season begins, Hokuto and Minami prepare for their mid-term exams. Minami makes him lunch every day, and Hokuto wants to thank her in some way, so he decides to treat her to a parfait at a nearby coffee shop. Hokuto thanks her while talking about the old days. However, Hokuto is still skeptical about Minami's kindness. Minami replies to him by expressing her feelings, the biggest in this universe…",
    "Hokuto recieves Minami's confession of love. As he is wondering how he should respond to her feelings, a letter arrives in the mail. Takamura is hospitalized at the hospital where Minami's father works. Hokuto is distressed and angry at Takamura, who is losing his strength day by day, but he is unable to do anything about it. Then Takamura asks for a favor from Hokuto.",
    "Hokuto and Minami decide to do stargazing on the roof of the hospital with Takamura. As the shooting stars of the Perseid meteor shower are sparkling, Takamura asks Hokuto to play \"Becoming the Second Star\" once again… When the performance ends, a pair of second stars are just shining in the sky…",
    "A few days later, Hokuto and Minami talk about their future while they play a piece of music that Takamura left for them in the clubroom. And finally, Hokuto conveys his true feelings for Minami…"
  ];
  chapterButton = 'Go to Chapter';
  musicTitle = [
    "1. Hokuto's Theme", "2. Hokuto's Theme　2nd ver.", "3. Minami's Theme", "4. Takamura's Theme", "5. Light Music Club Meeting!", "6. Guiding Star", "7. Becoming a second star　Guitar Solo", "8. The unseen second star", "9. Becoming a second star" 
  ];
} else {
  lang = 'ja';
  chapterTitle = [
    'Prologue', 'Chapter 1', 'Chapter 2', 'Chapter 3', 'Chapter 4', 'Chapter 5', 'Chapter 6', 'Chapter 7', 'Chapter 8', 'Chapter 9', 'Epilogue'
  ];
  summary = [
    '今まで打ち込めるものがなかった北斗。高校に進学した北斗と幼馴染の美波は、軽音部に入部を決めた。そんなある日の帰り道、河川敷で天体観測をしている老人、高村を見かける。高村は、みえない星を探しているのだという。よくわからないままに、北斗と美波は天体観測に混ざることになり…。',
    '正式に入部した北斗と美波。まずはでたらめだった部則を改訂し、次のライブのセットリスト決めを始める。七音が候補に持ってきたのは、「二等星になって」という昭和歌謡だった。北斗はなぜかその曲に奇妙な懐かしさを感じるのだった。',
    '中々ギターが上達しない北斗。高村との天体観測にもギターを持ち込み練習しようとするが、その様子をみた高村は言う。「……そのギター、少し貸してくれないか。」',
    '日々の生活と焦燥感に押しつぶされる北斗。ついに体力の限界を迎え倒れてしまう。保健室に付き添いに来た美波に、北斗は少しずつ漏らし始める。なぜ物事に打ち込めないのにも関わらず頑張ろうとするのか、高村との天体観測に混ざろうとするのか。北斗が秘めていた内心は、本人以上に美波には堪えられないものだった。',
    '北斗は一人高村のもとに向かう。なぜ美波を泣かせてしまったのか。問い詰める高村に、北斗は美波との関係を語り始める。それには、亡くなった北斗の父親が関係していた。美波との関係に悩む北斗に、高村は妻との経験をもとに「どうしたい、どうしてほしいのか」と諭しながらともに星を眺めるよう促す。',
    '週が明けても気まずい北斗と美波。そんな中、母親が作ったといって美波は北斗に弁当を渡す。その昼、令人とともに昼食をとりながら、北斗はつかんでいく。どうすればうまくギターが弾けるのか、そして、自分が美波に対しどうしたいのかを。',
    '改めて高村の元を訪れた北斗と美波。北斗は高村に問う。高村が探している星とはいったい何なのか。それは、かつて高村が弾いてみせた「二等星になって」に答えがあるのだろうと。高村は答える。かつて、見えたという星のことを。そんな高村に北斗は、やはり星を探す手伝いをしたいと言うのだった…',
    '梅雨に入り、中間考査をこなす北斗と美波。毎日弁当を作ってきてくれる美波に対し、北斗は何かお礼がしたいと、喫茶店でパフェをおごることに。昔のことを語りながら、改めて感謝をする北斗。しかし、それにしてもあまりに尽くしてくれる美波に、一方で疑問も感じていた。そんな北斗に美波は答える。この宇宙で一番大きな想いを。',
    '美波の告白を受けた北斗。彼女にどう想いを返すべきか悩んでいたところに、一通の手紙が届く。それは、高村が美波の父が働く病院に入院しているという内容だった。日々体力を落としていく高村に、嘆き怒りながらもどうすることもできない北斗。そんな北斗に、高村は一つの頼みをする。',
    '高村と病院の屋上で天体観測をすることになった北斗と美波。ペルセウス座流星群の流れ星が光る中、高村は北斗に、もう一度「二等星になって」を弾くように求める…演奏が終わった時、二等星がただ、またたいていた。',
    '数日後、部室で北斗と美波は高村の残した楽曲を弾きながらこれからのことを語りあう。そして、北斗はついに美波に心からの気持ちを伝える…。'
  ];
  chapterButton = 'チャプターへ移動';
  musicTitle = [
    '1. 北斗のテーマ', '2. 北斗のテーマ　後期ver', '3. 美波のテーマ', '4. 高村のテーマ', '5. 軽音部集合！', '6. 標の星', '7. 二等星になって　ギターソロ', '8. みえない二等星', '9. 二等星になって'
  ];
}


$('.content1').on('click',function(){
	$('#gb4, #gb5, #gb6, #gb8, #gb9').hide();
	$('#gb3, #gb7').show();
	$('#tab_button3').css("color","white");
	$('#tab_button4, #tab_button5').css('color','#606589');
});
$('.content2').on('click',function(){
	$('#gb3, #gb6, #gb7, #gb9').hide();
	$('#gb4, #gb5, #gb8').show();
	$('#tab_button4').css("color","white");
	$('#tab_button5, #tab_button3').css('color','#606589');
});
if(tyrano.plugin.kag.variable.sf.chapEpi==1){
$('.content3').css("pointer-events","auto");
$('.content3').on('click',function(){
	$('#gb3, #gb4, #gb5, #gb7, #gb8').hide();
	$('#gb6, #gb9').show();
	$('#tab_button5').css("color","white");
	$('#tab_button3, #tab_button4').css('color','#606589');
});
}

$('.cg_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump", {target:"backtitle"})});

$('.tab-content>div').hide();
$('.tab-content>div').first().slideDown();
  $('.tab-buttons span').click(function(){
    var thisclass=$(this).attr('class');
    $('#lamp').removeClass().addClass(thisclass);
    $('.tab-content>div').each(function(){
      if($(this).hasClass(thisclass)){
        $(this).fadeIn(800);
      }
      else{
        $(this).hide();
      }
    });
  });

if(tyrano.plugin.kag.variable.sf.chapPro!=1){
	$('#chapter1').css('visibility','hidden');
	$('.bar1').css('visibility','hidden');
}else{
	$('#chapter1').css('visibility','visible');
	$('.bar1').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap1!=1){
	$('#chapter2').css('visibility','hidden');
	$('.bar2').css('visibility','hidden');
}else{
	$('#chapter2').css('visibility','visible');
	$('.bar2').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap2!=1){
	$('#chapter3').css('visibility','hidden');
	$('.bar3').css('visibility','hidden');
}else{
	$('#chapter3').css('visibility','visible');
	$('.bar3').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap3!=1){
	$('#chapter4').css('visibility','hidden');
	$('.bar4').css('visibility','hidden');
}else{
	$('#chapter4').css('visibility','visible');
	$('.bar4').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap4!=1){
	$('#chapter5').css('visibility','hidden');
	$('.bar5').css('visibility','hidden');
}else{
	$('#chapter5').css('visibility','visible');
	$('.bar5').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap5!=1){
	$('#chapter6').css('visibility','hidden');
	$('.bar6').css('visibility','hidden');
}else{
	$('#chapter6').css('visibility','visible');
	$('.bar6').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap6!=1){
	$('#chapter7').css('visibility','hidden');
	$('.bar7').css('visibility','hidden');
}else{
	$('#chapter7').css('visibility','visible');
	$('.bar7').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap7!=1){
	$('#chapter8').css('visibility','hidden');
	$('.bar8').css('visibility','hidden');
}else{
	$('#chapter8').css('visibility','visible');
	$('.bar8').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap8!=1){
	$('#chapter9').css('visibility','hidden');
	$('.bar9').css('visibility','hidden');
}else{
	$('#chapter9').css('visibility','visible');
	$('.bar9').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.chap9!=1){
	$('#epilog').css('visibility','hidden');
	$('.bar10').css('visibility','hidden');
}else{
	$('#epilog').css('visibility','visible');
	$('.bar10').css('visibility','visible');
}

$('#chaptertitle').text(chapterTitle[0]);
$('#summary').text(summary[0]);
$('#prologue').click(
  function(){
    $('#chaptertitle').text(chapterTitle[0]);
    $('#summary').text(summary[0]);
    $('#chapbg').attr('src','data/bgimage/still_kansoku.png');
    $('#chapterbutton').removeClass().addClass('prologue');
  });
$('#chapter1').click(
  function(){
    $('#chaptertitle').text(chapterTitle[1]);
    $('#summary').text(summary[1]);
    $('#chapbg').attr('src','data/bgimage/still_busoku.png');
    $('#chapterbutton').removeClass().addClass('chapter1');
  });
$('#chapter2').click(
  function(){
    $('#chaptertitle').text(chapterTitle[2]);
    $('#summary').text(summary[2]);
    $('#chapbg').attr('src','data/bgimage/still_seizi.png');
    $('#chapterbutton').removeClass().addClass('chapter2');
  });
$('#chapter3').click(
  function(){
    $('#chaptertitle').text(chapterTitle[3]);
    $('#summary').text(summary[3]);
    $('#chapbg').attr('src','data/bgimage/still_cry.png');
    $('#chapterbutton').removeClass().addClass('chapter3');
  });
$('#chapter4').click(
  function(){
    $('#chaptertitle').text(chapterTitle[4]);
    $('#summary').text(summary[4]);
    $('#chapbg').attr('src','data/bgimage/chap4.png');
    $('#chapterbutton').removeClass().addClass('chapter4');
  });
$('#chapter5').click(
  function(){
    $('#chaptertitle').text(chapterTitle[5]);
    $('#summary').text(summary[5]);
    $('#chapbg').attr('src','data/bgimage/chap5.png');
    $('#chapterbutton').removeClass().addClass('chapter5');
  });
$('#chapter6').click(
  function(){
    $('#chaptertitle').text(chapterTitle[6]);
    $('#summary').text(summary[6]);
    $('#chapbg').attr('src','data/bgimage/chap6.png');
    $('#chapterbutton').removeClass().addClass('chapter6');
  });
$('#chapter7').click(
  function(){
    $('#chaptertitle').text(chapterTitle[7]);
    $('#summary').text(summary[7]);
    $('#chapbg').attr('src','data/bgimage/still_kokuhaku.png');
    $('#chapterbutton').removeClass().addClass('chapter7');
  });
$('#chapter8').click(
  function(){
    $('#chaptertitle').text(chapterTitle[8]);
    $('#summary').text(summary[8]);
    $('#chapbg').attr('src','data/bgimage/chap8.png');
    $('#chapterbutton').removeClass().addClass('chapter8');
  });
$('#chapter9').click(
  function(){
    $('#chaptertitle').text(chapterTitle[9]);
    $('#summary').text(summary[9]);
    $('#chapbg').attr('src','data/bgimage/still_kirakirabosi.png');
    $('#chapterbutton').removeClass().addClass('chapter9');
  });
$('#epilog').click(
  function(){
    $('#chaptertitle').text(chapterTitle[10]);
    $('#summary').text(summary[10]);
    $('#chapbg').attr('src','data/bgimage/still_epilogue.png');
    $('#chapterbutton').removeClass().addClass('epilog');
  });

$('.content1').on('click','.prologue',function(){
  jumpChatpter("prologue.ks")
});
$('.content1').on('click','.chapter1',function(){
  jumpChatpter("scene1.ks")
});
$('.content1').on('click','.chapter2',function(){
  jumpChatpter("scene2.ks")
});
$('.content1').on('click','.chapter3',function(){
  jumpChatpter("scene3.ks")
});
$('.content1').on('click','.chapter4',function(){
  jumpChatpter("scene4.ks")
});
$('.content1').on('click','.chapter5',function(){
  jumpChatpter("scene5.ks")
});
$('.content1').on('click','.chapter6',function(){
  jumpChatpter("scene6.ks")
});
$('.content1').on('click','.chapter7',function(){
  jumpChatpter("scene7.ks")
});
$('.content1').on('click','.chapter8',function(){
  jumpChatpter("scene8.ks")
});
$('.content1').on('click','.chapter9',function(){
  jumpChatpter("scene9.ks")
});
$('.content1').on('click','.epilog',function(){
  jumpChatpter("epilog.ks")
});
$('.content1').show();

$('img').on('click', function(){
  $('img').removeClass('selected');
  $(this).addClass('selected');
});

$('#chapterbutton').text(chapterButton);
$('#lang').text(lang);

$('.content3 .m_title').each(function(index){
  $(this).text(musicTitle[index]);
});

function jumpChatpter(target){
  tyrano.plugin.kag.ftag.startTag("jump",{storage:lang + "/" + target}),
  $('.layer_menu').fadeOut(200, function () {
    $('.layer_menu').empty()
  })
}