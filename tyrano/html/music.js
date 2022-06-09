var audio = document.getElementsByTagName("audio")[0]
var playButton = document.getElementById("play")
var volume = document.getElementById('volume');
var x = 0;


playButton.addEventListener('click', () => {
  if (x==0) {
    $('#audiotag').attr('src','data/bgm/hokuto_A.ogg');
    x = 1;
    $('.m_title').css('color','#606589');
    $('#bgm1').css('color','#fff');
    audio.play();
  }else if (x>0&&audio.paused) {
    audio.play()
  } else {
    audio.pause()
  }
})

audio.onplay = (event) => {
  $('#act2').attr('src','data/image/gl/pause_gray.png');
  $('#act1').attr('src','data/image/gl/pause_white.png');
};

audio.onpause = (event) => {
  $('#act2').attr('src','data/image/gl/play_gray.png');
  $('#act1').attr('src','data/image/gl/play_white.png');
};

audio.onended = (event) => {
  $('#act2').attr('src','data/image/gl/play_gray.png');
  $('#act1').attr('src','data/image/gl/play_white.png');
};

function playTime (t) {
  let hms = ''
  const h = t / 3600 | 0
  const m = t % 3600 / 60 | 0
  const s = t % 60
  const z2 = (v) => {
    const s = '00' + v
    return s.substr(s.length - 2, 2)
  }
  if(h != 0){
    hms = h + ':' + z2(m) + ':' + z2(s)
  }else if(m != 0){
    hms = z2(m) + ':' + z2(s)
  }else{
    hms = '00:' + z2(s)
  }
  return hms
}
audio.addEventListener("timeupdate", (e) => {
  const current = Math.floor(audio.currentTime)
  const duration = Math.round(audio.duration)
  if (!isNaN(duration)) {
    document.getElementById('current').innerHTML = playTime(current)
    document.getElementById('duration').innerHTML = playTime(duration)
    const percent = Math.round((audio.currentTime/audio.duration)*1000)/10
    document.getElementById('seekbar').style.backgroundSize = percent + '%'
  }
})

volume.addEventListener('change', function () {
  var volumeValue = (volume.value.length == 1) ? '0.0' + volume.value : '0.' +
    volume.value;
  audio.volume = volumeValue;
}, false);

$('#nmusic').click(
  function(){
    if (x == 1) {
      $('#audiotag').attr('src','data/bgm/hokuto_B.ogg');
      x = 2;
      $('.m_title').css('color','#606589');
      $('#bgm2').css('color','#fff');
      audio.play();
    } else if (x == 2) {
      $('#audiotag').attr('src','data/bgm/minami.ogg');
      x = 3;
      $('.m_title').css('color','#606589');
      $('#bgm3').css('color','#fff');
      audio.play();
    } else if (x == 3) {
      $('#audiotag').attr('src','data/bgm/seiji.ogg');
      x = 4;
      $('.m_title').css('color','#606589');
      $('#bgm4').css('color','#fff');
      audio.play();
    } else if (x == 4) {
      $('#audiotag').attr('src','data/bgm/nichijo.ogg');
      x = 5;
      $('.m_title').css('color','#606589');
      $('#bgm5').css('color','#fff');
      audio.play();
    } else if (x == 5) {
      $('#audiotag').attr('src','data/bgm/kaisou.ogg');
      x = 6;
      $('.m_title').css('color','#606589');
      $('#bgm6').css('color','#fff');
      audio.play();
    } else if (x == 6) {
      $('#audiotag').attr('src','data/bgm/nitousei.ogg');
      x = 7;
      $('.m_title').css('color','#606589');
      $('#bgm7').css('color','#fff');
      audio.play();
    } else if (x == 7) {
      $('#audiotag').attr('src','data/bgm/OP.ogg');
      x = 8;
      $('.m_title').css('color','#606589');
      $('#bgm8').css('color','#fff');
      audio.play();
    } else if (x == 8) {
      $('#audiotag').attr('src','data/bgm/ED.ogg');
      x = 9;
      $('.m_title').css('color','#606589');
      $('#bgm9').css('color','#fff');
      audio.play();
    } else {
    }
});
$('#bmusic').click(
  function(){
    if (x == 2) {
      $('#audiotag').attr('src','data/bgm/hokuto_A.ogg');
      x = 1;
      $('.m_title').css('color','#606589');
      $('#bgm1').css('color','#fff');
      audio.play();
    } else if (x == 3) {
      $('#audiotag').attr('src','data/bgm/hokuto_B.ogg');
      x = 2;
      $('.m_title').css('color','#606589');
      $('#bgm2').css('color','#fff');
      audio.play();
    } else if (x == 4) {
      $('#audiotag').attr('src','data/bgm/minami.ogg');
      x = 3;
      $('.m_title').css('color','#606589');
      $('#bgm3').css('color','#fff');
      audio.play();
    } else if (x == 5) {
      $('#audiotag').attr('src','data/bgm/seiji.ogg');
      x = 4;
      $('.m_title').css('color','#606589');
      $('#bgm4').css('color','#fff');
      audio.play();
    } else if (x == 6) {
      $('#audiotag').attr('src','data/bgm/nichijo.ogg');
      x = 5;
      $('.m_title').css('color','#606589');
      $('#bgm5').css('color','#fff');
      audio.play();
    } else if (x == 7) {
      $('#audiotag').attr('src','data/bgm/kaisou.ogg');
      x = 6;
      $('.m_title').css('color','#606589');
      $('#bgm6').css('color','#fff');
      audio.play();
    } else if (x == 8) {
      $('#audiotag').attr('src','data/bgm/nitousei.ogg');
      x = 7;
      $('.m_title').css('color','#606589');
      $('#bgm7').css('color','#fff');
      audio.play();
    } else if (x == 9) {
      $('#audiotag').attr('src','data/bgm/OP.ogg');
      x = 8;
      $('.m_title').css('color','#606589');
      $('#bgm8').css('color','#fff');
      audio.play();
    } else {
    }
});

