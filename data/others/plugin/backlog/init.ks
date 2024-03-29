
[iscript]
if (typeof TYRANO.kag.stat.f.backlog === "undefined") {
  TYRANO.kag.stat.f.backlog = {}
}
if (typeof TYRANO.kag.tmp.backlog === "undefined") {
  TYRANO.kag.tmp.backlog = {}
}
if (typeof TYRANO.kag.tmp.backlog.functions === "undefined") {
  TYRANO.kag.tmp.backlog.functions = {}
}
TYRANO.kag.stat.f.backlog = [];
TYRANO.kag.tmp.backlog.chara_name = "";
TYRANO.kag.tmp.backlog.massage = "";
TYRANO.kag.tmp.backlog.voice = "";
TYRANO.kag.tmp.backlog.button_hover_time = 100;
TYRANO.kag.tmp.backlog.chara_pm = {};
TYRANO.kag.tmp.backlog.text_pm = {};
TYRANO.kag.tmp.backlog.voice_pm = {};
TYRANO.kag.tmp.backlog.voice_flg = "false";
TYRANO.kag.tmp.backlog.keyconfig = TYRANO.kag.stat.enable_keyconfig, TYRANO.kag.tmp.backlog.scroll = true;
TYRANO.kag.tmp.backlog.image_path = "./data/others/plugin/backlog/image/";
TYRANO.kag.tmp.backlog.screen_width = TYRANO.kag.config.scWidth;
TYRANO.kag.tmp.backlog.screen_height = TYRANO.kag.config.scHeight;
TYRANO.kag.tmp.backlog.z_index = 999999999;
TYRANO.kag.tmp.backlog.line_pm = {
  size: "1",
  color: "0xFFFFFF",
  img: "",
  margint: "20",
  marginb: "20"
};
TYRANO.kag.tmp.backlog.scroll_pm = {
  width: "10",
  bgcolor: "0xFFFFFF",
  opacity: "255",
  tab_color: "0xFFFFFF",
  bgimage: "",
  tab_img: "",
  tab_width: "",
  tab_height: "",
  marginl: "",
  margint: "",
  marginr: "",
  marginb: "",
  radius: "10"
};
TYRANO.kag.tmp.backlog.voice_pm = {
  buf: "1,2",
  img: "",
  img_enter: "",
  img_stop: "",
  img_stop_enter: "",
  width: "",
  height: "",
  marginl: "",
  margint: "",
  marginr: "",
  marginb: "",
  pos: "right"
};
TYRANO.kag.tmp.backlog.chara_pm = {
  face: TYRANO.kag.config.userFace,
  color: TYRANO.kag.config.defaultChColor,
  size: TYRANO.kag.config.defaultFontSize,
  bold: TYRANO.kag.config.defaultBold,
  pitch: "",
  width: "250",
  height: "70",
  newline: "false",
  marginl: "",
  margint: "",
  marginr: "",
  marginb: "",
  pos: "left",
  bgimage: "",
  bgcolor: "0x000000",
  opacity: "0"
};
TYRANO.kag.tmp.backlog.width_chara = "250";
TYRANO.kag.tmp.backlog.text_pm = {
  face: TYRANO.kag.config.userFace,
  color: TYRANO.kag.config.defaultChColor,
  size: TYRANO.kag.config.defaultFontSize,
  bold: TYRANO.kag.config.defaultBold,
  pitch: "",
  marginl: "",
  margint: "",
  marginr: "",
  marginb: "",
  line: "0"
};
TYRANO.kag.tmp.backlog.text_pm.line_height = (parseInt(TYRANO.kag.tmp.backlog.text_pm.size) + parseInt(TYRANO.kag.tmp.backlog.text_pm.line));
TYRANO.kag.tmp.backlog.select_pm = {
  visible: "true",
  face: TYRANO.kag.config.userFace,
  color: "0x00FFFF",
  size: TYRANO.kag.config.defaultFontSize,
  bold: "true"
};
TYRANO.kag.tmp.backlog.select_text = "【SELECT】";
TYRANO.kag.tmp.backlog.voice_buf = "0";
TYRANO.kag.tmp.backlog.voice_play = false;
[endscript]

[loadcss file="./data/others/plugin/backlog/perfect-scrollbar.css"]
[loadjs storage="./plugin/backlog/perfect-scrollbar.min.js"]
[loadjs storage="./plugin/backlog/function.js"]
[loadjs storage="./plugin/backlog/backlog.js"]

