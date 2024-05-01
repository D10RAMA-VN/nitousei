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
    <span class='content1' id="tab_button1" style="margin-left:100px;padding-top:17px;">Settings</span>
    <span class='content2' id="tab_button2" style="padding-top:17px;margin-left:6px;color:#606589;">&nbsp;Voice&nbsp;Settings</span> 
  </div>
  
  <div class='tab-content'>
   <div class='content1'>
	<div class="config_body">
			<div class="range">
				<p><span style="display:inline-block;margin-top:40px;margin-left:-200px;width:300px;text-align:right;">BGM Volume</span></p>
				<input type="range" id="bgm_volume" min="0" max="100" step="1" value="50" style="left:145px;top:61px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">SE Volume</span>
				<input type="range" id="se_volume" min="0" max="100" value="20" step="1" style="left:145px;top:143px;position:absolute;">
			</div>
			<div class="range"> 
				<p><span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">Voice Volume</span></p>
				<input type="range" id="vo_volume" min="0" max="100" step="1" value="50" style="left:145px;top:226px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:65px;margin-left:-200px;width:300px;text-align:right;">Text speed</span>
				<input type="range" id="text_speed" min="-100" max="0" value="-30" step="1" style="left:145px;top:343px;position:absolute;">
			</div>
			<div class="range">
				<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">Auto mode speed</span>
				<input type="range" id="auto_speed" min="-5000" max="-500" value="-1300" step="100" style="left:145px;top:426px;position:absolute;">
			</div>
			<span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">Skip Unread text</span>
            <div class="unread_area" id="unread_check" style="left:160px;top:474px;position:absolute;font-family:ubuntu-italic;">
                <input type="radio" name="unread_skip" id="unreadon">
                <label for="unreadon">ON</label>
                <input type="radio" name="unread_skip" id="unreadoff">
                <label for="unreadoff">OFF</label>
            </div>
            <span style="display:inline-block;margin-top:30px;margin-left:-200px;width:300px;text-align:right;">Fullscreen</span>
            <div class="screen_area" id="screen_check" style="left:160px;top:556px;position:absolute;font-family:ubuntu-italic;">
                <input type="radio" name="fullscreen" id="fullscreenOn">
                <label for="fullscreenOn">ON</label>
                <input type="radio" name="fullscreen" id="fullscreenOff">
                <label for="fullscreenOff">OFF</label>
            </div>
            <div class='min_max' style="top:47px;">min</div><div class='min_max' style="left:810px;top:48px;">MAX</div>
            <div class='min_max' style="top:127px;">min</div><div class='min_max' style="left:810px;top:128px;">MAX</div>
            <div class='min_max' style="top:210px;">min</div><div class='min_max' style="left:810px;top:211px;">MAX</div>
            <div class='min_max' style="top:325px;">min</div><div class='min_max' style="left:810px;top:326px;">MAX</div>
            <div class='min_max' style="top:409px;">min</div><div class='min_max' style="left:810px;top:410px;">MAX</div>
	</div>
   </div>
   <div class='content2' style="display:none;">
	<div class="config_body">
			<img style="position:absolute;top:40px;left:-220px;" src="tyrano/images/system/icon_hokuto.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:65px;left:-50px;">加賀屋 <span>北斗</span></span></p>
				<input type="range" id="vo1_volume" min="0" max="100" step="1" value="50" style="top:140px;position:absolute;width:300px;left:-39px;">
			</div>
			<img style="position:absolute;top:240px;left:-220px;" src="tyrano/images/system/icon_minami.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:265px;left:-50px;">来瀬 <span>美波</span></span></p>
				<input type="range" id="vo2_volume" min="0" max="100" step="1" value="50" style="top:340px;position:absolute;width:300px;left:-39px;">
			</div>
			<img style="position:absolute;top:440px;left:-220px;" src="tyrano/images/system/icon_takamura.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:465px;left:-50px;">高村 <span>清二</span></span></p>
				<input type="range" id="vo3_volume" min="0" max="100" step="1" value="50" style="top:540px;position:absolute;width:300px;left:-39px;">
			</div>
			
			<img style="position:absolute;top:40px;left:440px;" src="tyrano/images/system/icon_nao.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:65px;left:610px;">保科 <span>七音</span></span></p>
				<input type="range" id="vo4_volume" min="0" max="100" step="1" value="50" style="top:140px;position:absolute;width:300px;left:621px;">
			</div>
			<img style="position:absolute;top:240px;left:440px;" src="tyrano/images/system/icon_reito.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:265px;left:610px;">草間 <span>令人</span></span></p>
				<input type="range" id="vo5_volume" min="0" max="100" step="1" value="50" style="top:340px;position:absolute;width:300px;left:621px;">
			</div>
			<img style="position:absolute;top:440px;left:440px;" src="tyrano/images/system/icon_kaname.png">
			<div class="range">
				<p><span class="config_voice_name" style="top:465px;left:610px;">天宮 <span>奏女</span></span></p>
				<input type="range" id="vo6_volume" min="0" max="100" step="1" value="50" style="top:540px;position:absolute;width:300px;left:621px;">
			</div>
			<div class='min_max' style="left:-52px;top:125px;">min</div><div class='min_max' style="left:318px;top:125px;">MAX</div>
            <div class='min_max' style="left:-52px;top:325px;">min</div><div class='min_max' style="left:318px;top:325px;">MAX</div>
            <div class='min_max' style="left:-52px;top:526px;">min</div><div class='min_max' style="left:318px;top:526px;">MAX</div>
            <div class='min_max' style="left:610px;top:125px;">min</div><div class='min_max' style="left:980px;top:125px;">MAX</div>
            <div class='min_max' style="left:610px;top:325px;">min</div><div class='min_max' style="left:980px;top:325px;">MAX</div>
            <div class='min_max' style="left:610px;top:526px;">min</div><div class='min_max' style="left:980px;top:526px;">MAX</div>
	</div>
   </div>
  </div>
</div>
	
	
	<div class="border" id="border1"></div>
	<div class="border" id="border2"></div>
	<div class="border" id="border3"></div>
	<div class="border" id="border4"></div>
	<div class="border" id="border5"></div>
	<div class="border" id="border6"></div>
	<div style="position:absolute;top:0px;width:50px;height:1280px;background:linear-gradient(#0C008A, #007882);"></div>
	<img src="tyrano/images/system/title_setting.png" style="left:130px;top:80px;position:absolute;">
	<img id="title_logo" src="tyrano/images/system/logo_h.png" style="width:600px;left:1200px;top:50px;position:absolute;">
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

