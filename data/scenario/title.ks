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


if(typeof tyrano.plugin.kag.variable.sf.current_se_vol!="undefined"){tf.current_se_vol=sf.current_se_vol}else{tf.current_se_vol=50}
if(typeof tyrano.plugin.kag.variable.sf.current_vo_vol!="undefined"){tf.current_vo_vol=sf.current_vo_vol}else{tf.current_vo_vol=50}
if(typeof tyrano.plugin.kag.variable.sf.vo1_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo1_vol=sf.vo1_vol}else{tyrano.plugin.kag.variable.tf.vo1_vol=100}
if(typeof tyrano.plugin.kag.variable.sf.vo2_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo2_vol=sf.vo2_vol}else{tyrano.plugin.kag.variable.tf.vo2_vol=100}
if(typeof tyrano.plugin.kag.variable.sf.vo3_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo3_vol=sf.vo3_vol}else{tyrano.plugin.kag.variable.tf.vo3_vol=100}
if(typeof tyrano.plugin.kag.variable.sf.vo4_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo4_vol=sf.vo4_vol}else{tyrano.plugin.kag.variable.tf.vo4_vol=100}
if(typeof tyrano.plugin.kag.variable.sf.vo5_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo5_vol=sf.vo5_vol}else{tyrano.plugin.kag.variable.tf.vo5_vol=100}
if(typeof tyrano.plugin.kag.variable.sf.vo6_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo6_vol=sf.vo6_vol}else{tyrano.plugin.kag.variable.tf.vo6_vol=100}

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



<div id="title_start" class="title_item" style="top:420px;">
	<img src="data/image/title_start.png" alt="" class="non">
</div>
<div id="title_load" class="title_item" style="top:540px;">
	<img src="data/image/title_load.png" alt="" class="non">
</div>
<div id="title_config" class="title_item" style="top:660px;">
	<img src="data/image/title_settings.png" alt="" class="non">
</div>
<div id="title_gallery" class="title_item menu_gallery" style="top:780px;">
	<img src="data/image/title_gallery.png" alt="" class="non">
</div>
<div id="title_quit" class="title_item" style="top:900px;">
	<img src="data/image/title_quit.png" alt="" class="non">
</div>

;<div id="fullscreen" style="position:absolute;top:350px;">FullScreen</div>

<img src="data/image/title_title.png" style="left:120px;top:600px;position:absolute;">

<img src="data/fgimage/title_d10rama.png" style="width:300px;left:1550px;top:70px;position:absolute;" class="jumpHP">
</div>

<img class="img_title" src="data/bgimage/title.jpg" style="z-index:-1;left:0px;top:-2000px;width:1920px;position:absolute;">

<script>
$('#fullscreen').on('click',function(e){tyrano.plugin.kag.menu.screenFull()});

$('#title_start').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{target:"gamestart"})});
$('#title_load').click(function(){tyrano.plugin.kag.ftag.startTag("showload")});
$('#title_config').click(function(){tyrano.plugin.kag.ftag.startTag("showconfig")});
$('#title_gallery').click(function(){tyrano.plugin.kag.ftag.startTag("showgallery")});
$('#title_quit').click(function(){tyrano.plugin.kag.ftag.startTag("close")});

</script>
[endhtml]


[s]


*gamestart
[html]
<img src="data/bgimage/black.png" style="width:1920px;height:1080px;" class="fadein">
[endhtml]
[wait time=500]

@jump storage="prologue.ks"

[s]