[iscript]
TYRANO.kag.menu.displayLog = function () {
  TYRANO.kag.ftag.startTag("backlog_show", {
    next_order: "false"
  })
};
tyrano.plugin.kag.tag.pushlog.pm = {
  name: "",
  text: "",
  join: "false"
};
var pushlog = TYRANO.kag.ftag.master_tag.pushlog;
pushlog.start_backlog = pushlog.start;
TYRANO.kag.tag.pushlog.start = function (a) {
  TYRANO.kag.tmp.backlog.functions.addBacklog(a.name, a.text);
  pushlog.start_backlog(a)
};
var text = TYRANO.kag.ftag.master_tag.text;
text.showMessage_backlog = text.showMessage;
text.showMessage = function (a, c) {
  text.showMessage_backlog(a, c);
  var b = "";
  if (TYRANO.kag.stat.chara_ptext != "") {
    b = $.isNull($("." + TYRANO.kag.stat.chara_ptext).html())
  }
  TYRANO.kag.tmp.backlog.chara_name = b;
  TYRANO.kag.tmp.backlog.massage = TYRANO.kag.tmp.backlog.massage + a
};
var glink = TYRANO.kag.ftag.master_tag.glink;
glink.setEvent_backlog = glink.setEvent;
tyrano.plugin.kag.tag.glink.setEvent = function (a, b) {
  glink.setEvent_backlog(a, b);
  if (TYRANO.kag.tmp.backlog.select_pm.visible == "true") {
    a.attr("data-text", b.text);
    a.on("click", function () {
      var d = "font-family:" + TYRANO.kag.tmp.backlog.select_pm.face + ";";
      d += "font-size:" + TYRANO.kag.tmp.backlog.select_pm.size + "px;";
      d += "color:" + $.convertColor(TYRANO.kag.tmp.backlog.select_pm.color) + ";";
      d += "font-weight:" + $.convertBold(TYRANO.kag.tmp.backlog.select_pm.bold) + ";";
      var e = "<span style='" + d + "'>" + TYRANO.kag.tmp.backlog.select_text + "</span>";
      var c = "<span style='" + d + "'>" + $(this).attr("data-text") + "</span>";
      TYRANO.kag.tmp.backlog.functions.addBacklog(e, c)
    })
  }
};
var r = TYRANO.kag.ftag.master_tag.r;
r.start_backlog = r.start;
TYRANO.kag.tag.r.start = function (a) {
  if (TYRANO.kag.stat.log_write) {
    TYRANO.kag.tmp.backlog.massage = TYRANO.kag.tmp.backlog.massage + "<br>"
  }
  r.start_backlog(a)
};
var p = TYRANO.kag.ftag.master_tag.p;
p.start_backlog = p.start;
TYRANO.kag.tag.p.start = function (a) {
  TYRANO.kag.tmp.backlog.functions.addBacklog(TYRANO.kag.tmp.backlog.chara_name, TYRANO.kag.tmp.backlog.massage, TYRANO.kag.tmp.backlog.voice);
  p.start_backlog(a)
};
var chara_ptext = TYRANO.kag.ftag.master_tag.chara_ptext;
chara_ptext.start_backlog = chara_ptext.start;
tyrano.plugin.kag.tag.chara_ptext.start = function (a) {
  TYRANO.kag.tmp.backlog.voice = "";
  if (TYRANO.kag.stat.jcharas[a.name]) {
    a.name = TYRANO.kag.stat.jcharas[a.name]
  }
  if (TYRANO.kag.stat.vostart == true) {
    if (TYRANO.kag.stat.map_vo.vochara[a.name]) {
      var c = TYRANO.kag.stat.map_vo.vochara[a.name];
      var b = $.replaceAll(c.vostorage, "{number}", c.number);
      TYRANO.kag.tmp.backlog.voice = b
    }
  }
  chara_ptext.start_backlog(a)
};
var er = TYRANO.kag.ftag.master_tag.er;
er.start_backlog = er.start;
tyrano.plugin.kag.tag.er.start = function (a) {
  if (!TYRANO.kag.stat.log_write) {
    TYRANO.kag.tmp.backlog.chara_name = "";
    TYRANO.kag.tmp.backlog.massage = "";
    TYRANO.kag.tmp.backlog.voice = ""
  }
  er.start_backlog(a)
};
TYRANO.kag.layer.hideMessageLayers_backlog = TYRANO.kag.layer.hideMessageLayers;
TYRANO.kag.layer.hideMessageLayers = function () {
  if ($("#backlog").css("display") == "none") {
    TYRANO.kag.layer.hideMessageLayers_backlog()
  }
};
[endscript]

[macro name="tb_voconfig"]
[eval exp="tf.voconfig_vostorage=mp.name+'/{number}.mp3'"]
[voconfig vostorage="&tf.voconfig_vostorage" *]
[endmacro]

[macro name="tb_vostart"]
[vostart *]
[endmacro]

[macro name="tb_vostop"]
[vostop *]
[endmacro]

[return]
