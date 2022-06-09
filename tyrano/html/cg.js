$('#takamura').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_takamura.png")','visibility':'visible'});
});
$('#kansoku').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_kansoku.png")','visibility':'visible'});
});
$('#busoku').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_busoku.png")','visibility':'visible'});
});
$('#seizi').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_seizi.png")','visibility':'visible'});
});
$('#cry').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_cry.png")','visibility':'visible'});
});
$('#pafe').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_pafe.png")','visibility':'visible'});
});
$('#hokuto').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_hokuto.png")','visibility':'visible'});
});
$('#minami').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/gl_minami.png")','visibility':'visible'});
});
$('#kokuhaku').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_kokuhaku.png")','visibility':'visible'});
});
$('#perseus').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_perseus.png")','visibility':'visible'});
});
$('#kirakirabosi').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_kirakirabosi.png")','visibility':'visible'});
});
$('#epilogue').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_epilogue.png")','visibility':'visible'});
});



$('#opening').click(function(){
  audio.pause()
  $('#cgvideo').css('visibility','visible');
  $('#vcg').attr('src','data/video/OP_nitousei.webm');
});
$('#ending').click(function(){
  audio.pause()
  $('#cgvideo').css('visibility','visible');
  $('#vcg').attr('src','data/video/ED_nitousei.webm');
});


$('#cgbig').click(function(){
 
    $('#cgbig').css({'background-image':'','visibility':'hidden'});
});

$('#cgvideo').click(function(){
  $('#vcg').attr('src','');
  $('#cgvideo').css('visibility','hidden');
});

var current_bgm_vol=parseInt(tyrano.plugin.kag.config.defaultBgmVolume);
var videoElem = document.getElementById('vcg');
videoElem.volume = current_bgm_vol/100;

videoElem.onended = (event) => {
  $('#vcg').attr('src','');
  $('#cgvideo').css('visibility','hidden');
};

$("#cgbig").bind('contextmenu', function() {
  $(this).html('');
  still = 1;
  $(this).css({'background-image':'','visibility':'hidden'});

  return false;
});

if(tyrano.plugin.kag.variable.sf.ST1!=1){
	$('#takamura').css('visibility','hidden');
}else{
	$('#takamura').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST2!=1){
	$('#kansoku').css('visibility','hidden');
}else{
	$('#kansoku').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST3!=1){
	$('#busoku').css('visibility','hidden');
}else{
	$('#busoku').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST4!=1){
	$('#seizi').css('visibility','hidden');
}else{
	$('#seizi').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST5!=1){
	$('#cry').css('visibility','hidden');
}else{
	$('#cry').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST6!=1){
	$('#pafe').css('visibility','hidden');
}else{
	$('#pafe').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST7!=1){
	$('#hokuto').css('visibility','hidden');
}else{
	$('#hokuto').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST8!=1){
	$('#minami').css('visibility','hidden');
}else{
	$('#minami').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST9!=1){
	$('#kokuhaku').css('visibility','hidden');
}else{
	$('#kokuhaku').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST10!=1){
	$('#perseus').css('visibility','hidden');
}else{
	$('#perseus').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST11!=1){
	$('#kirakirabosi').css('visibility','hidden');
}else{
	$('#kirakirabosi').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.ST12!=1){
	$('#epilogue').css('visibility','hidden');
}else{
	$('#epilogue').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.SM1!=1){
	$('#opening').css('visibility','hidden');
	$('#try1').css('visibility','hidden');
}else{
	$('#opening').css('visibility','visible');
	$('#try1').css('visibility','visible');
}
if(tyrano.plugin.kag.variable.sf.SM2!=1){
	$('#ending').css('visibility','hidden');
	$('#try2').css('visibility','hidden');
}else{
	$('#ending').css('visibility','visible');
	$('#try2').css('visibility','visible');
}
$('#chapterbutton, .non, .chap').mouseover(function(){
		tyrano.plugin.kag.ftag.startTag("playse",{storage:"se/harmonics.ogg"})
	   });

