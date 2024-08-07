tyrano.plugin.kag.tag.playbgm = {
  vital: ["storage"],
  pm: {
    loop: "true",
    storage: "",
    fadein: "false",
    time: 2e3,
    volume: "",
    buf: "0",
    target: "bgm",
    sprite_time: "",
    click: "false",
    stop: "false"
  },
  start: function (t) {
    var a = this;
    !("bgm" == t.target && 0 == a.kag.stat.play_bgm || "se" == t.target && 0 == a.kag.stat.play_se) ? "pc" != $.userenv() ? (this.kag.layer.hideEventLayer(), 1 == this.kag.stat.is_skip && "se" == t.target ? (a.kag.layer.showEventLayer(), a.kag.ftag.nextOrder()) : 0 == this.kag.tmp.ready_audio ? $(".tyrano_base").on("click.bgm", function () {
      a.kag.readyAudio(), a.kag.tmp.ready_audio = !0, a.play(t), $(".tyrano_base").off("click.bgm")
    }) : a.play(t)) : 0 == this.kag.tmp.ready_audio ? $(".tyrano_base").on("click.bgm", function () {
      a.kag.readyAudio(), a.kag.tmp.ready_audio = !0, a.play(t), $(".tyrano_base").off("click.bgm")
    }) : a.play(t): a.kag.ftag.nextOrder()
  },
  play: function (t) {
    var a = this,
      e = "bgm";
    "se" == t.target ? (e = "sound", this.kag.tmp.is_se_play = !0, this.kag.stat.map_vo.vobuf[t.buf] && (this.kag.tmp.is_vo_play = !0), this.kag.stat.current_se || (this.kag.stat.current_se = {}), "false" == t.stop && ("true" == t.loop ? this.kag.stat.current_se[t.buf] = t : this.kag.stat.current_se[t.buf] && delete this.kag.stat.current_se[t.buf])) : (this.kag.tmp.is_audio_stopping = !1, this.kag.tmp.is_bgm_play = !0);
    var s = 1;
    "" !== t.volume && (s = parseFloat(parseInt(t.volume) / 100));
    var g = 1;
    "bgm" === e ? (g = void 0 === this.kag.config.defaultBgmVolume ? 1 : parseFloat(parseInt(this.kag.config.defaultBgmVolume) / 100), void 0 !== this.kag.stat.map_bgm_volume[t.buf] && (g = parseFloat(parseInt(this.kag.stat.map_bgm_volume[t.buf]) / 100))) : (g = void 0 === this.kag.config.defaultSeVolume ? 1 : parseFloat(parseInt(this.kag.config.defaultSeVolume) / 100), void 0 !== this.kag.stat.map_se_volume[t.buf] && (g = parseFloat(parseInt(this.kag.stat.map_se_volume[t.buf]) / 100))), s *= g;
    var i = $.getBrowser(),
      r = t.storage;
    "mp3" != this.kag.config.mediaFormatDefault && ("msie" != i && "safari" != i && "edge" != i || (r = $.replaceAll(r, ".ogg", ".m4a")));
    var o = null,
      m = {
        src: $.isHTTP(t.storage) ? r : "" != r ? "./data/" + e + "/" + r : "",
        volume: s,
        onend: t => {}
      };
    if ("" != t.sprite_time) {
      let a = t.sprite_time.split("-"),
        e = parseInt($.trim(a[0])),
        s = parseInt($.trim(a[1])) - e;
      m.sprite = {
        sprite_default: [e, s, $.toBoolean(t.loop)]
      }
    }
    o = new Howl(m), "true" == t.loop ? o.loop(!0) : o.loop(!1), "bgm" === e ? (this.kag.tmp.map_bgm[t.buf] && this.kag.tmp.map_bgm[t.buf].unload(), this.kag.tmp.map_bgm[t.buf] = o, a.kag.stat.current_bgm = r, a.kag.stat.current_bgm_vol = t.volume) : (this.kag.tmp.map_se[t.buf] && (this.kag.tmp.map_se[t.buf].pause(), this.kag.tmp.map_se[t.buf].unload(), delete this.kag.tmp.map_se[t.buf]), this.kag.tmp.map_se[t.buf] = o), o.once("play", function () {
      a.kag.layer.showEventLayer(), "false" == t.stop && a.kag.ftag.nextOrder()
    }), "" !== t.sprite_time ? o.play("sprite_default") : o.play(), "true" == t.fadein && o.fade(0, s, parseInt(t.time)), "true" != t.loop && o.on("end", function (e) {
      "se" == t.target ? (a.kag.tmp.is_se_play = !1, a.kag.tmp.is_vo_play = !1, 1 == a.kag.tmp.is_se_play_wait ? (a.kag.tmp.is_se_play_wait = !1, a.kag.ftag.nextOrder()) : 1 == a.kag.tmp.is_vo_play_wait && (a.kag.tmp.is_vo_play_wait = !1, setTimeout(function () {
        a.kag.ftag.nextOrder()
      }, 500))) : "bgm" == t.target && (a.kag.tmp.is_bgm_play = !1, 1 == a.kag.tmp.is_bgm_play_wait && (a.kag.tmp.is_bgm_play_wait = !1, a.kag.ftag.nextOrder()))
    })
  }
}, tyrano.plugin.kag.tag.stopbgm = {
  pm: {
    fadeout: "false",
    time: 2e3,
    target: "bgm",
    buf: "0",
    stop: "false"
  },
  start: function (t) {
    var a = this,
      e = null;
    "bgm" == t.target ? (e = this.kag.tmp.map_bgm, a.kag.tmp.is_bgm_play = !1, a.kag.tmp.is_bgm_play_wait = !1) : (e = this.kag.tmp.map_se, a.kag.tmp.is_vo_play = !1, a.kag.tmp.is_se_play = !1, a.kag.tmp.is_se_play_wait = !1, this.kag.stat.current_se || (this.kag.stat.current_se = {}), "false" == t.stop && this.kag.stat.current_se[t.buf] && delete this.kag.stat.current_se[t.buf]);
    var s, g;
    $.getBrowser();
    for (key in e) key == t.buf && (void 0, g = void 0, s = key, g = null, "bgm" === t.target ? (g = e[s], "false" == t.stop && (a.kag.stat.current_bgm = "", a.kag.stat.current_bgm_vol = "")) : g = e[s], "true" == t.fadeout ? g.fade(g.volume(), 0, parseInt(t.time)) : g.stop());
    "false" == t.stop && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.fadeinbgm = {
  vital: ["storage", "time"],
  pm: {
    loop: "true",
    storage: "",
    fadein: "true",
    sprite_time: "",
    time: 2e3
  },
  start: function (t) {
    parseInt(t.time) <= 100 && (t.time = 100), this.kag.ftag.startTag("playbgm", t)
  }
}, tyrano.plugin.kag.tag.fadeoutbgm = {
  pm: {
    loop: "true",
    storage: "",
    fadeout: "true",
    time: 2e3
  },
  start: function (t) {
    this.kag.ftag.startTag("stopbgm", t)
  }
}, tyrano.plugin.kag.tag.xchgbgm = {
  vital: ["storage", "time"],
  pm: {
    loop: "true",
    storage: "",
    fadein: "true",
    fadeout: "true",
    time: 2e3
  },
  start: function (t) {
    this.kag.ftag.startTag("stopbgm", t), this.kag.ftag.startTag("playbgm", t)
  }
}, tyrano.plugin.kag.tag.playse = {
  vital: ["storage"],
  pm: {
    storage: "",
    target: "se",
    volume: "",
    loop: "false",
    buf: "0",
    sprite_time: "",
    clear: "false"
  },
  start: function (t) {
    this.kag.layer.hideEventLayer(), "true" == t.clear && this.kag.ftag.startTag("stopbgm", {
      target: "se",
      stop: "true"
    }), this.kag.ftag.startTag("playbgm", t)
  }
}, tyrano.plugin.kag.tag.stopse = {
  pm: {
    storage: "",
    fadeout: "false",
    time: 2e3,
    buf: "0",
    target: "se"
  },
  start: function (t) {
    this.kag.ftag.startTag("stopbgm", t)
  }
}, tyrano.plugin.kag.tag.fadeinse = {
  vital: ["storage", "time"],
  pm: {
    storage: "",
    target: "se",
    loop: "false",
    volume: "",
    fadein: "true",
    buf: "0",
    sprite_time: "",
    time: "2000"
  },
  start: function (t) {
    parseInt(t.time) <= 100 && (t.time = 100), this.kag.ftag.startTag("playbgm", t)
  }
}, tyrano.plugin.kag.tag.fadeoutse = {
  pm: {
    storage: "",
    target: "se",
    loop: "false",
    buf: "0",
    fadeout: "true"
  },
  start: function (t) {
    this.kag.ftag.startTag("stopbgm", t)
  }
}, tyrano.plugin.kag.tag.bgmopt = {
  pm: {
    volume: "100",
    effect: "true",
    buf: ""
  },
  start: function (t) {
    var a = this.kag.tmp.map_bgm;
    if ("" != t.buf ? this.kag.stat.map_bgm_volume[t.buf] = t.volume : (this.kag.stat.map_bgm_volume = {}, this.kag.config.defaultBgmVolume = t.volume), "true" == t.effect && 0 == this.kag.define.FLAG_APRI) {
      var e = parseFloat(parseInt(t.volume) / 100);
      if ("" == t.buf)
        for (key in a) a[key] && a[key].volume(e);
      else a[t.buf] && a[t.buf].volume(e)
    }
    this.kag.ftag.startTag("eval", {
      exp: "sf._system_config_bgm_volume = " + t.volume
    })
  }
}, tyrano.plugin.kag.tag.seopt = {
  pm: {
    volume: "100",
    effect: "true",
    buf: ""
  },
  start: function (t) {
    var a = this.kag.tmp.map_se;
    if ("" != t.buf ? this.kag.stat.map_se_volume[t.buf] = t.volume : (this.kag.stat.map_se_volume = {}, this.kag.config.defaultSeVolume = t.volume), "true" == t.effect && 0 == this.kag.define.FLAG_APRI) {
      var e = parseFloat(parseInt(t.volume) / 100);
      if ("" == t.buf)
        for (key in a) a[key] && a[key].volume(e);
      else a[t.buf] && a[t.buf].volume(e)
    }
    this.kag.ftag.startTag("eval", {
      exp: "sf._system_config_se_volume = " + t.volume
    })
  }
}, tyrano.plugin.kag.tag.wbgm = {
  pm: {},
  start: function () {
    1 == this.kag.tmp.is_bgm_play ? this.kag.tmp.is_bgm_play_wait = !0 : this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.wse = {
  pm: {},
  start: function () {
    1 == this.kag.tmp.is_se_play ? this.kag.tmp.is_se_play_wait = !0 : this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.voconfig = {
  pm: {
    sebuf: "0",
    name: "",
    vostorage: "",
    number: ""
  },
  start: function (t) {
    this.kag.stat.map_vo;
    if (this.kag.stat.map_vo.vobuf[t.sebuf] = 1, "" != t.name) {
      var a = {};
      a = this.kag.stat.map_vo.vochara[t.name] ? this.kag.stat.map_vo.vochara[t.name] : {
        vostorage: "",
        buf: t.sebuf,
        number: 0
      }, "" != t.vostorage && (a.vostorage = t.vostorage), "" != t.number && (a.number = t.number), this.kag.stat.map_vo.vochara[t.name] = a
    }
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.vostart = {
  pm: {},
  start: function () {
    this.kag.stat.vostart = !0, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.vostop = {
  pm: {},
  start: function () {
    this.kag.stat.vostart = !1, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.speak_on = {
  vital: [],
  pm: {
    volume: ""
  },
  start: function (t) {
    "speechSynthesis" in window ? this.kag.stat.play_speak = !0 : console.error("*error:この環境は[speak_on]の読み上げ機能に対応していません"), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.speak_off = {
  vital: [],
  pm: {
    volume: ""
  },
  start: function (t) {
    this.kag.stat.play_speak = !1, this.kag.ftag.nextOrder()
  }
};