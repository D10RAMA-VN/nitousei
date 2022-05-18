;=========================================
; コンフィグ モード　画面作成
;=========================================

;	メッセージレイヤ0を不可視に
	[layopt layer="message0" visible="false"]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの無効化
	[stop_keyconfig]

;	レイヤーモードの解放
	[free_layermode time="100" wait="true"]

;	カメラのリセット
	[reset_camera time="100" wait="true"]
	
;	前景レイヤの中身をすべて空に
	[iscript]
	$(".layer_camera").empty();
	[endscript]

;	メニューボタン非表示
	[hidemenubutton]

	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に

	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume); // BGM音量
	tf.current_se_vol = parseInt(TG.config.defaultSeVolume); // SE音量
	
	tf.current_ch_speed = parseInt(TG.config.chSpeed); // テキスト表示速度
	tf.current_auto_speed = parseInt(TG.config.autoSpeed); // オート時のテキスト表示速度
	
	tf.text_skip ="ON"; // 未読スキップ
	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	tf.user_setting = TG.config.alreadyReadTextColor;
	if(tf.user_setting != 'default'){
		TG.config.alreadyReadTextColor = 'default'; // 一時的に既読テキストの文字色を変更しないようにしています
	}

	[endscript]

[cm]


[html]
	<div style='clear:both'></div>
	<img class="img_bg_base" src="tyrano/images/system/bg.png" style="z-index:-1;left:0;top:0;width:100%;height:100%;position:absolute;">

<div class='tabs'>
  <div class='tab-buttons'>
    <span class='content1' id="tab_button1" style="margin-left:100px;padding-top:17px;border-top:solid;border-left:solid #606589;border-right:solid #606589;transition: .3s;">一般設定</span>
    <span class='content2' id="tab_button2" style="padding-top:17px;margin-left:-9px;;color:#606589;">ボイス設定</span> 
  </div>
  
  <div class='tab-content'>
   <div class='content1'>
	<div class="config_body">
			<div class="range">
				<p><span style="display:inline-block;margin-top:60px;margin-left:-200px;width:300px;text-align:right;">BGM音量</span></p>
				<input type="range" id="bgm_volume" min="0" max="100" step="1" value="50" style="left:145px;top:81px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">SE音量</span>
				<input type="range" id="se_volume" min="0" max="100" value="20" step="1" style="left:145px;top:163px;position:absolute;">
			</div>
			<div class="range"> 
				<p><span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">ボイス音量</span></p>
				<input type="range" id="vo_volume" min="0" max="100" step="1" value="50" style="left:145px;top:246px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:65px;margin-left:-200px;width:300px;text-align:right;">テキスト速度</span>
				<input type="range" id="text_speed" min="-100" max="0" value="-30" step="1" style="left:145px;top:363px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">オートモード速度</span>
				<input type="range" id="auto_speed" min="-5000" max="-500" value="-1300" step="100" style="left:145px;top:446px;position:absolute;">
			</div>
			<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">未読スキップ</span>
            <div class="unread_area" id="unread_check" style="left:60px;top:501px;position:absolute;font-family:ubuntu-italic;">
                <input type="radio" name="unread_skip" id="unreadon">
                <label for="unreadon">ON</label>
                <input type="radio" name="unread_skip" id="unreadoff">
                <label for="unreadoff">OFF</label>
            </div>
            <div class=min_max style="left:133px;top:67px;">min</div><div class=min_max style="left:810px;top:68px;">MAX</div>
            <div class=min_max style="left:133px;top:146px;">min</div><div class=min_max style="left:810px;top:147px;">MAX</div>
            <div class=min_max style="left:133px;top:228px;">min</div><div class=min_max style="left:810px;top:229px;">MAX</div>
            <div class=min_max style="left:133px;top:345px;">min</div><div class=min_max style="left:810px;top:346px;">MAX</div>
            <div class=min_max style="left:133px;top:429px;">min</div><div class=min_max style="left:810px;top:430px;">MAX</div>
	</div>
   </div>
   <div class='content2'>
	<div class="config_body">
			<img style="position:absolute;top:40px;left:-220px;" src="tyrano/images/system/icon_hokuto.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:50px;left:-10px;"><span style="font-weight:lighter;">加賀屋 </span>北斗</p>
				<input type="range" id="vo1_volume" min="0" max="100" step="1" value="50" style="top:140px;position:absolute;width:300px;left:-25px;">
			</div>
			<img style="position:absolute;top:240px;left:-220px;" src="tyrano/images/system/icon_minami.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:250px;left:-10px;"><span style="font-weight:lighter;">来瀬 </span>美波</span></p>
				<input type="range" id="vo2_volume" min="0" max="100" step="1" value="50" style="top:340px;position:absolute;width:300px;left:-25px;">
			</div>
			<img style="position:absolute;top:440px;left:-220px;" src="tyrano/images/system/icon_takamura.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:450px;left:-10px;"><span style="font-weight:lighter;">高村 </span>清二</span></p>
				<input type="range" id="vo3_volume" min="0" max="100" step="1" value="50" style="top:540px;position:absolute;width:300px;left:-25px;">
			</div>
			
			<img style="position:absolute;top:40px;left:440px;" src="tyrano/images/system/icon_nao.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:50px;left:650px;"><span style="font-weight:lighter;">保科 </span>七音</span></p>
				<input type="range" id="vo4_volume" min="0" max="100" step="1" value="50" style="top:140px;position:absolute;width:300px;left:635px;">
			</div>
			<img style="position:absolute;top:240px;left:440px;" src="tyrano/images/system/icon_reito.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:250px;left:650px;"><span style="font-weight:lighter;">草間 </span>令人</span></p>
				<input type="range" id="vo5_volume" min="0" max="100" step="1" value="50" style="top:340px;position:absolute;width:300px;left:635px;">
			</div>
			<img style="position:absolute;top:440px;left:440px;" src="tyrano/images/system/icon_kaname.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:450px;left:650px;"><span style="font-weight:lighter;">天宮 </span>奏女</span></p>
				<input type="range" id="vo6_volume" min="0" max="100" step="1" value="50" style="top:540px;position:absolute;width:300px;left:635px;">
			</div>
	</div>
   </div>
  </div>
