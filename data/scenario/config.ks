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
	[free_layermode time="50" wait="false"]

;	カメラのリセット
	[reset_camera time="50" wait="false"]
	
;	前景レイヤの中身をすべて空に
	[iscript]
	$(".layer_camera").empty();
	[endscript]

;	メニューボタン非表示
	[hidemenubutton]
	[fadeoutse time=10]
	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に
	

	tf.user_setting = TG.config.alreadyReadTextColor;
	if(tf.user_setting != 'default'){
		TG.config.alreadyReadTextColor = 'default'; // 一時的に既読テキストの文字色を変更しないようにしています
	}

	[endscript]

[cm]


[html]
	<img class="img_bg_base" src="tyrano/images/system/bg.png" style="z-index:-1;left:0;top:0;width:1920px;height:1280px;position:absolute;">

<div class='tabs' style="width:960px;">
  <div class='tab-buttons'>
    <span class='content1' id="tab_button1" style="margin-left:100px;padding-top:17px;">一般設定</span>
    <span class='content2' id="tab_button2" style="padding-top:17px;margin-left:6px;color:#606589;">ボイス設定</span> 
  </div>
  
  <div class='tab-content'>
   <div class='content1'>
	<div class="config_body">
			<div class="range">
				<p><span style="display:inline-block;margin-top:40px;margin-left:-200px;width:300px;text-align:right;">BGM 音量</span></p>
				<input type="range" id="bgm_volume" min="0" max="100" step="1" value="50" style="left:145px;top:61px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">SE 音量</span>
				<input type="range" id="se_volume" min="0" max="100" value="20" step="1" style="left:145px;top:143px;position:absolute;">
			</div>
			<div class="range"> 
				<p><span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">ボイス音量</span></p>
				<input type="range" id="vo_volume" min="0" max="100" step="1" value="50" style="left:145px;top:226px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:65px;margin-left:-200px;width:300px;text-align:right;">テキスト速度</span>
				<input type="range" id="text_speed" min="-100" max="0" value="-30" step="1" style="left:145px;top:343px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">オートモード速度</span>
				<input type="range" id="auto_speed" min="-5000" max="-500" value="-1300" step="100" style="left:145px;top:426px;position:absolute;">
			</div>
			<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">未読スキップ</span>
            <div class="unread_area" id="unread_check" style="left:160px;top:474px;position:absolute;font-family:ubuntu-italic;">
                <input type="radio" name="unread_skip" id="unreadon">
                <label for="unreadon">ON</label>
                <input type="radio" name="unread_skip" id="unreadoff">
                <label for="unreadoff">OFF</label>
            </div>
            <span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">フルスクリーン</span>
            <div class="screen_area" id="screen_check" style="left:160px;top:556px;position:absolute;font-family:ubuntu-italic;">
                <input type="radio" name="fullscreen" id="fullscreenOn">
                <label for="fullscreenOn">ON</label>
                <input type="radio" name="fullscreen" id="fullscreenOff">
                <label for="fullscreenOff">OFF</label>
            </div>
            <div class=min_max style="left:133px;top:47px;">min</div><div class=min_max style="left:810px;top:48px;">MAX</div>
            <div class=min_max style="left:133px;top:127px;">min</div><div class=min_max style="left:810px;top:128px;">MAX</div>
            <div class=min_max style="left:133px;top:210px;">min</div><div class=min_max style="left:810px;top:211px;">MAX</div>
            <div class=min_max style="left:133px;top:325px;">min</div><div class=min_max style="left:810px;top:326px;">MAX</div>
            <div class=min_max style="left:133px;top:409px;">min</div><div class=min_max style="left:810px;top:410px;">MAX</div>
	</div>
   </div>
   <div class='content2' style="display:none;">
	<div class="config_body">
			<img style="position:absolute;top:40px;left:-220px;" src="tyrano/images/system/icon_hokuto.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:40px;left:-50px;font-size:20px;color:#606589;font-family:NotoBlack;">かがや　ほくと</span></p>
				<p><span class="config_voice_name" style="top:65px;left:-50px;">加賀屋 <span style="font-family:NotoBlack;">北斗</span></span></p>
				<input type="range" id="vo1_volume" min="0" max="100" step="1" value="50" style="top:140px;position:absolute;width:300px;left:-39px;">
			</div>
			<img style="position:absolute;top:240px;left:-220px;" src="tyrano/images/system/icon_minami.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:240px;left:-50px;font-size:20px;color:#606589;font-family:NotoBlack;">くるせ　みなみ</span></p>
				<p><span class="config_voice_name" style="top:265px;left:-50px;">来瀬 <span style="font-family:NotoBlack;">美波</span></span></p>
				<input type="range" id="vo2_volume" min="0" max="100" step="1" value="50" style="top:340px;position:absolute;width:300px;left:-39px;">
			</div>
			<img style="position:absolute;top:440px;left:-220px;" src="tyrano/images/system/icon_takamura.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:440px;left:-50px;font-size:20px;color:#606589;font-family:NotoBlack;">たかむら　せいじ</span></p>
				<p><span class="config_voice_name" style="top:465px;left:-50px;">高村 <span style="font-family:NotoBlack;">清二</span></span></p>
				<input type="range" id="vo3_volume" min="0" max="100" step="1" value="50" style="top:540px;position:absolute;width:300px;left:-39px;">
			</div>
			
			<img style="position:absolute;top:40px;left:440px;" src="tyrano/images/system/icon_nao.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:40px;left:610px;font-size:20px;color:#606589;font-family:NotoBlack;">ほしな　なお</span></p>
				<p><span class="config_voice_name" style="top:65px;left:610px;">保科 <span style="font-family:NotoBlack;">七音</span></span></p>
				<input type="range" id="vo4_volume" min="0" max="100" step="1" value="50" style="top:140px;position:absolute;width:300px;left:621px;">
			</div>
			<img style="position:absolute;top:240px;left:440px;" src="tyrano/images/system/icon_reito.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:240px;left:610px;font-size:20px;color:#606589;font-family:NotoBlack;">そうま　れいと</span></p>
				<p><span class="config_voice_name" style="top:265px;left:610px;">草間 <span style="font-family:NotoBlack;">令人</span></span></p>
				<input type="range" id="vo5_volume" min="0" max="100" step="1" value="50" style="top:340px;position:absolute;width:300px;left:621px;">
			</div>
			<img style="position:absolute;top:440px;left:440px;" src="tyrano/images/system/icon_kaname.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:440px;left:610px;font-size:20px;color:#606589;font-family:NotoBlack;">あまみや　かなめ</span></p>
				<p><span class="config_voice_name" style="top:465px;left:610px;">天宮 <span style="font-family:NotoBlack;">奏女</span></span></p>
				<input type="range" id="vo6_volume" min="0" max="100" step="1" value="50" style="top:540px;position:absolute;width:300px;left:621px;">
			</div>
			<div class=min_max style="left:-52px;top:125px;">min</div><div class=min_max style="left:318px;top:125px;">MAX</div>
            <div class=min_max style="left:-52px;top:325px;">min</div><div class=min_max style="left:318px;top:325px;">MAX</div>
            <div class=min_max style="left:-52px;top:526px;">min</div><div class=min_max style="left:318px;top:526px;">MAX</div>
            <div class=min_max style="left:610px;top:125px;">min</div><div class=min_max style="left:980px;top:125px;">MAX</div>
            <div class=min_max style="left:610px;top:325px;">min</div><div class=min_max style="left:980px;top:325px;">MAX</div>
            <div class=min_max style="left:610px;top:526px;">min</div><div class=min_max style="left:980px;top:526px;">MAX</div>
	</div>
   </div>
  </div>
