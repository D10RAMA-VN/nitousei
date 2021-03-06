tyrano.plugin.kag.ftag = {
  tyrano: null,
  kag: null,
  array_tag: [],
  master_tag: {},
  current_order_index: -1,
  init: function () {
    for (var t in tyrano.plugin.kag.tag) this.master_tag[t] = object(tyrano.plugin.kag.tag[t]), this.master_tag[t].kag = this.kag
  },
  buildTag: function (t, a) {
    this.array_tag = t, a ? this.nextOrderWithLabel(a) : this.nextOrderWithLabel("")
  },
  buildTagIndex: function (t, a, e) {
    this.array_tag = t, this.nextOrderWithIndex(a, void 0, void 0, void 0, e)
  },
  completeTrans: function () {
    this.kag.stat.is_trans = !1, 1 == this.kag.stat.is_stop && (this.kag.layer.showEventLayer(), this.nextOrder())
  },
  hideNextImg: function () {
    $(".img_next").remove(), $(".glyph_image").hide()
  },
  showNextImg: function () {
    if ("false" == this.kag.stat.flag_glyph) {
      $(".img_next").remove();
      this.kag.getMessageInnerLayer().find("p").append("<img class='img_next' src='./tyrano/images/system/click.png' />")
    } else $(".glyph_image").show()
  },
  nextOrder: function () {
    this.kag.layer.layer_event.hide();
    if (1 == this.kag.stat.is_strong_stop) return !1;
    if (1 == this.kag.stat.is_adding_text) return !1;
    if (this.current_order_index++, this.array_tag.length <= this.current_order_index) return this.kag.endStorage(), !1;
    var t = $.cloneObject(this.array_tag[this.current_order_index]);
    if (this.kag.stat.current_line = t.line, this.kag.is_rider ? (t.ks_file = this.kag.stat.current_scenario, this.kag.rider.pushConsoleLog(t)) : this.kag.is_studio ? (t.ks_file = this.kag.stat.current_scenario, this.kag.studio.pushConsole(t), this.kag.log("**:" + this.current_order_index + "　line:" + t.line), this.kag.log(t)) : (this.kag.log("**:" + this.current_order_index + "　line:" + t.line), this.kag.log(t)), "call" == t.name && "make.ks" == t.pm.storage || "make.ks" == this.kag.stat.current_scenario ? 1 == this.kag.stat.flag_ref_page && (this.kag.tmp.loading_make_ref = !0, this.kag.stat.flag_ref_page = !1) : 1 == this.kag.stat.flag_ref_page && (this.kag.stat.flag_ref_page = !1, this.kag.stat.log_clear = !0, this.kag.ftag.hideNextImg(), this.kag.stat.vchat.is_active ? this.kag.ftag.startTag("vchat_in", {}) : this.kag.getMessageInnerLayer().html("")), 1 == this.checkCond(t))
      if (1 == this.kag.stat.is_hide_message && (this.kag.layer.showMessageLayers(), this.kag.stat.is_hide_message = !1), this.master_tag[t.name]) {
        t.pm = this.convertEntity(t.pm);
        var a = this.checkVital(t);
        this.master_tag[t.name].log_join ? this.kag.stat.log_join = "true" : "text" == t.name || (this.kag.stat.log_join = "false"), this.checkCw(t) && this.kag.layer.layer_event.show(), "" != a ? this.kag.error(a) : (t.pm._tag = t.name, this.master_tag[t.name].start($.extend(!0, $.cloneObject(this.master_tag[t.name].pm), t.pm)))
      } else if (this.kag.stat.map_macro[t.name]) {
      t.pm = this.convertEntity(t.pm);
      var e = t.pm,
        s = this.kag.stat.map_macro[t.name],
        r = {};
      r.index = this.kag.ftag.current_order_index, r.storage = this.kag.stat.current_scenario, r.pm = e, this.kag.stat.mp = e, this.kag.pushStack("macro", r), this.kag.ftag.nextOrderWithIndex(s.index, s.storage)
    } else $.error_message($.lang("tag") + "：[" + t.name + "]" + $.lang("not_exists")), this.nextOrder();
    else this.nextOrder()
  },
  checkCw: function (t) {
    return !!this.master_tag[t.name].cw && (1 != this.kag.stat.is_script && 1 != this.kag.stat.is_html && 1 != this.kag.stat.checking_macro)
  },
  nextOrderWithTag: function (t) {
    try {
      this.current_order_index++;
      var a = this.array_tag[this.current_order_index];
      if (this.checkCond(a), "" == t[a.name]) {
        if (this.master_tag[a.name]) {
          switch (a.name) {
          case "elsif":
          case "else":
          case "endif":
            var e = this.kag.getStack("if");
            if (!e || a.pm.deep_if != e.deep) return !1
          }
          return a.pm = this.convertEntity(a.pm), a.pm._tag = a.name, this.master_tag[a.name].start($.extend(!0, $.cloneObject(this.master_tag[a.name].pm), a.pm)), !0
        }
        return !1
      }
      return !1
    } catch (t) {
      return console.log(t), !1
    }
  },
  convertEntity: function (t) {
    for (key in "" == t["*"] && (t = $.extend(!0, this.kag.stat.mp, $.cloneObject(t))), t) {
      var a = t[key],
        e = "";
      if (a.length > 0 && (e = a.substr(0, 1)), a.length > 0 && "&" === e) t[key] = this.kag.embScript(a.substr(1, a.length));
      else if (a.length > 0 && "%" === e) {
        var s = this.kag.getStack("macro");
        s && (t[key] = s.pm[a.substr(1, a.length)]);
        var r = a.split("|");
        2 == r.length && (s.pm[$.trim(r[0]).substr(1, $.trim(r[0]).length)] ? t[key] = s.pm[$.trim(r[0]).substr(1, $.trim(r[0]).length)] : t[key] = $.trim(r[1]))
      }
    }
    return t
  },
  checkVital: function (t) {
    var a = this.master_tag[t.name],
      e = "";
    if (!a.vital) return "";
    for (var s = a.vital, r = 0; r < s.length; r++) t.pm[s[r]] ? "" == t.pm[s[r]] && (e += "タグ「" + t.name + "」にパラメーター「" + s[r] + "」は必須です　\n") : e += "タグ「" + t.name + "」にパラメーター「" + s[r] + "」は必須です　\n";
    return e
  },
  checkCond: function (t) {
    var a = t.pm;
    if (a.cond) {
      var e = a.cond;
      return this.kag.embScript(e)
    }
    return !0
  },
  startTag: function (t, a) {
    void 0 === a && (a = {}), a._tag = t, this.master_tag[t].start($.extend(!0, $.cloneObject(this.master_tag[t].pm), a))
  },
  nextOrderWithLabel: function (t, a) {
    if (this.kag.stat.is_strong_stop = !1, t && (-1 != t.indexOf("*") && (t = t.substr(1, t.length)), this.kag.ftag.startTag("label", {
        label_name: t,
        nextorder: "false"
      })), "*savesnap" != t) {
      var e = this,
        s = a;
      if (t = t || "", a = a || this.kag.stat.current_scenario, t = t.replace("*", ""), a != this.kag.stat.current_scenario && null != s) this.kag.layer.hideEventLayer(), this.kag.loadScenario(a, function (a) {
        e.kag.layer.showEventLayer(), e.kag.ftag.buildTag(a, t)
      });
      else if ("" == t) this.current_order_index = -1, this.nextOrder();
      else if (this.kag.stat.map_label[t]) {
        var r = this.kag.stat.map_label[t];
        this.current_order_index = r.index, this.nextOrder()
      } else $.error_message($.lang("label") + "：'" + t + "'" + $.lang("not_exists")), this.nextOrder()
    } else {
      var i = this.kag.menu.snap,
        n = i.current_order_index,
        g = i.stat.current_scenario;
      this.nextOrderWithIndex(n, g, void 0, void 0, "snap")
    }
  },
  nextOrderWithIndex: function (t, a, e, s, r) {
    this.kag.stat.is_strong_stop = !1, this.kag.layer.showEventLayer();
    var i = this;
    e = e || !1, r = r || "yes", (a = a || this.kag.stat.current_scenario) != this.kag.stat.current_scenario || 1 == e ? (this.kag.layer.hideEventLayer(), this.kag.loadScenario(a, function (a) {
      var e = $.extend(!0, [], a);
      "object" == typeof s && e.splice(t + 1, 0, s), i.kag.layer.showEventLayer(), i.kag.ftag.buildTagIndex(e, t, r)
    })) : (this.current_order_index = t, "yes" == r ? this.nextOrder() : "snap" == r ? (this.kag.stat.is_strong_stop = this.kag.menu.snap.stat.is_strong_stop, 1 == this.kag.stat.is_skip && 0 == this.kag.stat.is_strong_stop && this.kag.ftag.nextOrder()) : "stop" == r && this.kag.ftag.startTag("s", {
      val: {}
    }))
  }
}, tyrano.plugin.kag.tag.text = {
  cw: !0,
  pm: {
    val: "",
    backlog: "add"
  },
  start: function (t) {
    if (1 == this.kag.stat.is_script) return this.kag.stat.buff_script += t.val + "\n", void this.kag.ftag.nextOrder();
    if (1 == this.kag.stat.is_html) return this.kag.stat.map_html.buff_html += t.val, void this.kag.ftag.nextOrder();
    var a = this.kag.getMessageInnerLayer();
    if (a.css({
        "letter-spacing": this.kag.config.defaultPitch + "px",
        "line-height": parseInt(this.kag.config.defaultFontSize) + parseInt(this.kag.config.defaultLineSpacing) + "px",
        "font-family": this.kag.config.userFace
      }), this.kag.stat.current_message_str = t.val, "true" == this.kag.stat.vertical) {
      if ("false" != this.kag.config.defaultAutoReturn) {
        var e = this.kag.getMessageOuterLayer(),
          s = .8 * parseInt(e.css("width"));
        parseInt(a.find("p").css("width")) > s && (this.kag.stat.vchat.is_active ? this.kag.ftag.startTag("vchat_in", {}) : this.kag.getMessageInnerLayer().html(""))
      }
      this.showMessage(t.val, t, !0)
    } else {
      if ("false" != this.kag.config.defaultAutoReturn) {
        e = this.kag.getMessageOuterLayer();
        var r = .8 * parseInt(e.css("height"));
        parseInt(a.find("p").css("height")) > r && (this.kag.stat.vchat.is_active ? this.kag.ftag.startTag("vchat_in", {}) : this.kag.getMessageInnerLayer().html(""))
      }
      this.showMessage(t.val, t, !1)
    }
  },
  showMessage: function (t, a, e) {
    var s = this;
    "true" == s.kag.stat.log_join && (a.backlog = "join");
    var r = "";
    if ("" != this.kag.stat.chara_ptext && (r = $.isNull($("." + this.kag.stat.chara_ptext).html())), "" != r && "join" != a.backlog || "" != r && "true" == this.kag.stat.f_chara_ptext) this.kag.pushBackLog("<b style='display:block;' class='backlog_chara_name " + r + "'>" + r + "</b><span class='backlog_text " + r + "'>" + t + "</span>", "add"), "true" == this.kag.stat.f_chara_ptext && (this.kag.stat.f_chara_ptext = "false", this.kag.stat.log_join = "true");
    else {
      var i = "<span class='backlog_text1 " + r + "'>" + t + "</span>";
      "join" == a.backlog ? this.kag.pushBackLog(i, "join") : this.kag.pushBackLog(i, "add")
    }
    1 == s.kag.stat.play_speak && speechSynthesis.speak(new SpeechSynthesisUtterance(t)), s.kag.ftag.hideNextImg();
    var n = this.kag.getMessageInnerLayer();
    this.kag.stat.vchat.is_active && n.show(),
      function (a) {
        "" == a.html() && (e ? a.append("<p class='vertical_text'></p>") : a.append("<p class=''></p>"));
        var i = "";
        0 != a.find("p").find(".current_span").length && (i = a.find("p").find(".current_span").html()), s.kag.checkMessage(a);
        var n = {};
        if (s.kag.stat.vchat.is_active)
          if (n = a.find(".current_span"), "" == r) $(".current_vchat").find(".vchat_chara_name").remove(), $(".current_vchat").find(".vchat-text-inner").css("margin-top", "0.2em");
          else {
            $(".current_vchat").find(".vchat_chara_name").html(r);
            var g = $.convertColor(s.kag.stat.vchat.chara_name_color),
              o = s.kag.stat.vchat.charas[r];
            o && "" != o.color && (g = $.convertColor(o.color)), $(".current_vchat").find(".vchat_chara_name").css("background-color", g), $(".current_vchat").find(".vchat-text-inner").css("margin-top", "1.5em")
          }
        else if ((n = s.kag.getMessageCurrentSpan()).css({
            color: s.kag.stat.font.color,
            "font-weight": s.kag.stat.font.bold,
            "font-size": s.kag.stat.font.size + "px",
            "font-family": s.kag.stat.font.face,
            "font-style": s.kag.stat.font.italic
          }), "" != s.kag.stat.font.edge) {
          var l = s.kag.stat.font.edge;
          n.css("text-shadow", "1px 1px 0 " + l + ", -1px 1px 0 " + l + ",1px -1px 0 " + l + ",-1px -1px 0 " + l)
        } else "" != s.kag.stat.font.shadow && n.css("text-shadow", "2px 2px 2px " + s.kag.stat.font.shadow);
        "true" == s.kag.config.autoRecordLabel && (1 == s.kag.stat.already_read ? "default" != s.kag.config.alreadyReadTextColor && n.css("color", $.convertColor(s.kag.config.alreadyReadTextColor)) : "false" == s.kag.config.unReadTextSkip && (s.kag.stat.is_skip = !1));
        var c = 30;
        "" != s.kag.stat.ch_speed ? c = parseInt(s.kag.stat.ch_speed) : s.kag.config.chSpeed && (c = parseInt(s.kag.config.chSpeed));
        for (var h = "", f = 0; f < t.length; f++) {
          var p = t.charAt(f);
          "" != s.kag.stat.ruby_str && (p = "<ruby><rb>" + p + "</rb><rt>" + s.kag.stat.ruby_str + "</rt></ruby>", s.kag.stat.ruby_str = ""), h += "<span style='visibility: hidden'>" + p + "</span>"
        }
        i += "<span>" + h + "</span>", s.kag.appendMessage(a, i);
        var k = n.children("span:last-child"),
          d = function (a) {
            var e = 1 != s.kag.stat.is_skip && 1 != s.kag.stat.is_nowait && c >= 3;
            e && function (t) {
              k.children("span:eq(" + t + ")").css("visibility", "visible")
            }(a), a <= t.length ? (s.kag.stat.is_adding_text = !0, 1 == s.kag.stat.is_click_text || 1 == s.kag.stat.is_skip || 1 == s.kag.stat.is_nowait ? d(++a) : setTimeout(function () {
              d(++a)
            }, c)) : (s.kag.stat.is_adding_text = !1, s.kag.stat.is_click_text = !1, "true" != s.kag.stat.is_stop && (e ? s.kag.stat.is_hide_message || s.kag.ftag.nextOrder() : (k.children("span").css("visibility", "visible"), setTimeout(function () {
              s.kag.stat.is_hide_message || s.kag.ftag.nextOrder()
            }, parseInt(s.kag.config.skipSpeed)))))
          };
        d(0)
      }(n)
  },
  nextOrder: function () {},
  test: function () {}
}, tyrano.plugin.kag.tag.label = {
  pm: {
    nextorder: "true"
  },
  start: function (t) {
    if ("true" == this.kag.config.autoRecordLabel) {
      var a = "trail_" + this.kag.stat.current_scenario.replace(".ks", "").replace(/\u002f/g, "").replace(/:/g, "").replace(/\./g, ""),
        e = this.kag.stat.buff_label_name,
        s = a + "_" + t.label_name;
      if ("" != this.kag.stat.buff_label_name) {
        this.kag.variable.sf.record || (this.kag.variable.sf.record = {});
        var r = "sf.record." + e,
          i = r + " = " + r + "  || 0;" + r + "++;";
        this.kag.evalScript(i)
      }
      this.kag.variable.sf.record && (this.kag.variable.sf.record[s] ? this.kag.stat.already_read = !0 : this.kag.stat.already_read = !1), this.kag.stat.buff_label_name = s
    }
    "true" == t.nextorder && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.config_record_label = {
  pm: {
    color: "",
    skip: ""
  },
  start: function (t) {
    "" != t.color && (this.kag.config.alreadyReadTextColor = t.color, this.kag.ftag.startTag("eval", {
      exp: "sf._system_config_already_read_text_color = " + t.color
    })), "" != t.skip && ("true" == t.skip ? this.kag.config.unReadTextSkip = "true" : this.kag.config.unReadTextSkip = "false", this.kag.ftag.startTag("eval", {
      exp: "sf._system_config_unread_text_skip = '" + t.skip + "'"
    })), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.l = {
  cw: !0,
  start: function () {
    var t = this;
    if (this.kag.ftag.showNextImg(), 1 == this.kag.stat.is_skip) this.kag.ftag.nextOrder();
    else if (1 == this.kag.stat.is_auto) {
      this.kag.stat.is_wait_auto = !0;
      var a = t.kag.config.autoSpeed;
      if ("0" != t.kag.config.autoSpeedWithText) {
        var e = this.kag.stat.current_message_str.length;
        a = parseInt(a) + parseInt(t.kag.config.autoSpeedWithText) * e
      }
      setTimeout(function () {
        1 == t.kag.stat.is_wait_auto && (1 == t.kag.tmp.is_vo_play ? t.kag.tmp.is_vo_play_wait = !0 : t.kag.ftag.nextOrder())
      }, a)
    }
  }
}, tyrano.plugin.kag.tag.p = {
  cw: !0,
  start: function () {
    var t = this;
    if (this.kag.stat.flag_ref_page = !0, this.kag.ftag.showNextImg(), 1 == this.kag.stat.is_skip) this.kag.ftag.nextOrder();
    else if (1 == this.kag.stat.is_auto) {
      this.kag.stat.is_wait_auto = !0;
      var a = t.kag.config.autoSpeed;
      if ("0" != t.kag.config.autoSpeedWithText) {
        var e = this.kag.stat.current_message_str.length;
        a = parseInt(a) + parseInt(t.kag.config.autoSpeedWithText) * e
      }
      setTimeout(function () {
        1 == t.kag.stat.is_wait_auto && (1 == t.kag.tmp.is_vo_play ? t.kag.tmp.is_vo_play_wait = !0 : t.kag.ftag.nextOrder())
      }, a)
    }
  }
}, tyrano.plugin.kag.tag.graph = {
  vital: ["storage"],
  pm: {
    storage: null
  },
  start: function (t) {
    var a = this.kag.getMessageInnerLayer(),
      e = "";
    0 != a.find("p").find(".current_span").length && (e = a.find("p").find(".current_span").html());
    var s = "";
    s = $.isHTTP(t.storage) ? t.storage : "./data/image/" + t.storage, this.kag.appendMessage(a, e + "<img src='" + s + "' >"), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.jump = {
  pm: {
    storage: null,
    target: null,
    countpage: !0
  },
  start: function (t) {
    var a = this;
    setTimeout(function () {
      a.kag.ftag.nextOrderWithLabel(t.target, t.storage)
    }, 1)
  }
}, tyrano.plugin.kag.tag.r = {
  log_join: "false",
  start: function () {
    var t = this,
      a = this.kag.getMessageInnerLayer(),
      e = a.find("p").find(".current_span").html() + "<br >";
    a.find("p").find(".current_span").html(e), setTimeout(function () {
      t.kag.ftag.nextOrder()
    }, 5)
  }
}, tyrano.plugin.kag.tag.er = {
  start: function () {
    this.kag.ftag.hideNextImg(), this.kag.getMessageInnerLayer().html(""), this.kag.ftag.startTag("resetfont")
  }
}, tyrano.plugin.kag.tag.cm = {
  start: function () {
    this.kag.ftag.hideNextImg(), this.kag.stat.vchat.is_active ? this.kag.ftag.startTag("vchat_in", {}) : this.kag.layer.clearMessageInnerLayerAll(), this.kag.stat.log_clear = !0, this.kag.layer.getFreeLayer().html("").hide(), this.kag.ftag.startTag("resetfont")
  }
}, tyrano.plugin.kag.tag.ct = {
  start: function () {
    this.kag.ftag.hideNextImg(), this.kag.layer.clearMessageInnerLayerAll(), this.kag.layer.getFreeLayer().html("").hide(), this.kag.stat.current_layer = "message0", this.kag.stat.current_page = "fore", this.kag.ftag.startTag("resetfont")
  }
}, tyrano.plugin.kag.tag.current = {
  pm: {
    layer: "",
    page: "fore"
  },
  start: function (t) {
    "" == t.layer && (t.layer = this.kag.stat.current_layer), this.kag.stat.current_layer = t.layer, this.kag.stat.current_page = t.page, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.position = {
  pm: {
    layer: "message0",
    page: "fore",
    left: "",
    top: "",
    width: "",
    height: "",
    color: "",
    opacity: "",
    vertical: "",
    frame: "",
    radius: "",
    marginl: "0",
    margint: "0",
    marginr: "0",
    marginb: "0"
  },
  start: function (t) {
    var a = this.kag.layer.getLayer(t.layer, t.page).find(".message_outer"),
      e = {};
    if ("" != t.left && (e.left = t.left + "px"), "" != t.top && (e.top = t.top + "px"), "" != t.width && (e.width = t.width + "px"), "" != t.height && (e.height = t.height + "px"), "" != t.color && (e["background-color"] = $.convertColor(t.color)), "" != t.radius && a.css("border-radius", parseInt(t.radius) + "px"), "none" == t.frame) a.css("opacity", $.convertOpacity(this.kag.config.frameOpacity)), a.css("background-image", ""), a.css("background-color", $.convertColor(this.kag.config.frameColor));
    else if ("" != t.frame) {
      var s = "";
      s = $.isHTTP(t.frame) ? t.frame : "./data/image/" + t.frame, a.css("background-image", "url(" + s + ")"), a.css("background-repeat", "no-repeat"), a.css("opacity", 1), a.css("background-color", "")
    }
    "" != t.opacity && a.css("opacity", $.convertOpacity(t.opacity)), this.kag.setStyles(a, e), this.kag.layer.refMessageLayer(t.layer);
    var r = this.kag.layer.getLayer(t.layer, t.page).find(".message_inner");
    "" != t.vertical && ("true" == t.vertical ? (this.kag.stat.vertical = "true", r.find("p").addClass("vertical_text")) : (this.kag.stat.vertical = "false", r.find("p").removeClass("vertical_text")));
    var i = {};
    "0" != t.marginl && (i["padding-left"] = parseInt(t.marginl) + "px"), "0" != t.margint && (i["padding-top"] = parseInt(t.margint) + "px"), "0" != t.marginr && (i.width = parseInt(r.css("width")) - parseInt(t.marginr) - parseInt(t.marginl) + "px"), "0" != t.marginb && (i.height = parseInt(r.css("height")) - parseInt(t.marginb) - parseInt(t.margint) + "px"), this.kag.setStyles(r, i), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.image = {
  pm: {
    layer: "base",
    page: "fore",
    visible: "",
    top: "",
    left: "",
    x: "",
    y: "",
    width: "",
    height: "",
    pos: "",
    name: "",
    folder: "",
    time: "",
    wait: "true",
    depth: "front",
    reflect: "",
    zindex: "1"
  },
  start: function (t) {
    var a = "",
      e = "",
      s = this;
    if ("base" != t.layer) {
      var r = {};
      if ("true" == t.visible && "fore" == t.page && (r.display = "block"), this.kag.setStyles(this.kag.layer.getLayer(t.layer, t.page), r), "" != t.pos) switch (t.pos) {
      case "left":
      case "l":
        t.left = this.kag.config["scPositionX.left"];
        break;
      case "left_center":
      case "lc":
        t.left = this.kag.config["scPositionX.left_center"];
        break;
      case "center":
      case "c":
        t.left = this.kag.config["scPositionX.center"];
        break;
      case "right_center":
      case "rc":
        t.left = this.kag.config["scPositionX.right_center"];
        break;
      case "right":
      case "r":
        t.left = this.kag.config["scPositionX.right"]
      }
      e = "" != t.folder ? t.folder : "fgimage", a = $.isHTTP(t.storage) ? t.storage : "./data/" + e + "/" + t.storage;
      var i = $("<img />");
      i.attr("src", a), i.css("position", "absolute"), i.css("top", t.top + "px"), i.css("left", t.left + "px"), "" != t.width && i.css("width", t.width + "px"), "" != t.height && i.css("height", t.height + "px"), "" != t.x && i.css("left", t.x + "px"), "" != t.y && i.css("top", t.y + "px"), "" != t.zindex && i.css("z-index", t.zindex), "" != t.reflect && "true" == t.reflect && i.addClass("reflect"), $.setName(i, t.name), 0 != t.time && "0" != t.time || (t.time = ""), "" != t.time ? (i.css("opacity", 0), "back" == t.depth ? this.kag.layer.getLayer(t.layer, t.page).prepend(i) : this.kag.layer.getLayer(t.layer, t.page).append(i), i.animate({
        opacity: 1
      }, parseInt(t.time), function () {
        "true" == t.wait && s.kag.ftag.nextOrder()
      }), "true" != t.wait && s.kag.ftag.nextOrder()) : ("back" == t.depth ? this.kag.layer.getLayer(t.layer, t.page).prepend(i) : this.kag.layer.getLayer(t.layer, t.page).append(i), this.kag.ftag.nextOrder())
    } else {
      e = "" != t.folder ? t.folder : "bgimage";
      var n = {
        "background-image": "url(" + (a = $.isHTTP(t.storage) ? t.storage : "./data/" + e + "/" + t.storage) + ")",
        display: "none"
      };
      "fore" === t.page && (n.display = "block"), this.kag.setStyles(this.kag.layer.getLayer(t.layer, t.page), n), this.kag.ftag.nextOrder()
    }
  }
}, tyrano.plugin.kag.tag.freeimage = {
  vital: ["layer"],
  pm: {
    layer: "",
    page: "fore",
    time: "",
    wait: "true"
  },
  start: function (t) {
    var a = this;
    if ("base" != t.layer)
      if (0 == t.time && (t.time = ""), "" != t.time) {
        var e = this.kag.layer.getLayer(t.layer, t.page).children();
        if (!e.get(0) && "true" == t.wait) return void a.kag.ftag.nextOrder();
        var s = 0,
          r = e.length;
        e.animate({
          opacity: 0
        }, parseInt(t.time), function () {
          a.kag.layer.getLayer(t.layer, t.page).empty(), r == ++s && "true" == t.wait && a.kag.ftag.nextOrder()
        })
      } else a.kag.layer.getLayer(t.layer, t.page).empty(), a.kag.ftag.nextOrder();
    else this.kag.layer.getLayer(t.layer, t.page).css("background-image", ""), this.kag.ftag.nextOrder();
    "false" == t.wait && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.freelayer = tyrano.plugin.kag.tag.freeimage, tyrano.plugin.kag.tag.free = {
  vital: ["layer", "name"],
  pm: {
    layer: "",
    page: "fore",
    name: "",
    wait: "true",
    time: ""
  },
  start: function (t) {
    var a = this;
    if ("base" != t.layer)
      if (0 == t.time && (t.time = ""), "" != t.time) {
        if (!(r = (r = this.kag.layer.getLayer(t.layer, t.page)).find("." + t.name)).get(0) && "true" == t.wait) return void a.kag.ftag.nextOrder();
        var e = 0,
          s = r.length;
        r.animate({
          opacity: 0
        }, parseInt(t.time), function () {
          r.remove(), ++e == s && "true" == t.wait && a.kag.ftag.nextOrder()
        }), "false" == t.wait && a.kag.ftag.nextOrder()
      } else {
        var r;
        (r = (r = this.kag.layer.getLayer(t.layer, t.page)).find("." + t.name)).remove(), a.kag.ftag.nextOrder()
      }
    else(r = (r = this.kag.layer.getLayer(t.layer, t.page)).find("." + t.name)).remove(), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.ptext = {
  vital: ["layer", "x", "y"],
  pm: {
    layer: "0",
    page: "fore",
    x: 0,
    y: 0,
    vertical: "false",
    text: "",
    size: "",
    face: "",
    color: "",
    italic: "",
    bold: "",
    align: "left",
    edge: "",
    shadow: "",
    name: "",
    time: "",
    width: "",
    zindex: "9999",
    overwrite: "false"
  },
  start: function (t) {
    var a = this;
    "" == t.face && (t.face = a.kag.stat.font.face), "" == t.color ? t.color = $.convertColor(a.kag.stat.font.color) : t.color = $.convertColor(t.color);
    var e = {
      color: t.color,
      "font-weight": t.bold,
      "font-style": t.fontstyle,
      "font-size": t.size + "px",
      "font-family": t.face,
      "z-index": "999",
      text: ""
    };
    if ("" != t.edge) {
      var s = $.convertColor(t.edge);
      e["text-shadow"] = "1px 1px 0 " + s + ", -1px 1px 0 " + s + ",1px -1px 0 " + s + ",-1px -1px 0 " + s
    } else "" != t.shadow && (e["text-shadow"] = "2px 2px 2px " + $.convertColor(t.shadow));
    var r = this.kag.layer.getLayer(t.layer, t.page);
    if ("true" == t.overwrite && "" != t.name && $("." + t.name).length > 0) return $("." + t.name).html($.escapeHTML(t.text)), 0 != t.x && $("." + t.name).css("left", parseInt(t.x)), 0 != t.y && $("." + t.name).css("top", parseInt(t.y)), "" != t.color && $("." + t.name).css("color", $.convertColor(t.color)), "" != t.size && $("." + t.name).css("font-size", parseInt(t.size)), this.kag.ftag.nextOrder(), !1;
    var i = $("<p></p>");
    i.css("position", "absolute"), i.css("top", t.y + "px"), i.css("left", t.x + "px"), i.css("width", t.width), i.css("text-align", t.align), "true" == t.vertical && i.addClass("vertical_text"), $.setName(i, t.name), i.html($.escapeHTML(t.text)), this.kag.setStyles(i, e), "fix" == t.layer && i.addClass("fixlayer"), "" != t.time ? (i.css("opacity", 0), r.append(i), i.animate({
      opacity: 1
    }, parseInt(t.time), function () {
      a.kag.ftag.nextOrder()
    })) : (r.append(i), this.kag.ftag.nextOrder())
  }
}, tyrano.plugin.kag.tag.mtext = {
  vital: ["x", "y"],
  pm: {
    layer: "0",
    page: "fore",
    x: 0,
    y: 0,
    vertical: "false",
    text: "",
    size: "",
    face: "",
    color: "",
    italic: "",
    bold: "",
    shadow: "",
    edge: "",
    name: "",
    zindex: "9999",
    width: "",
    align: "left",
    fadeout: "true",
    time: "2000",
    in_effect: "fadeIn",
    in_delay: "50",
    in_delay_scale: "1.5",
    in_sync: "false",
    in_shuffle: "false",
    in_reverse: "false",
    wait: "true",
    out_effect: "fadeOut",
    out_delay: "50",
    out_scale_delay: "",
    out_sync: "false",
    out_shuffle: "false",
    out_reverse: "false"
  },
  start: function (t) {
    var a = this;
    "" == t.face && (t.face = a.kag.stat.font.face), "" == t.color ? t.color = $.convertColor(a.kag.stat.font.color) : t.color = $.convertColor(t.color);
    var e = {
      color: t.color,
      "font-weight": t.bold,
      "font-style": t.fontstyle,
      "font-size": t.size + "px",
      "font-family": t.face,
      "z-index": "999",
      text: ""
    };
    if ("" != t.edge) {
      var s = $.convertColor(t.edge);
      e["text-shadow"] = "1px 1px 0 " + s + ", -1px 1px 0 " + s + ",1px -1px 0 " + s + ",-1px -1px 0 " + s
    } else "" != t.shadow && (e["text-shadow"] = "2px 2px 2px " + $.convertColor(t.shadow));
    var r = this.kag.layer.getLayer(t.layer, t.page),
      i = $("<p></p>");
    for (key in i.css("position", "absolute"), i.css("top", t.y + "px"), i.css("left", t.x + "px"), i.css("width", t.width), i.css("text-align", t.align), "true" == t.vertical && i.addClass("vertical_text"), $.setName(i, t.name), i.html(t.text), this.kag.setStyles(i, e), "fix" == t.layer && i.addClass("fixlayer"), r.append(i), t) "true" == t[key] ? t[key] = !0 : "false" == t[key] && (t[key] = !1);
    i.textillate({
      loop: t.fadeout,
      minDisplayTime: t.time,
      in : {
        effect: t.in_effect,
        delayScale: t.in_delay_scale,
        delay: t.in_delay,
        sync: t.in_sync,
        shuffle: t.in_shuffle,
        reverse: t.in_reverse,
        callback: function () {
          0 == t.fadeout && 1 == t.wait && a.kag.ftag.nextOrder()
        }
      },
      out: {
        effect: t.out_effect,
        delayScale: t.out_delay_scale,
        delay: t.out_delay,
        sync: t.out_sync,
        shuffle: t.out_shuffle,
        reverse: t.out_reverse,
        callback: function () {
          i.remove(), 1 == t.wait && a.kag.ftag.nextOrder()
        }
      }
    }), 1 != t.wait && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.backlay = {
  pm: {
    layer: ""
  },
  start: function (t) {
    this.kag.layer.backlay(t.layer), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.wt = {
  start: function (t) {
    0 == this.kag.stat.is_trans ? (this.kag.layer.showEventLayer(), this.kag.ftag.nextOrder()) : this.kag.layer.hideEventLayer()
  }
}, tyrano.plugin.kag.tag.wb = {
  start: function (t) {
    this.kag.layer.hideEventLayer()
  }
}, tyrano.plugin.kag.tag.link = {
  pm: {
    target: null,
    storage: null
  },
  start: function (t) {
    var a = this,
      e = this.kag.setMessageCurrentSpan();
    e.css("cursor", "pointer"),
      function () {
        t.target, t.storage;
        a.kag.event.addEventElement({
          tag: "link",
          j_target: e,
          pm: t
        }), a.setEvent(e, t)
      }(), this.kag.ftag.nextOrder()
  },
  setEvent: function (t, a) {
    var e = a.target,
      s = a.storage,
      r = TYRANO;
    t.bind("click touchstart", function (t) {
      TYRANO.kag.ftag.nextOrderWithLabel(e, s), TYRANO.kag.layer.showEventLayer(), "true" == r.kag.stat.skip_link ? t.stopPropagation() : r.kag.stat.is_skip = !1
    }), t.css("cursor", "pointer")
  }
}, tyrano.plugin.kag.tag.endlink = {
  start: function (t) {
    this.kag.setMessageCurrentSpan();
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.s = {
  start: function () {
    this.kag.stat.is_strong_stop = !0, this.kag.layer.hideEventLayer()
  }
}, tyrano.plugin.kag.tag._s = {
  vital: [],
  pm: {},
  start: function (t) {
    this.kag.stat.strong_stop_recover_index = this.kag.ftag.current_order_index, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.wait = {
  vital: ["time"],
  pm: {
    time: 0
  },
  start: function (t) {
    var a = this;
    this.kag.stat.is_strong_stop = !0, this.kag.stat.is_wait = !0, this.kag.layer.hideEventLayer(), a.kag.tmp.wait_id = setTimeout(function () {
      a.kag.stat.is_strong_stop = !1, a.kag.stat.is_wait = !1, a.kag.layer.showEventLayer(), a.kag.ftag.nextOrder()
    }, t.time)
  }
}, tyrano.plugin.kag.tag.wait_cancel = {
  vital: [],
  pm: {},
  start: function (t) {
    clearTimeout(this.kag.tmp.wait_id), this.kag.tmp.wait_id = "", this.kag.stat.is_strong_stop = !1, this.kag.stat.is_wait = !1, this.kag.layer.showEventLayer(), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.hidemessage = {
  start: function () {
    this.kag.stat.is_hide_message = !0, this.kag.layer.hideMessageLayers(), this.kag.layer.layer_event.show()
  }
}, tyrano.plugin.kag.tag.quake = {
  vital: ["time"],
  pm: {
    count: 5,
    time: 300,
    timemode: "",
    hmax: "0",
    vmax: "10",
    wait: "true"
  },
  start: function (t) {
    var a = this;
    "0" != t.hmax ? $("." + this.kag.define.BASE_DIV_NAME).effect("shake", {
      times: parseInt(t.count),
      distance: parseInt(t.hmax),
      direction: "left"
    }, parseInt(t.time), function () {
      "true" == t.wait && a.kag.ftag.nextOrder()
    }) : "0" != t.vmax && $("." + this.kag.define.BASE_DIV_NAME).effect("shake", {
      times: parseInt(t.count),
      distance: parseInt(t.vmax),
      direction: "up"
    }, parseInt(t.time), function () {
      "true" == t.wait && a.kag.ftag.nextOrder()
    }), "false" == t.wait && a.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.font = {
  pm: {},
  log_join: "true",
  start: function (t) {
    this.kag.setMessageCurrentSpan(), t.size && (this.kag.stat.font.size = t.size), t.color && (this.kag.stat.font.color = $.convertColor(t.color)), t.bold && (this.kag.stat.font.bold = $.convertBold(t.bold)), t.face && (this.kag.stat.font.face = t.face), t.italic && (this.kag.stat.font.italic = $.convertItalic(t.italic)), t.edge && ("none" == t.edge || "" == t.edge ? this.kag.stat.font.edge = "" : this.kag.stat.font.edge = $.convertColor(t.edge)), t.shadow && ("none" == t.shadow || "" == t.shadow ? this.kag.stat.font.shadow = "" : this.kag.stat.font.shadow = $.convertColor(t.shadow)), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.deffont = {
  pm: {},
  start: function (t) {
    t.size && (this.kag.stat.default_font.size = t.size), t.color && (this.kag.stat.default_font.color = $.convertColor(t.color)), t.bold && (this.kag.stat.default_font.bold = $.convertBold(t.bold)), t.face && (this.kag.stat.default_font.face = t.face), t.italic && (this.kag.stat.default_font.italic = $.convertItalic(t.italic)), t.edge && ("none" == t.edge || "" == t.edge ? this.kag.stat.default_font.edge = "" : this.kag.stat.default_font.edge = $.convertColor(t.edge)), t.shadow && ("none" == t.shadow || "" == t.shadow ? this.kag.stat.default_font.shadow = "" : this.kag.stat.default_font.shadow = $.convertColor(t.shadow)), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.delay = {
  pm: {
    speed: ""
  },
  log_join: "true",
  start: function (t) {
    "" != t.speed && (this.kag.stat.ch_speed = parseInt(t.speed)), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.resetdelay = {
  pm: {
    speed: ""
  },
  log_join: "true",
  start: function (t) {
    this.kag.stat.ch_speed = "", this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.configdelay = {
  pm: {
    speed: ""
  },
  start: function (t) {
    "" != t.speed ? (this.kag.stat.ch_speed = "", this.kag.config.chSpeed = t.speed, this.kag.ftag.startTag("eval", {
      exp: "sf._config_ch_speed = " + t.speed
    })) : this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.nowait = {
  pm: {},
  start: function (t) {
    this.kag.stat.is_nowait = !0, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.endnowait = {
  pm: {},
  start: function (t) {
    this.kag.stat.is_nowait = !1, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.resetfont = {
  log_join: "true",
  start: function () {
    this.kag.setMessageCurrentSpan();
    this.kag.stat.font = $.extend(!0, {}, this.kag.stat.default_font), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.layopt = {
  vital: ["layer"],
  pm: {
    layer: "",
    page: "fore",
    visible: "",
    left: "",
    top: "",
    opacity: "",
    autohide: !1,
    index: 10
  },
  start: function (t) {
    "message" == t.layer && (t.layer = this.kag.stat.current_layer, t.page = this.kag.stat.current_page);
    var a = this.kag.layer.getLayer(t.layer, t.page);
    "fix" != t.layer && "fixlayer" != t.layer || (a = $("#tyrano_base").find(".fixlayer")), "" != t.visible && ("true" == t.visible ? ("fore" == t.page && a.css("display", ""), a.attr("l_visible", "true")) : (a.css("display", "none"), a.attr("l_visible", "false"))), "" != t.left && a.css("left", parseInt(t.left)), "" != t.top && a.css("top", parseInt(t.top)), "" != t.opacity && a.css("opacity", $.convertOpacity(t.opacity)), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.ruby = {
  vital: ["text"],
  pm: {
    text: ""
  },
  log_join: "true",
  start: function (t) {
    var a = t.text;
    this.kag.stat.ruby_str = a, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.cancelskip = {
  start: function (t) {
    this.kag.stat.is_skip = !1, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.locate = {
  pm: {
    x: null,
    y: null
  },
  start: function (t) {
    null != t.x && (this.kag.stat.locate.x = t.x), null != t.y && (this.kag.stat.locate.y = t.y), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.button = {
  pm: {
    graphic: "",
    storage: null,
    target: null,
    ext: "",
    name: "",
    x: "",
    y: "",
    width: "",
    height: "",
    fix: "false",
    savesnap: "false",
    folder: "image",
    exp: "",
    prevar: "",
    visible: "true",
    hint: "",
    clickse: "",
    enterse: "",
    leavese: "",
    clickimg: "",
    enterimg: "",
    auto_next: "yes",
    role: ""
  },
  start: function (t) {
    var a = null;
    "" != t.role && (t.fix = "true"), "false" == t.fix ? (a = this.kag.layer.getFreeLayer()).css("z-index", 999999) : a = this.kag.layer.getLayer("fix");
    var e = "";
    e = $.isHTTP(t.graphic) ? t.graphic : "./data/" + t.folder + "/" + t.graphic;
    var s = $("<img />");
    s.attr("src", e), s.css("position", "absolute"), s.css("cursor", "pointer"), s.css("z-index", 99999999), "true" == t.visible ? s.show() : s.hide(), "" == t.x ? s.css("left", this.kag.stat.locate.x + "px") : s.css("left", t.x + "px"), "" == t.y ? s.css("top", this.kag.stat.locate.y + "px") : s.css("top", t.y + "px"), "false" != t.fix && s.addClass("fixlayer"), "" != t.width && s.css("width", t.width + "px"), "" != t.height && s.css("height", t.height + "px"), "" != t.hint && s.attr({
      title: t.hint,
      alt: t.hint
    }), $.setName(s, t.name), this.kag.event.addEventElement({
      tag: "button",
      j_target: s,
      pm: t
    }), this.setEvent(s, t), a.append(s), "false" == t.fix && a.show(), this.kag.ftag.nextOrder()
  },
  setEvent: function (t, a) {
    var e, s, r, i, n, g = TYRANO;
    e = a.target, s = a.storage, r = a, i = g.kag.embScript(a.preexp), n = !1, t.hover(function () {
      if ("" != r.enterse && g.kag.ftag.startTag("playse", {
          storage: r.enterse,
          stop: !0
        }), "" != r.enterimg) {
        var t = "";
        t = $.isHTTP(r.enterimg) ? r.enterimg : "./data/" + r.folder + "/" + r.enterimg, $(this).attr("src", t)
      }
    }, function () {
      if ("" != r.leavese && g.kag.ftag.startTag("playse", {
          storage: r.leavese,
          stop: !0
        }), "" != r.enterimg) {
        var t = "";
        t = $.isHTTP(r.graphic) ? r.graphic : "./data/" + r.folder + "/" + r.graphic, $(this).attr("src", t)
      }
    }), t.click(function (a) {
      if ("" != r.clickimg) {
        var o = "";
        o = $.isHTTP(r.clickimg) ? r.clickimg : "./data/" + r.folder + "/" + r.clickimg, t.attr("src", o)
      }
      if (1 == n && "false" == r.fix) return !1;
      if (1 != g.kag.stat.is_strong_stop && "false" == r.fix) return !1;
      if (n = !0, "" != r.exp && g.kag.embScript(r.exp, i), "true" == r.savesnap) {
        if (1 == g.kag.stat.is_stop) return !1;
        g.kag.menu.snapSave(g.kag.stat.current_save_str)
      }
      if ("none" == g.kag.layer.layer_event.css("display") && 1 != g.kag.stat.is_strong_stop) return !1;
      if ("" != r.role) {
        if (g.kag.stat.is_skip = !1, "auto" != r.role && g.kag.ftag.startTag("autostop", {
            next: "false"
          }), !("save" != r.role && "menu" != r.role && "quicksave" != r.role && "sleepgame" != r.role || 1 != g.kag.stat.is_adding_text && 1 != g.kag.stat.is_wait)) return !1;
        switch (r.role) {
        case "lock":
          var off = $('.role_button').offset();
          $('.role_button').offset(function(index, coords) {
   			return {left: coords.left + 1000};
  		  });
  		  $('.role_button2').css({'opacity':'1','pointer-events':'auto'});
          break;
        case "unlock":
          var off = $('.role_button').offset();
          $('.role_button').offset(function(index, coords) {
   			return {left: coords.left - 1000};
  		  });
  		  $('.role_button2').css({'opacity':'0','pointer-events':'none'});
          break;
        case "save":
          g.kag.menu.displaySave();
          break;
        case "load":
          g.kag.menu.displayLoad();
          break;
        case "config":
          g.kag.menu.displayConfig();
          break;
        case "window":
          g.kag.layer.hideMessageLayers();
          break;
        case "title":
          g.kag.backTitle();
          break;
        case "menu":
          g.kag.menu.showMenu();
          break;
        case "skip":
          g.kag.ftag.startTag("skipstart", {});
          break;
        case "backlog":
          g.kag.menu.displayLog();
          break;
        case "fullscreen":
          g.kag.menu.screenFull();
          break;
        case "quicksave":
          g.kag.menu.setQuickSave();
          break;
        case "quickload":
          g.kag.menu.loadQuickSave();
          break;
        case "auto":
          1 == g.kag.stat.is_auto ? g.kag.ftag.startTag("autostop", {
            next: "false"
          }) : g.kag.ftag.startTag("autostart", {});
          break;
        case "sleepgame":
          if (t.trigger("mouseout"), null != g.kag.tmp.sleep_game) return !1;
          g.kag.tmp.sleep_game = {}, r.next = !1, g.kag.ftag.startTag("sleepgame", r)
        }
        return "" != r.clickse && g.kag.ftag.startTag("playse", {
          storage: r.clickse,
          stop: !0
        }), a.stopPropagation(), !1
      }
      if ("" != r.clickse && g.kag.ftag.startTag("playse", {
          storage: r.clickse,
          stop: !0
        }), g.kag.layer.showEventLayer(), "" == r.role && "true" == r.fix) {
        var l = g.kag.getStack("call");
        if (null != l) return g.kag.log("callスタックが残っている場合、fixボタンは反応しません"), g.kag.log(l), !1;
        var c = r.auto_next;
        1 == g.kag.stat.is_strong_stop && (c = "stop"), g.kag.ftag.startTag("call", {
          storage: s,
          target: e,
          auto_next: c
        })
      } else g.kag.ftag.startTag("jump", r);
      "true" == g.kag.stat.skip_link ? a.stopPropagation() : g.kag.stat.is_skip = !1
    })
  }
}, tyrano.plugin.kag.tag.glink = {
  pm: {
    color: "black",
    font_color: "",
    storage: null,
    target: null,
    name: "",
    text: "",
    x: "auto",
    y: "",
    width: "",
    height: "",
    size: 30,
    graphic: "",
    enterimg: "",
    clickse: "",
    enterse: "",
    leavese: "",
    face: ""
  },
  start: function (t) {
    var a = null;
    (a = this.kag.layer.getFreeLayer()).css("z-index", 999999);
    var e = $("<div class='glink_button'>" + t.text + "</div>");
    if (e.css("position", "absolute"), e.css("cursor", "pointer"), e.css("z-index", 99999999), e.css("font-size", t.size + "px"), "" != t.font_color && e.css("color", $.convertColor(t.font_color)), "" != t.height && e.css("height", t.height + "px"), "" != t.width && e.css("width", t.width + "px"), "" != t.graphic) {
      e.removeClass("glink_button").addClass("button_graphic");
      var s = "./data/image/" + t.graphic;
      e.css("background-image", "url(" + s + ")"), e.css("background-repeat", "no-repeat"), e.css("background-position", "center center"), e.css("background-size", "100% 100%")
    } else e.addClass(t.color);
    if ("" != t.face ? e.css("font-family", t.face) : "" != this.kag.stat.font.face && e.css("font-family", this.kag.stat.font.face), "auto" == t.x) {
      var r = parseInt(this.kag.config.scWidth),
        i = Math.floor(parseInt(e.css("width")) / 2),
        n = Math.floor(r / 2) - i;
      e.css("left", n + "px")
    } else "" == t.x ? e.css("left", this.kag.stat.locate.x + "px") : e.css("left", t.x + "px");
    "" == t.y ? e.css("top", this.kag.stat.locate.y + "px") : e.css("top", t.y + "px"), $.setName(e, t.name), this.kag.event.addEventElement({
      tag: "glink",
      j_target: e,
      pm: t
    }), this.setEvent(e, t), a.append(e), a.show(), this.kag.ftag.nextOrder()
  },
  setEvent: function (t, a) {
    var e = TYRANO;
    ! function () {
      a.target, a.storage;
      var s = a,
        r = e.kag.embScript(a.preexp);
      t.click(function (t) {
        if ("" != s.clickse && e.kag.ftag.startTag("playse", {
            storage: s.clickse,
            stop: !0
          }), 1 != e.kag.stat.is_strong_stop) return !1;
        !0, "" != s.exp && e.kag.embScript(s.exp, r), e.kag.layer.showEventLayer(), e.kag.ftag.startTag("cm", {}), e.kag.ftag.startTag("jump", s), "true" == e.kag.stat.skip_link ? t.stopPropagation() : e.kag.stat.is_skip = !1
      }), t.hover(function () {
        if ("" != s.enterimg) {
          var a = "./data/image/" + s.enterimg;
          t.css("background-image", "url(" + a + ")")
        }
        "" != s.enterse && e.kag.ftag.startTag("playse", {
          storage: s.enterse,
          stop: !0
        })
      }, function () {
        if ("" != s.enterimg) {
          var a = "./data/image/" + s.graphic;
          t.css("background-image", "url(" + a + ")")
        }
        "" != s.leavese && e.kag.ftag.startTag("playse", {
          storage: s.leavese,
          stop: !0
        })
      })
    }()
  }
}, tyrano.plugin.kag.tag.clickable = {
  vital: ["width", "height"],
  pm: {
    width: "0",
    height: "0",
    x: "",
    y: "",
    border: "none",
    color: "",
    mouseopacity: "",
    opacity: "140",
    storage: null,
    target: null,
    name: ""
  },
  start: function (t) {
    var a = this.kag.layer.getFreeLayer();
    a.css("z-index", 9999999);
    var e = $("<div />");
    e.css("position", "absolute"), e.css("cursor", "pointer"), e.css("top", this.kag.stat.locate.y + "px"), e.css("left", this.kag.stat.locate.x + "px"), e.css("width", t.width + "px"), e.css("height", t.height + "px"), e.css("opacity", $.convertOpacity(t.opacity)), e.css("background-color", $.convertColor(t.color)), e.css("border", $.replaceAll(t.border, ":", " ")), "" != t.x && e.css("left", parseInt(t.x)), "" != t.y && e.css("top", parseInt(t.y)), this.kag.event.addEventElement({
      tag: "clickable",
      j_target: e,
      pm: t
    }), this.setEvent(e, t), a.append(e), a.show(), this.kag.ftag.nextOrder()
  },
  setEvent: function (t, a) {
    var e = TYRANO;
    ! function () {
      a.target, a.storage;
      var s = a;
      "" != s.mouseopacity && (t.bind("mouseover", function () {
        t.css("opacity", $.convertOpacity(s.mouseopacity))
      }), t.bind("mouseout", function () {
        t.css("opacity", $.convertOpacity(s.opacity))
      })), t.click(function () {
        if (0 == (1 == e.kag.stat.is_strong_stop)) return !1;
        e.kag.ftag.startTag("cm", {}), e.kag.layer.showEventLayer(), e.kag.ftag.startTag("jump", s)
      })
    }()
  }
}, tyrano.plugin.kag.tag.glyph = {
  pm: {
    line:  "click.png",
    layer: "message0",
    fix: "false",
    left: 0,
    top: 0
  },
  start: function (pm) {
    $(".glyph_image").remove();
    if ("true" == pm.fix) {
      var j_layer = this.kag.layer.getLayer(pm.layer),
        j_next = $("<img class='glyph_image' />");
      j_next.attr("src", "./tyrano/images/system/" + pm.line);
      j_next.css("position", "absolute");
      j_next.css("z-index", 99999);
      j_next.css("top", pm.top + "px");
      j_next.css("left", pm.left + "px");
      j_next.css("display", "none");
      j_layer.append(j_next);
      this.kag.stat.flag_glyph = "true"
    } else this.kag.stat.flag_glyph = "false";
    this.kag.ftag.nextOrder()
  }
};tyrano.plugin.kag.tag.trans = {
  vital: ["time", "layer"],
  pm: {
    layer: "base",
    method: "fadeIn",
    children: !1,
    time: 1500
  },
  start: function (t) {
    this.kag.ftag.hideNextImg(), this.kag.stat.is_trans = !0;
    var a = this;
    $.countObj(this.kag.layer.map_layer_fore);
    t.children;
    var e = $.cloneObject(this.kag.layer.map_layer_fore),
      s = $.cloneObject(this.kag.layer.map_layer_back);
    for (key in e) 1 != t.children && key !== t.layer || function () {
      var r = key,
        i = (e[r], s[r]); - 1 != r.indexOf("message") && "false" == i.attr("l_visible") ? (0, a.kag.layer.forelay(r)) : $.trans(t.method, i, parseInt(t.time), "show", function () {
        0,
        a.kag.layer.forelay(r),
        a.kag.ftag.completeTrans(),
        a.kag.ftag.hideNextImg()
      })
    }();
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.bg = {
  vital: ["storage"],
  pm: {
    storage: "",
    method: "crossfade",
    wait: "true",
    time: 3e3,
    cross: "false"
  },
  start: function (t) {
    this.kag.ftag.hideNextImg();
    var a = this;
    0 == t.time && (t.wait = "false");
    var e = "./data/bgimage/" + t.storage;
    $.isHTTP(t.storage) && (e = t.storage), this.kag.preload(e, function () {
      var s = a.kag.layer.getLayer("base", "fore"),
        r = s.clone(!1);
      r.css("background-image", "url(" + e + ")"), r.css("display", "none"), s.after(r), a.kag.ftag.hideNextImg(), a.kag.layer.updateLayer("base", "fore", r), "true" == t.wait && a.kag.layer.hideEventLayer(), t.time = a.kag.cutTimeWithSkip(t.time), "true" == t.cross && $.trans(t.method, s, parseInt(t.time), "hide", function () {
        s.remove()
      }), $.trans(t.method, r, parseInt(t.time), "show", function () {
        r.css("opacity", 1), "false" == t.cross && s.remove(), "true" == t.wait && (a.kag.layer.showEventLayer(), a.kag.ftag.nextOrder())
      })
    }), "false" == t.wait && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.bg2 = {
  vital: ["storage"],
  pm: {
    name: "",
    storage: "",
    method: "crossfade",
    wait: "true",
    time: 3e3,
    width: "",
    height: "",
    left: "",
    top: "",
    cross: "false"
  },
  start: function (t) {
    this.kag.ftag.hideNextImg();
    var a = this;
    0 == t.time && (t.wait = "false");
    var e = "./data/bgimage/" + t.storage;
    $.isHTTP(t.storage) && (e = t.storage), this.kag.preload(e, function () {
      var s = a.kag.layer.getLayer("base", "fore"),
        r = s.clone(!1),
        i = $("<img />");
      i.css("position", "absolute");
      var n = parseInt(a.kag.config.scWidth),
        g = parseInt(a.kag.config.scHeight),
        o = 0,
        l = 0;
      "" != t.width && (n = parseInt(t.width)), "" != t.height && (g = parseInt(t.height)), "" != t.left && (o = parseInt(t.left)), "" != t.top && (l = parseInt(t.top)), i.css({
        width: n,
        height: g,
        left: o,
        top: l
      }), i.attr("src", e), $.setName(r, t.name), r.find("img").remove(), r.append(i), r.css("display", "none"), s.after(r), a.kag.ftag.hideNextImg(), a.kag.layer.updateLayer("base", "fore", r), "true" == t.wait && a.kag.layer.hideEventLayer(), t.time = a.kag.cutTimeWithSkip(t.time), "true" == t.cross && $.trans(t.method, s, parseInt(t.time), "hide", function () {
        s.remove()
      }), $.trans(t.method, r, parseInt(t.time), "show", function () {
        r.css("opacity", 1), "false" == t.cross && s.remove(), "true" == t.wait && (a.kag.layer.showEventLayer(), a.kag.ftag.nextOrder())
      })
    }), "false" == t.wait && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.layermode = {
  vital: [],
  pm: {
    name: "",
    graphic: "",
    color: "",
    mode: "multiply",
    folder: "",
    opacity: "",
    time: "500",
    wait: "true"
  },
  start: function (t) {
    this.kag.ftag.hideNextImg();
    var a = this,
      e = null;
    e = $("<div class='layer_blend_mode blendlayer' style='display:none;position:absolute;width:100%;height:100%;z-index:99'></div>"), "" != t.name && e.addClass("layer_blend_" + t.name), "" != t.color && e.css("background-color", $.convertColor(t.color)), "" != t.opacity && e.css("opacity", $.convertOpacity(t.opacity)), "" != t.folder ? folder = t.folder : folder = "image";
    var s = "";
    "" != t.graphic && (s = "./data/" + folder + "/" + t.graphic, e.css("background-image", "url(" + s + ")")), e.css("mix-blend-mode", t.mode), $("#tyrano_base").append(e), "" != t.graphic ? this.kag.preload(s, function () {
      e.fadeIn(parseInt(t.time), function () {
        "true" == t.wait && a.kag.ftag.nextOrder()
      })
    }) : e.fadeIn(parseInt(t.time), function () {
      "true" == t.wait && a.kag.ftag.nextOrder()
    }), "false" == t.wait && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.layermode_movie = {
  vital: ["video"],
  pm: {
    name: "",
    mode: "multiply",
    opacity: "",
    time: "500",
    wait: "false",
    video: "",
    volume: "",
    loop: "true",
    mute: "false",
    speed: "",
    fit: "true",
    width: "",
    height: "",
    top: "",
    left: "",
    stop: "false"
  },
  start: function (t) {
    this.kag.ftag.hideNextImg();
    var a = this,
      e = null,
      s = (e = $("<video class='layer_blend_mode blendlayer blendvideo' data-video-name='" + t.name + "' data-video-pm='' style='display:none;position:absolute;width:100%;height:100%;z-index:99' ></video>")).get(0),
      r = "./data/video/" + t.video;
    s.src = r, "" != t.volume ? s.volume = parseFloat(parseInt(t.volume) / 100) : s.volume = 0, "" != t.speed && (s.defaultPlaybackRate = parseFloat(t.speed)), s.style.backgroundColor = "black", s.style.position = "absolute", s.style.top = "0px", s.style.left = "0px", s.style.width = "auto", s.style.height = "auto", "" != t.width && (s.style.width = t.width + "px"), "" != t.height ? s.style.height = t.height + "px" : "false" == t.fit ? s.style.height = "100%" : s.style.height = "", "" != t.left && (s.style.left = t.left + "px"), "" != t.top && (s.style.top = t.top + "px"), s.style.minHeight = "100%", s.style.minWidth = "100%", s.style.backgroundSize = "cover", s.autoplay = !0, s.autobuffer = !0, s.setAttribute("playsinline", "1"), "true" == t.mute && (s.muted = !0), "true" == t.loop ? s.loop = !0 : s.loop = !1;
    var i = $(s);
    s.addEventListener("ended", function (e) {
      "false" == t.loop && i.remove(), "true" == t.wait && a.kag.ftag.nextOrder()
    }), i.attr("data-video-pm", JSON.stringify(t)), i.hide(), s.load(), s.play(), e = i, "" != t.name && e.addClass("layer_blend_" + t.name), "" != t.opacity && e.css("opacity", $.convertOpacity(t.opacity)), e.css("mix-blend-mode", t.mode), $("#tyrano_base").append(e), e.fadeIn(parseInt(t.time), function () {
      "true" == t.wait && "true" == t.loop && "true" != t.stop && a.kag.ftag.nextOrder()
    }), "false" == t.wait && "true" != t.stop && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.free_layermode = {
  vital: [],
  pm: {
    name: "",
    time: "500",
    wait: "true"
  },
  start: function (t) {
    this.kag.ftag.hideNextImg();
    var a = this,
      e = {},
      s = (e = "" != t.name ? $(".layer_blend_" + t.name) : $(".blendlayer")).length,
      r = 0;
    0 != s ? (e.each(function () {
      var e = $(this);
      e.fadeOut(parseInt(t.time), function () {
        e.remove(), r++, "true" == t.wait && s == r && a.kag.ftag.nextOrder()
      })
    }), "false" == t.wait && this.kag.ftag.nextOrder()) : a.kag.ftag.nextOrder()
  }
};