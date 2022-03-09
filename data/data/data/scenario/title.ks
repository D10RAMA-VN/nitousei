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


[playbgm storage="main_loop.ogg"]
*title
@clearfix
[cm]

@clearstack


[html]
<div id="tl">

<img class="img_title" src="data/bgimage/title.jpg" style="z-index:-1;left:0px;top:-300px;width:1920px;height:2880px;position:absolute;">


<img src="data/fgimage/title_vi.png" style="position:absolute;">

<div id="title_start" class="title_item" style="left:120px;top:340px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_start.png" alt="" class="non">
</div>
<div id="title_load" class="title_item" style="left:120px;top:400px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_load.png" alt="" class="non">
</div>
<div id="title_config" class="title_item" style="left:120px;top:460px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_config.png" alt="" class="non">
</div>
<div id="title_gallery" class="title_item" style="left:120px;top:520px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_gallery.png" alt="" class="non">
</div>
<div id="title_quit" class="title_item" style="left:120px;top:580px;position:absolute;cursor:pointer;">
	<img src="data/fgimage/title_quit.png" alt="" class="non">
</div>

<img src="data/fgimage/title_d10rama.png" style="left:1600px;top:70px;position:absolute;" class="jumpHP">
</div>

<style>
.img_title{
  transition: transform 0.2s, top, 0.4s, left 0.4s;
  transition-timing-function: ease-out;
}
</style>

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