</div>
	
	
	<div class="border1" style="position:absolute;top:299px;left:711px;width:940px;height:620px;border-top:solid #606589;border-right:solid #606589;z-index:-1;"></div>
	<div class="border2" style="position:absolute;top:299px;left:300px;width:385.8px;height:622px;border-left:solid #606589;z-index:-1;"></div>
	<div class="border3" style="position:absolute;top:299px;left:300px;width:195px;height:622px;border-top:solid #606589;display:none;z-index:-1;"></div>
	<div class="border4" style="position:absolute;top:299px;left:496px;width:215px;height:622px;border-top:solid #606589;z-index:-1;"></div>
	<div class="border5" style="position:absolute;top:234px;left:300px;width:194px;height:64px;border-top:solid white;border-right:solid #606589;border-left:solid #606589;z-index:-1;"></div>
	<div class="border6" style="position:absolute;top:234px;left:494px;width:214px;height:64px;border-top:solid white;border-right:solid #606589;border-left:solid #606589;z-index:-1;display:none;"></div>
	<div style="position:absolute;top:0px;width:50px;height:1280px;background:linear-gradient(#0C008A, #007882);"></div>
	<img src="tyrano/images/system/title_setting.png" style="left:130px;top:80px;position:absolute;">
	<img src="tyrano/images/system/logo_h.png" style="width:600px;left:1200px;top:50px;position:absolute;">
	<div class="menu_close save_close config_back" style="left:240px;top:950px;position:absolute;cursor:pointer;">
	  <img src="tyrano/images/system/back_button.png" alt="" class="non">
	</div>
	<div class="config_button menu_back_title" style="left:1260px;top:970px;position:absolute;">
	   <img src="tyrano/images/system/set_title_gray.png">
	   <img src="tyrano/images/system/set_title_w.png" class="config_button_hover">
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
});



[endscript]

[loadjs storage="config.js"]

[s]
;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*back
[cm]

	[iscript]
	TG.config.alreadyReadTextColor = tf.user_setting; // 既読テキストの文字色を復帰
	[endscript]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの有効化
	[start_keyconfig]

;	コールスタックのクリア
	[clearstack]

;	ゲーム復帰
	[awakegame]

