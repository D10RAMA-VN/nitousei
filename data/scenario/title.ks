;[clearvar]
*start
[fadeoutbgm time=10][fadeoutse time=10][skipstop]
[stop_keyconfig]
[if exp="sf.S1==undefined"][eval exp="sf.S1=0"][endif]
[if exp="sf._system_config_bgm_volume==undefined"][eval exp="sf._system_config_bgm_volume=20"][endif]

[if exp="sf.ST1==undefined"][eval exp="sf.ST1=0"][endif]


[iscript]
if($.isElectron() || $.isNWJS()){
    //PC
    sf.pc=true;
}
else{
    //ブラウザ
    sf.pc=false;
}

if(typeof sf.current_se_vol!="undefined"){tf.current_se_vol=sf.current_se_vol}else{tf.current_se_vol=50}
if(typeof sf.vo1_vol!="undefined"){tf.vo1_vol=sf.vo1_vol}else{tf.vo1_vol=100}
[endscript]

[eval exp="sf.current_bgm_vol=20"]


;[playbgm storage="main_loop.ogg"]
*title
@clearfix
[cm]

@clearstack


[html]
<div id="tl">

<img class="img_title" src="data/bgimage/title.jpg" style="z-index:-1;left:0px;top:0px;width:1920px;position:absolute;">



<div id="title_start" class="title_item" style="left:1450px;top:420px;position:absolute;cursor:pointer;">
	<img src="data/image/title_start.png" alt="" class="non">
</div>
<div id="title_load" class="title_item" style="left:1450px;top:540px;position:absolute;cursor:pointer;">
	<img src="data/image/title_load.png" alt="" class="non">
</div>
<div id="title_config" class="title_item" style="left:1450px;top:660px;position:absolute;cursor:pointer;">
	<img src="data/image/title_settings.png" alt="" class="non">
</div>
<div id="title_gallery" class="title_item" style="left:1450px;top:780px;position:absolute;cursor:pointer;">
	<img src="data/image/title_gallery.png" alt="" class="non">
</div>
<div id="title_quit" class="title_item" style="left:1450px;top:900px;position:absolute;cursor:pointer;">
	<img src="data/image/title_quit.png" alt="" class="non">
</div>

<img src="data/image/title_title.png" style="left:120px;top:600px;position:absolute;">

<img src="data/fgimage/title_d10rama.png" style="width:300px;left:1550px;top:70px;position:absolute;" class="jumpHP">
</div>

<img class="img_title" src="data/bgimage/title.jpg" style="z-index:-1;left:0px;top:-2000px;width:1920px;position:absolute;">

<script>
$('#title_start').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{target:"gamestart"})});
$('#title_load').click(function(){tyrano.plugin.kag.ftag.startTag("showload")});
$('#title_config').click(function(){tyrano.plugin.kag.ftag.startTag("showconfig")});
$('#title_gallery').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{storage:"cg.ks",target:"start"})});
$('#title_quit').click(function(){tyrano.plugin.kag.ftag.startTag("close")});

</script>
[endhtml]


[s]


*gamestart

[wait time=500]

@jump storage="scene1.ks"

[s]