</div>
	
	
	<div class="border1" style="position:absolute;top:299px;left:687px;width:960px;height:620px;border-top:solid #606589;border-right:solid #606589;z-index:-1;"></div>
	<div class="border2" style="position:absolute;top:299px;left:300px;width:385.8px;height:622px;border-left:solid #606589;z-index:-1;"></div>
	<div class="border3" style="position:absolute;top:299px;left:300px;width:195.5px;height:622px;border-top:solid #606589;display:none;z-index:-1;"></div>
	<div class="border4" style="position:absolute;top:299px;left:494px;width:193px;height:622px;border-top:solid #606589;z-index:-1;"></div>
	<div style="position:absolute;top:0px;width:50px;height:100%;background:linear-gradient(#0C008A, #007882);"></div>
	<img src="tyrano/images/system/title_setting.png" style="left:130px;top:80px;position:absolute;">
	<img src="tyrano/images/system/logo_h.png" style="width:600px;left:1200px;top:50px;position:absolute;">
	<div class="menu_close save_close" style="left:240px;top:950px;position:absolute;cursor:pointer;">
	  <img src="tyrano/images/system/back_button.png" alt="" class="non">
	</div>
	<div class="config_button menu_back_title" style="left:880px;top:970px;position:absolute;">
	   <img src="tyrano/images/system/set_title_gray.png">
	   <img src="tyrano/images/system/set_title_w.png" class="config_button_hover">
	</div>
	<div class="config_button config_gallery menu_gallery" style="left:1270px;top:970px;position:absolute;">
	   <img src="tyrano/images/system/set_gallery_gray.png">
	   <img src="tyrano/images/system/set_gallery_w.png" class="config_button_hover">
	</div>
	<div class="config_button config_quit" style="left:1630px;top:970px;position:absolute;">
	   <img src="tyrano/images/system/set_quit_gray.png">
	   <img src="tyrano/images/system/set_quit_w.png" class="config_button_hover">
	</div>
[endhtml]

