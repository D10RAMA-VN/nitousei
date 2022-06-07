$('#takamura').click(function(){
  $('#cgbig').css({'background-image':'url("data/bgimage/still_takamura.png")','visibility':'visible'});
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
  $('#cgvideo').css('visibility','visible');
  $('#vcg').attr('src','data/video/OP.webm');
});
$('#ending').click(function(){
  $('#cgvideo').css('visibility','visible');
  $('#vcg').attr('src','data/video/ED.webm');
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


