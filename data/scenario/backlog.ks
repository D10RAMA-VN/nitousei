  [backlog bgimage="bg.png"]
  [backlog_area width="1550" height="650" x="180" y="250" border_color="0x00000000"]
  [backlog_chara face="Noto" size="34" color="0xffffff" width="150"  margint="2" marginr="30"]
  [backlog_text face="Noto" size="30" color="0xffffff" margint="2" marginr="10" line="20"]
  [backlog_scroll width="27" tab_img="scroll_star.png" tab_height="25" tab_wigth="27"]
  [backlog_line size="0" margint="48" marginb="40"]
  [backlog_select color="0xFF0000"]
  [backlog_button_voice buf="1,2,3,4,5,6" pos="left" img="play.png" img_stop="play.png" marginl="80" marginr="50" margint="6" width="50"]	
  [backlog_button_close img="back_button.png" x="170" y="950"]
  [endbacklog]
  [iscript]
  $('.button').mouseover(function(){
	tyrano.plugin.kag.ftag.startTag("playse",{storage:"se/harmonics.ogg"})
});
  [endscript]
  [return]