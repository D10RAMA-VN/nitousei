tyrano.plugin.kag.tag.loadjs = {
  vital: ["storage"],
  pm: {
    storage: ""
  },
  start: function (a) {
    var t = this;
    $.getScript("./data/others/" + a.storage, function () {
      t.kag.ftag.nextOrder()
    })
  }
}, tyrano.plugin.kag.tag.movie = {
  vital: ["storage"],
  pm: {
    storage: "",
    volume: "",
    skip: "false",
    mute: "false",
    bgmode: "false",
    loop: "false"
  },
  start: function (a) {
    "pc" != $.userenv() ? (this.kag.layer.showEventLayer(), $.isTyranoPlayer() ? this.playVideo(a) : (this.kag.layer.showEventLayer(), this.playVideo(a), $(".tyrano_base").unbind("click.movie"))) : ("firefox" != $.getBrowser() && "opera" != $.getBrowser() || (a.storage = $.replaceAll(a.storage, ".mp4", ".webm")), this.playVideo(a))
  },
  playVideo: function (a) {
    var t = this,
      e = "./data/video/" + a.storage,
      r = document.createElement("video");
    r.id = "bgmovie", r.src = e, "" != a.volume ? r.volume = parseFloat(parseInt(a.volume) / 100) : void 0 !== this.kag.config.defaultMovieVolume && (r.volume = parseFloat(parseInt(this.kag.config.defaultMovieVolume) / 100)), r.style.backgroundColor = "black", r.style.position = "absolute", r.style.top = "0px", r.style.left = "0px", r.style.width = "100%", r.style.height = "100%", r.style.display = "none", r.autoplay = !0, r.autobuffer = !0, r.setAttribute("playsinline", "1"), "true" == a.mute && (r.muted = !0), "true" == a.bgmode ? (t.kag.tmp.video_playing = !0, r.style.zIndex = 0, "true" == a.loop ? r.loop = !0 : r.loop = !1, r.addEventListener("ended", function (a) {
      if (null == t.kag.stat.video_stack) t.kag.tmp.video_playing = !1, 1 == t.kag.stat.is_wait_bgmovie && (t.kag.ftag.nextOrder(), t.kag.stat.is_wait_bgmovie = !1);
      else {
        var e = t.kag.stat.video_stack,
          r = document.createElement("video");
        r.style.backgroundColor = "black", r.style.position = "absolute", r.style.top = "0px", r.style.left = "0px", r.style.width = "100%", r.style.height = "100%", r.autoplay = !0, r.autobuffer = !0, "true" == e.loop ? r.loop = !0 : r.loop = !1, r.setAttribute("playsinline", "1"), "true" == e.mute && (r.muted = !0), r.src = "./data/video/" + e.storage, r.load();
        var i = $(r);
        r.play(), i.css("z-index", -1), $("#tyrano_base").append(i), r.addEventListener("canplay", function (a) {
          var e = arguments.callee;
          i.css("z-index", 1), setTimeout(function () {
            $("#bgmovie").remove(), r.id = "bgmovie"
          }, 100), t.kag.stat.video_stack = null, t.kag.tmp.video_playing = !0, r.removeEventListener("canplay", e, !1)
        }, !1), r.addEventListener("ended", arguments.callee)
      }
    })) : (r.style.zIndex = 199999, r.addEventListener("ended", function (a) {
      $(".tyrano_base").find("video").remove(), t.kag.ftag.nextOrder()
    }), "true" == a.skip && $(r).on("click touchstart", function (a) {
      $(r).off("click touchstart"), $(".tyrano_base").find("video").remove(), t.kag.ftag.nextOrder()
    }));
    var i = $(r);
    i.css("opacity", 0), $("#tyrano_base").append(i), i.animate({
      opacity: "1"
    }, {
      duration: parseInt(a.time),
      complete: function () {}
    }), r.load(), r.addEventListener("canplay", function () {
      r.style.display = "", r.play()
    })
  }
}, tyrano.plugin.kag.tag.bgmovie = {
  vital: ["storage"],
  pm: {
    storage: "",
    volume: "",
    loop: "true",
    mute: "false",
    time: "300",
    stop: "false"
  },
  start: function (a) {
    if (a.skip = "false", a.bgmode = "true", this.kag.stat.current_bgmovie.storage = a.storage, this.kag.stat.current_bgmovie.volume = a.volume, 0 != this.kag.tmp.video_playing) {
      var t = document.getElementById("bgmovie");
      return this.kag.stat.video_stack = a, t.loop = !1, void this.kag.ftag.nextOrder()
    }
    this.kag.ftag.startTag("movie", a), "false" == a.stop && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.wait_bgmovie = {
  vital: [],
  pm: {
    stop: "false"
  },
  start: function (a) {
    if (1 == this.kag.tmp.video_playing) {
      var t = document.getElementById("bgmovie");
      this.kag.stat.is_wait_bgmovie = !0, t.loop = !1
    } else this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.stop_bgmovie = {
  vital: [],
  pm: {
    time: "300",
    wait: "true"
  },
  start: function (a) {
    var t = this;
    t.kag.tmp.video_playing = !1, t.kag.stat.current_bgmovie.storage = "", t.kag.stat.current_bgmovie.volume = "", $(".tyrano_base").find("video").animate({
      opacity: "0"
    }, {
      duration: parseInt(a.time),
      complete: function () {
        $(this).remove(), "true" == a.wait && t.kag.ftag.nextOrder()
      }
    }), $(".tyrano_base").find("video").get(0) ? "false" == a.wait && t.kag.ftag.nextOrder() : t.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.showsave = {
  pm: {},
  start: function (a) {
    var t = this;
    t.kag.stat.load_auto_next = !0, this.kag.menu.displaySave(function () {
      t.kag.stat.load_auto_next = !1, t.kag.ftag.nextOrder()
    })
  }
}, tyrano.plugin.kag.tag.showload = {
  pm: {},
  start: function (a) {
    var t = this;
    this.kag.menu.displayLoad(function () {
      t.kag.ftag.nextOrder()
    })
  }
}, tyrano.plugin.kag.tag.showconfig = {
  pm: {},
  start: function (a) {
    var t = this;
    this.kag.menu.displayConfig(function () {
      t.kag.ftag.nextOrder()
    })
  }
}, tyrano.plugin.kag.tag.showlang = {
  pm: {},
  start: function (a) {
    var t = this;
    this.kag.menu.displayLang(function () {
      t.kag.ftag.nextOrder()
    })
  }
}, tyrano.plugin.kag.tag.showgallery = {
  pm: {},
  start: function (a) {
    var t = this;
    this.kag.menu.displayGallery(function () {
      t.kag.ftag.nextOrder()
    })
  }
}, tyrano.plugin.kag.tag.showmenu = {
  pm: {},
  start: function (a) {
    this.kag.menu.showMenu(), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.showmenubutton = {
  pm: {},
  start: function (a) {
    $(".button_menu").show(), this.kag.stat.visible_menu_button = !0, this.kag.config.configVisible = "true", this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.hidemenubutton = {
  pm: {},
  start: function (a) {
    $(".button_menu").hide(), this.kag.stat.visible_menu_button = !1, this.kag.config.configVisible = "false", this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.skipstart = {
  pm: {},
  start: function (a) {
    if (1 == this.kag.stat.is_skip || this.kag.stat.is_adding_text) return !1;
    this.kag.readyAudio(), this.kag.stat.is_skip = !0, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.skipstop = {
  pm: {},
  start: function (a) {
    this.kag.stat.is_skip = !1, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.autostart = {
  pm: {},
  start: function (a) {
    if (1 == this.kag.stat.is_auto) return !1;
    this.kag.readyAudio(), this.kag.stat.is_auto = !0, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.autostop = {
  pm: {
    next: "true"
  },
  start: function (a) {
    this.kag.stat.is_auto = !1, this.kag.stat.is_wait_auto = !1, "true" == a.next && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.autoconfig = {
  pm: {
    speed: "",
    clickstop: ""
  },
  start: function (a) {
    "" != a.speed && (this.kag.config.autoSpeed = a.speed, this.kag.ftag.startTag("eval", {
      exp: "sf._system_config_auto_speed = " + a.speed,
      next: "false"
    })), "" != a.clickstop && (this.kag.config.autoClickStop = a.clickstop, this.kag.ftag.startTag("eval", {
      exp: "sf._system_config_auto_click_stop = " + a.clickstop,
      next: "false"
    })), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.anim = {
  pm: {
    name: "",
    layer: "",
    left: "",
    top: "",
    width: "",
    height: "",
    opacity: "",
    color: "",
    time: "2000",
    effect: ""
  },
  start: function (a) {
    var t = this,
      e = {};
    "" != a.left && (e.left = a.left), "" != a.top && (e.top = a.top), "" != a.width && (e.width = a.width), "" != a.height && (e.height = a.height), "" != a.opacity && (e.opacity = $.convertOpacity(a.opacity)), "" != a.color && (e.color = $.convertColor(a.color));
    if ("" != a.name) $("." + a.name).each(function () {
      t.kag.pushAnimStack(), $(this).animate(e, parseInt(a.time), a.effect, function () {
        t.kag.popAnimStack()
      })
    });
    else if ("" != a.layer) {
      var r = a.layer + "_fore";
      "free" == a.layer && (r = "layer_free"), $("." + r).children().each(function () {
        t.kag.pushAnimStack(), $(this).animate(e, parseInt(a.time), a.effect, function () {
          t.kag.popAnimStack()
        })
      })
    }
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.wa = {
  start: function (a) {
    this.kag.tmp.num_anim > 0 ? (this.kag.stat.is_wait_anim = !0, this.kag.layer.hideEventLayer()) : this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.stopanim = {
  vital: ["name"],
  pm: {
    name: ""
  },
  start: function (a) {
    $("." + a.name).stop(), this.kag.popAnimStack(), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.keyframe = {
  vital: ["name"],
  pm: {
    name: ""
  },
  start: function (a) {
    this.kag.stat.current_keyframe = a.name, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.endkeyframe = {
  pm: {},
  start: function (a) {
    this.kag.stat.current_keyframe = "", this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.frame = {
  vital: ["p"],
  pm: {
    p: ""
  },
  master_trans: {
    x: "",
    y: "",
    z: "",
    translate: "",
    translate3d: "",
    translateX: "",
    translateY: "",
    translateZ: "",
    scale: "",
    scale3d: "",
    scaleX: "",
    scaleY: "",
    scaleZ: "",
    rotate: "",
    rotate3d: "",
    rotateX: "",
    rotateY: "",
    rotateZ: "",
    skew: "",
    skewX: "",
    skewY: "",
    perspective: ""
  },
  start: function (a) {
    var t = a.p;
    delete a.p, this.kag.stat.map_keyframe[this.kag.stat.current_keyframe] || (this.kag.stat.map_keyframe[this.kag.stat.current_keyframe] = {}, this.kag.stat.map_keyframe[this.kag.stat.current_keyframe].frames = {}, this.kag.stat.map_keyframe[this.kag.stat.current_keyframe].styles = {});
    var e = {},
      r = {};
    for (key in a) "" == this.master_trans[key] ? e[key] = a[key] : r[key] = a[key];
    this.kag.stat.map_keyframe[this.kag.stat.current_keyframe].frames[t] = {
      trans: e,
      styles: r
    }, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.kanim = {
  vital: ["keyframe"],
  pm: {
    name: "",
    layer: "",
    keyframe: ""
  },
  start: function (a) {
    var t = this,
      e = this.kag.stat.map_keyframe[a.keyframe],
      r = "." + a.name;
    if (e.config = a, a.time && (a.duration = parseInt(a.time) + "ms"), a.delay && (a.delay = parseInt(a.delay) + "ms"), e.complete = function () {
        t.kag.popAnimStack()
      }, "" != a.name) delete a.name, delete a.keyframe, $(r).each(function () {
      t.kag.pushAnimStack(), $(this).a3d(e)
    });
    else if ("" != a.layer) {
      var i = a.layer + "_fore";
      "free" == a.layer && (i = "layer_free"), delete a.name, delete a.keyframe, delete a.layer, $("." + i).children().each(function () {
        t.kag.pushAnimStack(), $(this).a3d(e)
      })
    }
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.stop_kanim = {
  pm: {
    name: "",
    layer: ""
  },
  start: function (a) {
    if ("" != a.name) $("." + a.name).css({
      "animation-name": "",
      "animation-play-state": "",
      "animation-iteration-count": "",
      "animation-fill-mode": "",
      "animation-timing-function": "",
      transform: ""
    });
    else if ("" != a.layer) {
      var t = a.layer + "_fore";
      "free" == a.layer && (t = "layer_free"), $("." + t).css({
        "animation-name": "",
        "animation-play-state": "",
        "animation-iteration-count": "",
        "animation-fill-mode": "",
        "animation-timing-function": "",
        transform: ""
      })
    }
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.chara_ptext = {
  pm: {
    name: "",
    face: ""
  },
  start: function (a) {
    if (this.kag.layer.hideEventLayer(), "" == a.name) $("." + this.kag.stat.chara_ptext).html(""), "none" != this.kag.stat.chara_talk_focus && $("#tyrano_base").find(".tyrano_chara").css({
      "-webkit-filter": this.kag.stat.apply_filter_str,
      "-ms-filter": this.kag.stat.apply_filter_str,
      "-moz-filter": this.kag.stat.apply_filter_str
    });
    else {
      this.kag.stat.jcharas[a.name] && (a.name = this.kag.stat.jcharas[a.name]);
      var t = this.kag.stat.charas[a.name];
      if (t) {
        if ($("." + this.kag.stat.chara_ptext).html($.escapeHTML(t.jname)), "" != t.color && $("." + this.kag.stat.chara_ptext).css({
              "color": "white",
              "font-weight": "bold",
              "text-shadow": "1px 1px 1px #4A24E0, -1px -1px 1px #4A24E0,-1px 1px 1px #4A24E0,  1px -1px 1px #4A24E0;",
              "letter-spacing": "10px"
            }), "none" != this.kag.stat.chara_talk_focus && ($("#tyrano_base").find(".tyrano_chara").css({
            "-webkit-filter": this.kag.stat.apply_filter_str,
            "-ms-filter": this.kag.stat.apply_filter_str,
            "-moz-filter": this.kag.stat.apply_filter_str
          }), $("#tyrano_base").find("." + a.name + ".tyrano_chara").css({
            "-webkit-filter": "brightness(100%) blur(0px)",
            "-ms-filter": "brightness(100%) blur(0px)",
            "-moz-filter": "brightness(100%) blur(0px)"
          })), "none" != this.kag.stat.chara_talk_anim) {
          var e = $("#tyrano_base").find("." + a.name + ".tyrano_chara");
          e.get(0) && (this.animChara(e, this.kag.stat.chara_talk_anim, a.name), "" != a.face && this.kag.ftag.startTag("chara_mod", {
            name: a.name,
            face: a.face,
            time: "0"
          }))
        }
      } else $("." + this.kag.stat.chara_ptext).html($.escapeHTML(a.name)), "none" != this.kag.stat.chara_talk_focus && $("#tyrano_base").find(".tyrano_chara").css({
        "-webkit-filter": this.kag.stat.apply_filter_str,
        "-ms-filter": this.kag.stat.apply_filter_str,
        "-moz-filter": this.kag.stat.apply_filter_str
      })
    }
    if (1 == this.kag.stat.vostart && this.kag.stat.map_vo.vochara[a.name]) {
      var r = this.kag.stat.map_vo.vochara[a.name],
        i = {
          loop: "false",
          storage: $.replaceAll(r.vostorage, "{number}", r.number),
          stop: "true",
          buf: r.buf
        };
      this.kag.ftag.startTag("playse", i), this.kag.stat.map_vo.vochara[a.name].number = parseInt(r.number) + 1
    }
    if (this.kag.stat.f_chara_ptext = "true", "" != a.face) {
      if (!this.kag.stat.charas[a.name].map_face[a.face]) return void this.kag.error("指定されたキャラクター「" + a.name + "」もしくはface:「" + a.face + "」は定義されていません。もう一度確認をお願いします");
      this.kag.stat.charas[a.name].map_face[a.face];
      "none" == this.kag.stat.chara_talk_anim && this.kag.ftag.startTag("chara_mod", {
        name: a.name,
        face: a.face
      })
    } else this.kag.layer.showEventLayer(), this.kag.ftag.nextOrder()
  },
  animChara: function (a, t, e) {
    if (void 0 === this.kag.tmp.map_chara_talk_top[e]) {
      var r = this,
        i = parseInt(a.get(0).offsetTop);
      a.css("top", i);
      var s = {},
        n = {};
      this.kag.tmp.map_chara_talk_top[e] = !0;
      var o = this.kag.stat.chara_talk_anim_time;
      "up" == t ? (s.top = i - this.kag.stat.chara_talk_anim_value, n.top = i) : "down" == t && (s.top = i + this.kag.stat.chara_talk_anim_value, n.top = i), a.animate(s, o, "easeOutQuad", function () {
        a.animate(n, o, "easeOutQuad", function () {
          delete r.kag.tmp.map_chara_talk_top[e]
        })
      })
    }
  }
}, tyrano.plugin.kag.tag.chara_config = {
  pm: {
    pos_mode: "",
    effect: "",
    ptext: "",
    time: "",
    memory: "",
    anim: "",
    pos_change_time: "",
    talk_focus: "",
    brightness_value: "",
    blur_value: "",
    talk_anim: "",
    talk_anim_time: "",
    talk_anim_value: ""
  },
  start: function (a) {
    "" != a.pos_mode && (this.kag.stat.chara_pos_mode = a.pos_mode), "" != a.effect && (this.kag.stat.chara_effect = a.effect), "" != a.ptext && (this.kag.stat.chara_ptext = a.ptext), "" != a.time && (this.kag.stat.chara_time = a.time), "" != a.memory && (this.kag.stat.chara_memory = a.memory), "" != a.anim && (this.kag.stat.chara_anim = a.anim), "" != a.pos_change_time && (this.kag.stat.pos_change_time = a.pos_change_time), "" != a.brightness_value && (this.kag.stat.chara_brightness_value = a.brightness_value), "" != a.blur_value && (this.kag.stat.chara_blur_value = a.blur_value), "" != a.talk_anim && (this.kag.stat.chara_talk_anim = a.talk_anim), "" != a.talk_anim_time && (this.kag.stat.chara_talk_anim_time = parseInt(a.talk_anim_time)), "" != a.talk_anim_value && (this.kag.stat.chara_talk_anim_value = parseInt(a.talk_anim_value)), "" != a.talk_focus && ("none" == a.talk_focus ? this.kag.stat.apply_filter_str = "" : "brightness" == a.talk_focus ? this.kag.stat.apply_filter_str = "brightness(" + this.kag.stat.chara_brightness_value + "%)" : "blur" == a.talk_focus && (this.kag.stat.apply_filter_str = "blur(" + this.kag.stat.chara_blur_value + "px)"), $("#tyrano_base").find(".tyrano_chara").css({
      "-webkit-filter": "brightness(100%) blur(0px)",
      "-ms-filter": "brightness(100%) blur(0px)",
      "-moz-filter": "brightness(100%) blur(0px)"
    }), this.kag.stat.chara_talk_focus = a.talk_focus), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.chara_new = {
  vital: ["name", "storage"],
  pm: {
    name: "",
    storage: "",
    width: "",
    height: "",
    reflect: "false",
    jname: "",
    visible: "false",
    color: "",
    map_face: {}
  },
  start: function (a) {
    var t = "./data/fgimage/" + a.storage;
    $.isHTTP(a.storage) && (t = a.storage), a.map_face.default = a.storage, this.kag.preload(t), a.visible, this.kag.stat.charas[a.name] = a, "" != a.jname && (this.kag.stat.jcharas[a.jname] = a.name), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.chara_show = {
  vital: ["name"],
  pm: {
    name: "",
    page: "fore",
    layer: "0",
    wait: "true",
    left: "0",
    top: "0",
    width: "",
    height: "",
    zindex: "1",
    depth: "front",
    reflect: "",
    face: "",
    storage: "",
    time: 1e3
  },
  start: function (a) {
    var t = this,
      e = this.kag.stat.charas[a.name],
      r = [];
    if (null != e)
      if ($(".layer_fore").find("." + a.name).get(0)) t.kag.ftag.nextOrder();
      else {
        var i = "./data/fgimage/" + e.storage;
        if ($.isHTTP(e.storage) && (i = e.storage), "" != a.face) {
          if (!e.map_face[a.face]) return void this.kag.error("指定されたキャラクター「" + a.name + "」もしくはface:「" + a.face + "」は定義されていません。もう一度確認をお願いします");
          i = "./data/fgimage/" + e.map_face[a.face]
        } else "" != a.storage && ($.isHTTP(a.storage) ? (folder = "", i = a.storage) : i = "./data/fgimage/" + a.storage, t.kag.stat.charas[a.name].storage = a.storage);
        var s = $("<div></div>");
        s.css({
          position: "absolute",
          display: "none"
        });
        var n = $("<img />");
        if (n.attr("src", i), n.addClass("chara_img"), s.append(n), "" != a.width) {
          var o = parseInt(a.width);
          e.width = o
        }
        if ("" != a.height) {
          var g = parseInt(a.height);
          e.height = g
        }
        if ("" != e.width && s.css("width", e.width + "px"), "" != e.height && s.css("height", e.height + "px"), "" != a.zindex) {
          var l = parseInt(a.zindex);
          s.css("z-index", l)
        }
        var f = {};
        for (key in e._layer && (f = e._layer), f) {
          var h = f[key],
            c = h.current_part_id,
            m = h[c];
          "allow_storage" == c && (m = {
            storage: h.allow_storage,
            visible: "true"
          });
          var k = "./data/fgimage/" + m.storage,
            p = $("<img />");
          "none" == m.storage ? k = "./tyrano/images/system/transparent.png" : r.push(k), p.attr("src", k), p.css({
            position: "absolute",
            left: 0,
            top: 0,
            width: "100%",
            height: "100%",
            "z-index": h.zindex
          }), p.addClass("part"), p.addClass(key), s.append(p)
        }
        "" != a.reflect && ("true" == a.reflect ? e.reflect = "true" : e.reflect = "false"), r.push(i), this.kag.preloadAll(r, function () {
          var r = t.kag.layer.getLayer(a.layer, a.page);
          "back" == a.depth ? r.prepend(s).show() : r.append(s).show();
          var i = 1;
          if (t.kag.layer.hideEventLayer(), "true" == t.kag.stat.chara_pos_mode && "0" == a.left) {
            "0" != a.top ? s.css("top", parseInt(a.top)) : s.css("bottom", 0);
            var o = r.find(".tyrano_chara").length,
              g = parseInt(t.kag.config.scWidth),
              l = (parseInt(t.kag.config.scHeight), Math.floor(parseInt(s.css("width")) / 2)),
              f = Math.floor(g / (o + 2)),
              h = f,
              c = f - l;
            s.css("left", c + "px");
            var m = r.find(".tyrano_chara").get().reverse();
            $(m).each(function () {
              i++, h += f;
              var e = $(this);
              l = Math.floor(parseInt(e.css("width")) / 2);
              var r = h - l;
              "false" == t.kag.stat.chara_anim ? e.fadeTo(parseInt(t.kag.cutTimeWithSkip(a.time)), 0, function () {
                e.css("left", r), e.fadeTo(parseInt(t.kag.cutTimeWithSkip(t.kag.stat.pos_change_time)), 1, function () {
                  0 == --i && (t.kag.layer.showEventLayer(), "true" == a.wait && t.kag.ftag.nextOrder())
                })
              }) : e.animate({
                left: r
              }, parseInt(t.kag.cutTimeWithSkip(t.kag.stat.pos_change_time)), t.kag.stat.chara_effect, function () {
                0 == --i && (t.kag.layer.showEventLayer(), "true" == a.wait && t.kag.ftag.nextOrder())
              })
            })
          } else s.css("top", a.top + "px"), s.css("left", a.left + "px");
          setTimeout(function () {
            var a = n.css("width"),
              t = n.css("height");
            s.css("width", a), s.css("height", t), s.find(".part").css("width", a), s.find(".part").css("height", t)
          }, 1), $.setName(s, e.name), s.addClass("tyrano_chara"), "" != e.width && n.css("width", e.width + "px"), "" != e.height && n.css("height", e.height + "px"), "true" == e.reflect ? s.addClass("reflect") : s.removeClass("reflect"), "true" != a.wait && t.kag.ftag.nextOrder(), s.animate({
            opacity: "show"
          }, {
            duration: parseInt(t.kag.cutTimeWithSkip(a.time)),
            easing: t.kag.stat.chara_effect,
            complete: function () {
              0 == --i && (t.kag.layer.showEventLayer(), "true" == a.wait && t.kag.ftag.nextOrder())
            }
          })
        })
      }
    else this.kag.error("指定されたキャラクター「" + a.name + "」は定義されていません。[chara_new]で定義してください")
  }
}, tyrano.plugin.kag.tag.chara_hide = {
  vital: ["name"],
  pm: {
    page: "fore",
    layer: "0",
    name: "",
    wait: "true",
    pos_mode: "true",
    time: "1000"
  },
  start: function (a) {
    var t = this,
      e = this.kag.layer.getLayer(a.layer, a.page),
      r = e.find("." + a.name);
    if (r.get(0)) {
      var i = 0;
      t.kag.layer.hideEventLayer(), r.animate({
        opacity: "hide"
      }, {
        duration: parseInt(t.kag.cutTimeWithSkip(a.time)),
        easing: "linear",
        complete: function () {
          if (r.remove(), "true" == t.kag.stat.chara_pos_mode && "true" == a.pos_mode) {
            var s = e.find(".tyrano_chara").length,
              n = parseInt(t.kag.config.scWidth),
              o = (parseInt(t.kag.config.scHeight), Math.floor(n / (s + 1))),
              g = 0;
            if (0 == s) return t.kag.layer.showEventLayer(), void("true" == a.wait && t.kag.ftag.nextOrder());
            var l = e.find(".tyrano_chara").get().reverse();
            $(l).each(function () {
              i++, g += o;
              var e = $(this),
                r = Math.floor(parseInt(e.css("width")) / 2),
                s = g - r;
              "false" == t.kag.stat.chara_anim ? e.fadeTo(parseInt(t.kag.cutTimeWithSkip(a.time)), 0, function () {
                e.css("left", s), e.fadeTo(parseInt(t.kag.cutTimeWithSkip(t.kag.stat.pos_change_time)), 1, function () {
                  0 == --i && (t.kag.layer.showEventLayer(), "true" == a.wait && t.kag.ftag.nextOrder())
                })
              }) : e.animate({
                left: s
              }, parseInt(t.kag.cutTimeWithSkip(t.kag.stat.pos_change_time)), t.kag.stat.chara_effect, function () {
                0 == --i && (t.kag.layer.showEventLayer(), "true" == a.wait && t.kag.ftag.nextOrder())
              })
            })
          } else "true" == a.wait && (t.kag.layer.showEventLayer(), t.kag.ftag.nextOrder())
        }
      }), "false" == this.kag.stat.chara_memory && (this.kag.stat.charas[a.name].storage = this.kag.stat.charas[a.name].map_face.default), "true" != a.wait && this.kag.ftag.nextOrder()
    } else t.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.chara_hide_all = {
  vital: [],
  pm: {
    page: "fore",
    layer: "0",
    wait: "true",
    time: "1000"
  },
  start: function (a) {
    var t = this,
      e = this.kag.layer.getLayer(a.layer, a.page).find(".tyrano_chara");
    t.kag.layer.hideEventLayer();
    var r = !1;
    if (e.get(0)) {
      if (e.animate({
          opacity: "hide"
        }, {
          duration: parseInt(t.kag.cutTimeWithSkip(a.time)),
          easing: "linear",
          complete: function () {
            e.remove(), "true" == a.wait && 0 == r && (r = !0, t.kag.layer.showEventLayer(), t.kag.ftag.nextOrder())
          }
        }), "false" == this.kag.stat.chara_memory)
        for (key in this.kag.stat.charas) this.kag.stat.charas[key].storage = this.kag.stat.charas[key].map_face.default;
      "true" != a.wait && (this.kag.layer.showEventLayer(), this.kag.ftag.nextOrder())
    } else t.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.chara_delete = {
  vital: ["name"],
  pm: {
    name: ""
  },
  start: function (a) {
    delete this.kag.stat.charas[a.name], this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.chara_mod = {
  vital: ["name"],
  pm: {
    name: "",
    face: "",
    reflect: "",
    storage: "",
    time: "",
    cross: "true",
    wait: "true"
  },
  start: function (a) {
    var t = this;
    t.kag.layer.hideEventLayer();
    var e = "",
      r = "./data/fgimage/";
    if ("" != a.face) {
      if (!this.kag.stat.charas[a.name].map_face[a.face]) return void this.kag.error("指定されたキャラクター「" + a.name + "」もしくはface:「" + a.face + "」は定義されていません。もう一度確認をお願いします");
      e = this.kag.stat.charas[a.name].map_face[a.face]
    } else $.isHTTP(a.storage) ? (r = "", e = a.storage) : e = a.storage;
    if (0 == $(".layer_fore").find("." + a.name).length) return this.kag.stat.charas[a.name].storage = e, this.kag.stat.charas[a.name].reflect = a.reflect, this.kag.layer.showEventLayer(), void this.kag.ftag.nextOrder();
    var i = this.kag.stat.chara_time;
    if ("" != a.time && (i = a.time), $(".layer_fore").find("." + a.name).find(".chara_img").attr("src") == r + e && (i = "0"), "" != a.reflect && ("true" == a.reflect ? $(".layer_fore").find("." + a.name).addClass("reflect") : $(".layer_fore").find("." + a.name).removeClass("reflect"), this.kag.stat.charas[a.name].reflect = a.reflect), "" == e) return t.kag.layer.showEventLayer(), void this.kag.ftag.nextOrder();
    this.kag.preload(r + e, function () {
      if ($(".chara-mod-animation").get(0) && $(".chara-mod-animation_" + a.name).remove(), "0" != i) {
        var s = $(".layer_fore").find("." + a.name).clone();
        s.find(".chara_img").attr("src", r + e), s.css("opacity", 0);
        var n = $(".layer_fore").find("." + a.name);
        n.addClass("chara-mod-animation_" + a.name), n.after(s), "true" == a.cross && n.fadeTo(parseInt(t.kag.cutTimeWithSkip(i)), 0, function () {}), s.fadeTo(parseInt(t.kag.cutTimeWithSkip(i)), 1, function () {
          "false" == a.cross ? n.fadeTo(parseInt(t.kag.cutTimeWithSkip(i)), 0, function () {
            n.remove(), "true" == a.wait && (t.kag.layer.showEventLayer(), t.kag.ftag.nextOrder())
          }) : (n.remove(), "true" == a.wait && (t.kag.layer.showEventLayer(), t.kag.ftag.nextOrder()))
        })
      } else $(".layer_fore").find("." + a.name).find(".chara_img").attr("src", r + e), "true" == a.wait && (t.kag.layer.showEventLayer(), t.kag.ftag.nextOrder());
      t.kag.stat.charas[a.name].storage = e, "false" == a.wait && (t.kag.layer.showEventLayer(), t.kag.ftag.nextOrder())
    })
  }
}, tyrano.plugin.kag.tag.chara_move = {
  vital: ["name"],
  pm: {
    name: "",
    time: "600",
    anim: "false",
    left: "",
    top: "",
    width: "",
    height: "",
    effect: "",
    wait: "true"
  },
  start: function (a) {
    var t = this,
      e = $(".layer_fore").find("." + a.name + ".tyrano_chara"),
      r = $(".layer_fore").find("." + a.name + ".tyrano_chara").find("img");
    if (e.get(0)) {
      var i = {},
        s = {};
      "" != a.left && (i.left = a.left + "px"), "" != a.top && (i.top = a.top + "px"), "" != a.width && (i.width = a.width, s.width = a.width), "" != a.height && (i.height = a.height, s.height = a.height);
      "" != a.name && ("true" == a.anim ? (e.animate(i, parseInt(a.time), a.effect, function () {
        "true" == a.wait && t.kag.ftag.nextOrder()
      }), r.animate(s, parseInt(a.time), a.effect, function () {})) : e.fadeTo(parseInt(t.kag.cutTimeWithSkip(a.time)) / 2, 0, function () {
        e.css(i), r.css(s), e.fadeTo(parseInt(t.kag.cutTimeWithSkip(a.time)) / 2, 1, function () {
          "true" == a.wait && t.kag.ftag.nextOrder()
        })
      })), "false" == a.wait && this.kag.ftag.nextOrder()
    } else t.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.chara_face = {
  vital: ["name", "face", "storage"],
  pm: {
    name: "",
    face: "",
    storage: ""
  },
  start: function (a) {
    var t = "";
    t = ($.isHTTP(a.storage), a.storage), this.kag.stat.charas[a.name].map_face[a.face] = t, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.chara_layer = {
  vital: ["name", "part", "id", "storage"],
  pm: {
    name: "",
    part: "",
    id: "",
    storage: "",
    zindex: ""
  },
  start: function (a) {
    var t = this.kag.stat.charas[a.name];
    if (null != t) {
      var e = {};
      t._layer ? e = t._layer : t._layer = {};
      var r = {},
        i = !1;
      e[a.part] ? r = e[a.part] : (i = !0, t._layer[a.part] = {
        default_part_id: a.id,
        current_part_id: a.id,
        zindex: a.zindex
      });
      var s = {};
      r[a.id] ? s = r[a.id] : (s = {
        storage: "",
        zindex: ""
      }).visible = 1 == i ? "true" : "false", t._layer[a.part][a.id] = $.extendParam(a, s), this.kag.ftag.nextOrder()
    } else this.kag.error("指定されたキャラクター「" + a.name + "」は定義されていません。[chara_new]で定義してください")
  }
}, tyrano.plugin.kag.tag.chara_layer_mod = {
  vital: ["name", "part"],
  pm: {
    name: "",
    part: "",
    zindex: ""
  },
  start: function (a) {
    var t = this.kag.stat.charas[a.name];
    null != t ? t._layer ? (t._layer[a.part] && (t._layer[a.part].zindex = a.zindex), this.kag.ftag.nextOrder()) : this.kag.error("指定されたキャラクター「" + a.name + "」の差分パーツは設定されていません。[chara_layer]で定義してください") : this.kag.error("指定されたキャラクター「" + a.name + "」は定義されていません。[chara_new]で定義してください")
  }
}, tyrano.plugin.kag.tag.chara_part = {
  vital: ["name"],
  pm: {
    name: "",
    allow_storage: "false",
    time: "",
    wait: "true"
  },
  start: function (a) {
    var t = this,
      e = this.kag.stat.charas[a.name];
    if (null != e)
      if (e._layer) {
        var r = e._layer,
          i = {},
          s = [];
        for (key in a)
          if (r[key]) {
            var n = a[key];
            if (r[key][n]) {
              var o = r[key][n];
              o.id = n, i[key] = o, "none" != o.storage && s.push("./data/fgimage/" + o.storage), this.kag.stat.charas[a.name]._layer[key].current_part_id = n
            } else "true" == a.allow_storage && (i[key] = {
              storage: n,
              id: n
            }, s.push("./data/fgimage/" + n), this.kag.stat.charas[a.name]._layer[key].current_part_id = "allow_storage", this.kag.stat.charas[a.name]._layer[key].allow_storage = n)
          }
        var g = $(".layer_fore").find("." + a.name + ".tyrano_chara");
        this.kag.preloadAll(s, function () {
          if ("" != a.time) {
            var e = 0,
              s = 0;
            for (key in i) ! function () {
              s++;
              var n = i[key],
                o = g.find(".part." + key),
                l = o.clone();
              l.css("opacity", 0), "none" != n.storage ? l.attr("src", "./data/fgimage/" + n.storage) : l.attr("src", "./tyrano/images/system/transparent.png"), a[key + "_zindex"] ? l.css("z-index", a[key + "_zindex"]) : l.css("z-index", r[key].zindex), o.after(l), o.fadeTo(parseInt(a.time), 0, function () {
                o.remove()
              }), l.fadeTo(parseInt(a.time), 1, function () {
                e++, "true" == a.wait && s == e && t.kag.ftag.nextOrder()
              })
            }();
            "false" == a.wait && t.kag.ftag.nextOrder()
          } else {
            for (key in i) {
              var n = i[key],
                o = g.find(".part." + key);
              "none" != n.storage ? o.attr("src", "./data/fgimage/" + n.storage) : o.attr("src", "./tyrano/images/system/transparent.png"), a[key + "_zindex"] ? o.css("z-index", a[key + "_zindex"]) : o.css("z-index", r[key].zindex)
            }
            t.kag.ftag.nextOrder()
          }
        })
      } else this.kag.error("指定されたキャラクター「" + a.name + "」の差分パーツは設定されていません。[chara_layer]で定義してください");
    else this.kag.error("指定されたキャラクター「" + a.name + "」は定義されていません。[chara_new]で定義してください")
  }
}, tyrano.plugin.kag.tag.chara_part_reset = {
  vital: ["name"],
  pm: {
    name: "",
    part: ""
  },
  start: function (a) {
    var t = this.kag.stat.charas[a.name];
    if (null != t)
      if (t._layer) {
        var e = t._layer,
          r = {
            name: a.name
          };
        if ("" == a.part)
          for (n in e) r[n] = e[n].default_part_id;
        else
          for (var i = a.part.split(","), s = 0; s < i.length; s++) {
            var n = i[s];
            e[n] && (r[n] = e[n].default_part_id)
          }
        this.kag.ftag.startTag("chara_part", r)
      } else this.kag.error("指定されたキャラクター「" + a.name + "」の差分パーツは設定されていません。[chara_layer]で定義してください");
    else this.kag.error("指定されたキャラクター「" + a.name + "」は定義されていません。[chara_new]で定義してください")
  }
}, tyrano.plugin.kag.tag.showlog = {
  pm: {},
  start: function (a) {
    this.kag.menu.displayLog(), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.filter = {
  vital: [],
  pm: {
    layer: "all",
    page: "fore",
    name: "",
    grayscale: "",
    sepia: "",
    saturate: "",
    hue: "",
    invert: "",
    opacity: "",
    brightness: "",
    contrast: "",
    blur: ""
  },
  start: function (a) {
    var t = "",
      e = {};
    e = "all" == a.layer ? $(".layer_camera") : this.kag.layer.getLayer(a.layer, a.page), "" != a.name && (e = e.find("." + a.name)), "" != a.grayscale && (t += "grayscale(" + a.grayscale + "%) "), "" != a.sepia && (t += "sepia(" + a.sepia + "%) "), "" != a.saturate && (t += "saturate(" + a.saturate + "%) "), "" != a.hue && (t += "hue-rotate(" + a.hue + "deg) "), "" != a.invert && (t += "invert(" + a.invert + "%) "), "" != a.opacity && (t += "opacity(" + a.opacity + "%) "), "" != a.brightness && (t += "brightness(" + a.brightness + "%) "), "" != a.contrast && (t += "contrast(" + a.contrast + "%) "), "" != a.blur && (t += "blur(" + a.blur + "px) "), e.css({
      "-webkit-filter": t,
      "-ms-filter": t,
      "-moz-filter": t
    }), e.addClass("tyrano_filter_effect"), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.free_filter = {
  vital: [],
  pm: {
    layer: "",
    page: "fore",
    name: ""
  },
  start: function (a) {
    var t;
    t = "" == a.layer ? $(".tyrano_filter_effect") : this.kag.layer.getLayer(a.layer, a.page), "" != a.name && (t = t.find("." + a.name)), t.css({
      "-webkit-filter": "",
      "-ms-filter": "",
      "-moz-filter": ""
    }), t.removeClass("tyrano_filter_effect"), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.web = {
  vital: ["url"],
  pm: {
    url: ""
  },
  start: function (a) {
    if (-1 == a.url.indexOf("http")) this.kag.log("error:[web] url is not correct " + a.url);
    else if ($.isNWJS()) require("nw.gui").Shell.openExternal(a.url);
    else if ($.isElectron()) {
      require("electron").shell.openExternal(a.url)
    } else $.isTyranoPlayer() ? $.openWebFromApp(a.url) : window.open(a.url);
    this.kag.ftag.nextOrder()
  }
};