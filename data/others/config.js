$('.config_quit').click(function(){tyrano.plugin.kag.ftag.startTag("close")});
$('.config_back').click(function(){tyrano.plugin.kag.ftag.startTag("jump",{target:"back"})});
$(".menu_back_title").click(function(){tyrano.plugin.kag.backTitle()});

var baseVolume1 = Math.ceil(tyrano.plugin.kag.variable.sf.vo1_vol*100/tyrano.plugin.kag.variable.sf.current_vo_vol);
var baseVolume2 = Math.ceil(tyrano.plugin.kag.variable.sf.vo2_vol*100/tyrano.plugin.kag.variable.sf.current_vo_vol);
var baseVolume3 = Math.ceil(tyrano.plugin.kag.variable.sf.vo3_vol*100/tyrano.plugin.kag.variable.sf.current_vo_vol);
var baseVolume4 = Math.ceil(tyrano.plugin.kag.variable.sf.vo4_vol*100/tyrano.plugin.kag.variable.sf.current_vo_vol);
var baseVolume5 = Math.ceil(tyrano.plugin.kag.variable.sf.vo5_vol*100/tyrano.plugin.kag.variable.sf.current_vo_vol);
var baseVolume6 = Math.ceil(tyrano.plugin.kag.variable.sf.vo6_vol*100/tyrano.plugin.kag.variable.sf.current_vo_vol);

$(function () {
			//ボイス北斗
			if(typeof tyrano.plugin.kag.variable.sf.vo1_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo1_vol=tyrano.plugin.kag.variable.sf.vo1_vol}else{tyrano.plugin.kag.variable.tf.vo1_vol=100}
			$('#vo1_volume').val(baseVolume1); //スライダー初期位置
			$('#vo1_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo1_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo1_vol=tyrano.plugin.kag.variable.tf.vo1_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo1_vol,buf:1});
			});
			//ボイス美波
			if(typeof tyrano.plugin.kag.variable.sf.vo2_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo2_vol=tyrano.plugin.kag.variable.sf.vo2_vol}else{tyrano.plugin.kag.variable.tf.vo2_vol=100}
			$('#vo2_volume').val(baseVolume2); //スライダー初期位置
			$('#vo2_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo2_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo2_vol=tyrano.plugin.kag.variable.tf.vo2_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo2_vol,buf:2});
			});
			//ボイス清二
			if(typeof tyrano.plugin.kag.variable.sf.vo3_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo3_vol=tyrano.plugin.kag.variable.sf.vo3_vol}else{tyrano.plugin.kag.variable.tf.vo3_vol=100}
			$('#vo3_volume').val(baseVolume3); //スライダー初期位置
			$('#vo3_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo3_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/110);
				tyrano.plugin.kag.variable.sf.vo3_vol=tyrano.plugin.kag.variable.tf.vo3_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo3_vol,buf:3});
			});
			//ボイス七音
			if(typeof tyrano.plugin.kag.variable.sf.vo4_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo4_vol=tyrano.plugin.kag.variable.sf.vo4_vol}else{tyrano.plugin.kag.variable.tf.vo4_vol=100}
			$('#vo4_volume').val(baseVolume4); //スライダー初期位置
			$('#vo4_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo4_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo4_vol=tyrano.plugin.kag.variable.tf.vo4_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo4_vol,buf:4});
			});
			//ボイス奏女
			if(typeof tyrano.plugin.kag.variable.sf.vo5_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo5_vol=tyrano.plugin.kag.variable.sf.vo5_vol}else{tyrano.plugin.kag.variable.tf.vo5_vol=100}
			$('#vo5_volume').val(baseVolume5); //スライダー初期位置
			$('#vo5_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo5_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo5_vol=tyrano.plugin.kag.variable.tf.vo5_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo5_vol,buf:5});
			});
			//ボイス怜人
			if(typeof tyrano.plugin.kag.variable.sf.vo6_vol!="undefined"){tyrano.plugin.kag.variable.tf.vo6_vol=tyrano.plugin.kag.variable.sf.vo6_vol}else{tyrano.plugin.kag.variable.tf.vo6_vol=100}
			$('#vo6_volume').val(baseVolume6); //スライダー初期位置
			$('#vo6_volume').on('input change', function() {
				tyrano.plugin.kag.variable.tf.vo6_vol=Math.ceil(Number($('#vo_volume').val())*Number($(this).val())/100);
				tyrano.plugin.kag.variable.sf.vo6_vol=tyrano.plugin.kag.variable.tf.vo6_vol;
				tyrano.plugin.kag.ftag.startTag("seopt",{volume:tyrano.plugin.kag.variable.tf.vo6_vol,buf:6});
			});
});

$('.content1').on('click',function(){
	$('.border3, .border6').hide();
	$('.border4, .border5').show();
	$('#tab_button1').css("color","white");
	$('#tab_button2').css('color','#606589');
});
$('.content2').on('click',function(){
	$('.border4, .border5').hide();
	$('.border3, .border6').show();
	$('#tab_button2').css("color","white");
	$('#tab_button1').css('color','#606589');
});

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


	   $(function(){
	   	   var fullscreen ="Off";
	       if ((document.fullscreenElement !== undefined && document.fullscreenElement !== null) || // HTML5 標準
              (document.mozFullScreenElement !== undefined && document.mozFullScreenElement !== null) || // Firefox
              (document.webkitFullscreenElement !== undefined && document.webkitFullscreenElement !== null) || // Chrome・Safari
              (document.webkitCurrentFullScreenElement !== undefined && document.webkitCurrentFullScreenElement !== null) || // Chrome・Safari (old)
              (document.msFullscreenElement !== undefined && document.msFullscreenElement !== null)){ // IE・Edge Legacy
                   fullscreen=="ON";
           } else {
                   fullscreen=="OFF";
           };
           
           if(fullscreen=="ON"){
				$('#fullscreenOn').prop('checked', true);$('#fullscreenOff').prop('checked', false);
			}else{
				$('#fullscreenOn').prop('checked', false);$('#fullscreenOff').prop('checked', true);
			};
			$('#fullscreenOn').change(function(){
				if( $(this).prop('checked') ){
					fullscreen ="ON";
					tyrano.plugin.kag.menu.screenFull();
				}else{
					fullscreen ="OFF";
				}
			});
			$('#fullscreenOff').change(function(){
				if( $(this).prop('checked') ){
					fullscreen ="OFF";
					tyrano.plugin.kag.menu.screenFull();
				}else{
					fullscreen ="ON";
				}
			});
	   });