[iscript]
$(function () {
			//BGM
			var current_bgm_vol=parseInt(tyrano.plugin.kag.config.defaultBgmVolume); //システム値取得
			$('#bgm_volume').val(current_bgm_vol); //スライダー初期位置
			$('#spanbgm').html(current_bgm_vol); 
			$('#bgm_volume').on('input change', function() {
				current_bgm_vol=Number($(this).val());
				tyrano.plugin.kag.ftag.startTag("bgmopt",{volume: current_bgm_vol});
			});
			//テキスト
			var current_ch_speed=parseInt(tyrano.plugin.kag.config.chSpeed); //システム値取得
			var span_ch_speed=-current_ch_speed+100 //表示用変数
			$('#text_speed').val(-current_ch_speed); //スライダー初期位置
			$('#spantext').html(span_ch_speed); //初期表示
			$('#text_speed').on('input change', function() {
				span_ch_speed=100+parseInt($(this).val());
				$('#spantext').html(span_ch_speed);
				current_ch_speed=-$(this).val();
				tyrano.plugin.kag.ftag.startTag("configdelay",{speed: -$(this).val()});
			});
			//オート
			var current_auto_speed=parseInt(tyrano.plugin.kag.config.autoSpeed); //システム値取得
			var span_auto_speed=(-current_auto_speed+5500)/50 //表示用変数
			$('#auto_speed').val(-current_auto_speed); //スライダー初期位置
			$('#spanauto').html(span_auto_speed); //初期表示
			$('#auto_speed').on('input change', function() {
				span_auto_speed=(5500+parseInt($(this).val()))/50;
				$('#spanauto').html(span_auto_speed);
				current_auto_speed=-$(this).val();
				tyrano.plugin.kag.ftag.startTag("autoconfig",{speed: -$(this).val()});
			});
			//SE
			if(typeof tyrano.plugin.kag.variable.sf.current_se_vol!="undefined"){tyrano.plugin.kag.variable.tf.current_se_vol=tyrano.plugin.kag.variable.sf.current_se_vol}else{tyrano.plugin.kag.variable.tf.current_se_vol=50}
			$('#se_volume').val(tyrano.plugin.kag.variable.tf.current_se_vol); //スライダー初期位置
			$('#se_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.current_se_vol=$(this).val();
				tyrano.plugin.kag.variable.sf.current_se_vol=tyrano.plugin.kag.variable.tf.current_se_vol;
				current_se_vol= Number($(this).val());
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:current_se_vol,buf:0});
			});
			//ボイスマスター
			if(typeof tyrano.plugin.kag.variable.sf.current_vo_vol!="undefined"){tyrano.plugin.kag.variable.tf.current_vo_vol=tyrano.plugin.kag.variable.sf.current_vo_vol}else{tyrano.plugin.kag.variable.tf.current_vo_vol=50}
			$('#vo_volume').val(tyrano.plugin.kag.variable.tf.current_vo_vol); //スライダー初期位置
			$('#vo_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.current_vo_vol=$(this).val();
				tyrano.plugin.kag.variable.sf.current_vo_vol=tyrano.plugin.kag.variable.tf.current_vo_vol;
				current_vo_vol=Number($(this).val());
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:current_vo_vol,buf:7});
				tyrano.plugin.kag.variable.tf.vo1_vol=Math.ceil(Number($('#vo1_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo1_vol=tyrano.plugin.kag.variable.tf.vo1_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo1_vol,buf:1});
				tyrano.plugin.kag.variable.tf.vo2_vol=Math.ceil(Number($('#vo2_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo2_vol=tyrano.plugin.kag.variable.tf.vo2_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo2_vol,buf:2});
				tyrano.plugin.kag.variable.tf.vo3_vol=Math.ceil(Number($('#vo3_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo3_vol=tyrano.plugin.kag.variable.tf.vo3_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo3_vol,buf:3});
				tyrano.plugin.kag.variable.tf.vo4_vol=Math.ceil(Number($('#vo4_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo4_vol=tyrano.plugin.kag.variable.tf.vo4_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo4_vol,buf:4});
				tyrano.plugin.kag.variable.tf.vo5_vol=Math.ceil(Number($('#vo5_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo5_vol=tyrano.plugin.kag.variable.tf.vo5_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo5_vol,buf:5});
				tyrano.plugin.kag.variable.tf.vo6_vol=Math.ceil(Number($('#vo6_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo6_vol=tyrano.plugin.kag.variable.tf.vo6_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo6_vol,buf:6});
			});
			//ボイス北斗
			if(typeof tyrano.plugin.kag.variable.sf.vo1_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo1_vol=tyrano.plugin.kag.variable.sf.vo1_vol}else{tyrano.plugin.kag.variable.tf.vo1_vol=100}
			$('#vo1_volume').val(tyrano.plugin.kag.variable.tf.vo1_vol); //スライダー初期位置
			$('#vo1_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo1_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo1_vol=tyrano.plugin.kag.variable.tf.vo1_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo1_vol,buf:1});
			});
			//ボイス美波
			if(typeof tyrano.plugin.kag.variable.sf.vo2_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo2_vol=tyrano.plugin.kag.variable.sf.vo2_vol}else{tyrano.plugin.kag.variable.tf.vo2_vol=100}
			$('#vo2_volume').val(tyrano.plugin.kag.variable.tf.vo2_vol); //スライダー初期位置
			$('#vo2_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo2_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo2_vol=tyrano.plugin.kag.variable.tf.vo2_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo2_vol,buf:2});
			});
			//ボイス清二
			if(typeof tyrano.plugin.kag.variable.sf.vo3_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo3_vol=tyrano.plugin.kag.variable.sf.vo3_vol}else{tyrano.plugin.kag.variable.tf.vo3_vol=100}
			$('#vo3_volume').val(tyrano.plugin.kag.variable.tf.vo3_vol); //スライダー初期位置
			$('#vo3_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo3_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo3_vol=tyrano.plugin.kag.variable.tf.vo3_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo3_vol,buf:3});
			});
			//ボイス七音
			if(typeof tyrano.plugin.kag.variable.sf.vo4_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo4_vol=tyrano.plugin.kag.variable.sf.vo4_vol}else{tyrano.plugin.kag.variable.tf.vo4_vol=100}
			$('#vo4_volume').val(tyrano.plugin.kag.variable.tf.vo4_vol); //スライダー初期位置
			$('#vo4_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo4_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo4_vol=tyrano.plugin.kag.variable.tf.vo4_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo4_vol,buf:4});
			});
			//ボイス奏女
			if(typeof tyrano.plugin.kag.variable.sf.vo5_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo5_vol=tyrano.plugin.kag.variable.sf.vo5_vol}else{tyrano.plugin.kag.variable.tf.vo5_vol=100}
			$('#vo5_volume').val(tyrano.plugin.kag.variable.tf.vo5_vol); //スライダー初期位置
			$('#vo5_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo5_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo5_vol=tyrano.plugin.kag.variable.tf.vo5_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo5_vol,buf:5});
			});
			//ボイス怜人
			if(typeof tyrano.plugin.kag.variable.sf.vo6_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo6_vol=tyrano.plugin.kag.variable.sf.vo6_vol}else{tyrano.plugin.kag.variable.tf.vo6_vol=100}
			$('#vo6_volume').val(tyrano.plugin.kag.variable.tf.vo6_vol); //スライダー初期位置
			$('#vo6_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo6_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo6_vol=tyrano.plugin.kag.variable.tf.vo6_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo6_vol,buf:6});
			});
});

$('.content1').on('click',function(){
	$('.border3').hide();
	$('.border4').show();
	$('#tab_button1').css({"border-top":"solid","border-left":"solid #606589","border-right":"solid #606589","color":"white"});
	$('#tab_button2').css({'border':'solid 0px','color':'#606589'});
});
$('.content2').on('click',function(){
	$('.border4').hide();
	$('.border3').show();
	$('#tab_button2').css({"border-top":"solid","border-left":"solid #606589","border-right":"solid #606589","color":"white"});
	$('#tab_button1').css({'border':'solid 0px','color':'#606589'});
});

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
  
$('.config_quit').click(function(){tyrano.plugin.kag.ftag.startTag("close")});
</script>

	
	<script>
	   $(function(){
            var text_skip ="ON";
			if(tyrano.plugin.kag.config.unReadTextSkip != "true"){
				text_skip ="OFF";
			};
			if(text_skip=="ON"){
				$('#unreadon').prop('checked', true);$('#unreadoff').prop('checked', false);
			}else{
				$('#unreadon').prop('checked', false);$('#unreadoff').prop('checked', true);
			};
			$('#unreadon').change(function(){
				if( $(this).prop('checked') ){
					text_skip ="ON";
					tyrano.plugin.kag.ftag.startTag("config_record_label",{skip: "true"});
				}else{
					text_skip ="OFF";
					tyrano.plugin.kag.ftag.startTag("config_record_label",{skip: "false"});
				}
			});
			$('#unreadoff').change(function(){
				if( $(this).prop('checked') ){
					text_skip ="OFF";
					tyrano.plugin.kag.ftag.startTag("config_record_label",{skip: "false"});
				}else{
					text_skip ="ON";
					tyrano.plugin.kag.ftag.startTag("config_record_label",{skip: "true"});
				}
			});
	   });
[endscript]
[s]
;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*back
[cm]

	[iscript]
	TG.config.alreadyReadTextColor = tf.user_setting; // 既読テキストの文字色を復帰
	[endscript]

;	テキスト速度のサンプル表示に使用していたメッセージレイヤを非表示に
	[layopt layer="message1" visible="false"]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの有効化
	[start_keyconfig]

;	コールスタックのクリア
	[clearstack]

;	ゲーム復帰
	[awakegame]