$('#bgm1').click(
  function(){
    $('#audiotag').attr('src','data/bgm/hokuto_A.ogg');
    x = 1;
    $('.m_title').css('color','#606589');
    $('#bgm1').css('color','#fff');
    audio.play();
});
$('#bgm2').click(
  function(){
    $('#audiotag').attr('src','data/bgm/hokuto_B.ogg');
    x = 2;
    $('.m_title').css('color','#606589');
    $('#bgm2').css('color','#fff');
    audio.play();
});
$('#bgm3').click(
  function(){
    $('#audiotag').attr('src','data/bgm/minami.ogg');
    x=3;
    $('.m_title').css('color','#606589');
    $('#bgm3').css('color','#fff');
    audio.play();
});
$('#bgm4').click(
  function(){
    $('#audiotag').attr('src','data/bgm/seiji.ogg');
    x = 4;
    $('.m_title').css('color','#606589');
    $('#bgm4').css('color','#fff');
    audio.play();
});
$('#bgm5').click(
  function(){
    $('#audiotag').attr('src','data/bgm/nichijo.ogg');
    x = 5;
    $('.m_title').css('color',' #606589');
    $('#bgm5').css('color','#fff');
    audio.play();
});
$('#bgm6').click(
  function(){
    $('#audiotag').attr('src','data/bgm/kaisou.ogg');
    x = 6;
    $('.m_title').css('color','#606589');
    $('#bgm6').css('color','#fff');
    audio.play();
});
$('#bgm7').click(
  function(){
    $('#audiotag').attr('src','data/bgm/nitousei.ogg');
    x = 7;
    $('.m_title').css('color','#606589');
    $('#bgm7').css('color','#fff');
    audio.play();
});
$('#bgm8').click(
  function(){
    $('#audiotag').attr('src','data/bgm/OP.ogg');
    x = 8;
    $('.m_title').css('color','#606589');
    $('#bgm8').css('color','#fff');
    audio.play();
});
$('#bgm9').click(
  function(){
    $('#audiotag').attr('src','data/bgm/ED.ogg');
    x = 9;
    $('.m_title').css('color','#606589');
    $('#bgm9').css('color','#fff');
    audio.play();
});

$('#bgm1').hover(
  function(){
    $('#bgm1').css('color','#fff');
  },function(){
    if(x != 1){
      $('#bgm1').css('color','#606589');
    }else{}
});
$('#bgm2').hover(
  function(){
    $('#bgm2').css('color','#fff');
  },function(){
    if(x != 2){
      $('#bgm2').css('color','#606589');
    }else{}
});
$('#bgm3').hover(
  function(){
    $('#bgm3').css('color',' #fff');
  },function(){
    if(x != 3){
      $('#bgm3').css('color','#606589');
    }else{}
});
$('#bgm4').hover(
  function(){
    $('#bgm4').css('color','#fff');
  },function(){
    if(x != 4){
      $('#bgm4').css('color','#606589');
    }else{}
});
$('#bgm5').hover(
  function(){
    $('#bgm5').css('color','#fff');
  },function(){
    if(x != 5){
      $('#bgm5').css('color','#606589');
    }else{}
});
$('#bgm6').hover(
  function(){
    $('#bgm6').css('color',' #fff');
  },function(){
    if(x != 6){
      $('#bgm6').css('color','#606589');
    }else{}
});
$('#bgm7').hover(
  function(){
    $('#bgm7').css('color',' #fff');
  },function(){
    if(x != 7){
      $('#bgm7').css('color','#606589');
    }else{}
});
$('#bgm8').hover(
  function(){
    $('#bgm8').css('color','  #fff');
  },function(){
    if(x != 8){
      $('#bgm8').css('color','#606589');
    }else{}
});
$('#bgm9').hover(
  function(){
    $('#bgm9').css('color','  #fff');
  },function(){
    if(x != 9){
      $('#bgm9').css('color','#606589');
    }else{}
});