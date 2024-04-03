tyrano.plugin.kag.tag.eval = {
  vital: ["exp"],
  pm: {
    exp: "",
    next: "true"
  },
  start: function (t) {
    this.kag.evalScript(t.exp), "true" == t.next && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.clearvar = {
  pm: {
    exp: ""
  },
  start: function (t) {
    "" == t.exp ? this.kag.clearVariable() : this.kag.evalScript("delete " + t.exp), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.clearsysvar = {
  start: function () {
    this.kag.variable.sf = {}, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.clearstack = {
  pm: {
    stack: ""
  },
  start: function (t) {
    "" == t.stack ? this.kag.stat.stack = {
      if: [],
      call: [],
      macro: []
    } : this.kag.stat.stack[t.stack] = [], this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.close = {
  pm: {
    ask: "true"
  },
  start: function (t) {
    var a = this;
    var message;
    if(TYRANO.kag.variable.sf.trans == 2){
      message = $.lang("exit_game_es");
    } else if(TYRANO.kag.variable.sf.trans == 1){
      message = $.lang("exit_game_en");
    }else{
      message = $.lang("exit_game");
    }
    "true" == t.ask ? $.confirm(message, function () {
      a.close()
    }, function () {
      a.kag.ftag.nextOrder()
    }) : this.close()
  },
  close: function () {
    window.close(), void 0 !== navigator.app && navigator.app.exitApp(), "undefined" != typeof require && void 0 !== require("nw.gui") && require("nw.gui").Window.get().close()
  }
}, tyrano.plugin.kag.tag.trace = {
  pm: {
    exp: ""
  },
  start: function (t) {
    var a = this.kag.embScript(t.exp);
    this.kag.log("trace出力：" + a), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.title = {
  vital: ["name"],
  pm: {
    name: ""
  },
  start: function (t) {
    "" != t.name && (this.kag.setTitle(t.name), this.kag.ftag.nextOrder())
  }
}, tyrano.plugin.kag.tag.iscript = {
  start: function (t) {
    this.kag.stat.is_script = !0, this.kag.stat.buff_script = "", this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.endscript = {
  pm: {
    stop: "false"
  },
  start: function (t) {
    this.kag.stat.is_script = !1, this.kag.evalScript(this.kag.stat.buff_script), this.kag.stat.buff_script = "", "false" == t.stop && this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.html = {
  pm: {
    layer: "",
    top: 0,
    left: 0
  },
  start: function (t) {
    this.kag.stat.is_html = !0, this.kag.stat.map_html = {}, this.kag.stat.map_html.buff_html = "", this.kag.stat.map_html.buff_pm = t, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.endhtml = {
  start: function (t) {
    var a = this.kag.stat.map_html.buff_pm,
      e = this.kag.stat.map_html.buff_html,
      r = $("<div></div>");
    r.css("position", "absolute"), r.css("top", a.top + "px"), r.css("left", a.left + "px"), $.setName(r, a.name), r.append($(e));
    var i = this.kag.layer.getFreeLayer();
    i.css("z-index", 9999999), i.append(r), i.show(), this.kag.stat.is_html = !1, this.kag.stat.map_html = {}, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.emb = {
  vital: ["exp"],
  pm: {
    exp: ""
  },
  log_join: "true",
  start: function (t) {
    var a = "" + this.kag.embScript(t.exp);
    this.kag.ftag.startTag("text", {
      val: a,
      backlog: "join"
    })
  }
}, tyrano.plugin.kag.tag.if = {
  vital: ["exp"],
  pm: {
    exp: ""
  },
  log_join: "true",
  start: function (t) {
    if (this.kag.embScript(t.exp)) this.kag.pushStack("if", {
      bool: !0,
      deep: t.deep_if
    }), this.kag.ftag.nextOrder();
    else {
      this.kag.pushStack("if", {
        bool: !1,
        deep: t.deep_if
      });
      for (var a = 0; a < 2e3; a++) {
        if (1 == this.kag.ftag.nextOrderWithTag({
            else: "",
            elsif: "",
            endif: ""
          })) break
      }
      a > 1900 && this.kag.error("If文に誤りがあります")
    }
  }
}, tyrano.plugin.kag.tag.elsif = {
  vital: ["exp"],
  pm: {
    exp: ""
  },
  log_join: "true",
  start: function (t) {
    if (0 == this.kag.getStack("if").bool && this.kag.embScript(t.exp)) this.kag.setStack("if", {
      bool: !0,
      deep: t.deep_if
    }), this.kag.ftag.nextOrder();
    else {
      for (var a = 0; a < 2e3; a++) {
        if (1 == this.kag.ftag.nextOrderWithTag({
            else: "",
            elsif: "",
            endif: ""
          })) break
      }
      a > 1900 && this.kag.error("If文に誤りがあります")
    }
  }
}, tyrano.plugin.kag.tag.else = {
  pm: {
    exp: ""
  },
  log_join: "true",
  start: function (t) {
    if (0 == this.kag.getStack("if").bool) this.kag.setStack("if", {
      bool: !0,
      deep: t.deep_if
    }), this.kag.ftag.nextOrder();
    else {
      for (var a = 0; a < 2e3; a++) {
        if (1 == this.kag.ftag.nextOrderWithTag({
            endif: ""
          })) break
      }
      a > 1900 && this.kag.error("If文に誤りがあります")
    }
  }
}, tyrano.plugin.kag.tag.endif = {
  log_join: "true",
  start: function () {
    this.kag.popStack("if"), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.call = {
  pm: {
    storage: null,
    target: null,
    countpage: !0,
    auto_next: "yes"
  },
  start: function (t) {
    var a = {};
    a.index = this.kag.ftag.current_order_index, a.storage = this.kag.stat.current_scenario, a.auto_next = t.auto_next, a.caller = t, this.kag.pushStack("call", a), null == t.target && null != t.storage ? this.kag.ftag.nextOrderWithIndex(-1, t.storage) : this.kag.ftag.nextOrderWithLabel(t.target, t.storage)
  }
}, tyrano.plugin.kag.tag.return = {
  start: function () {
    var t = this.kag.getStack("call");
    t.caller && t.caller.storage && "make.ks" == t.caller.storage && 1 == this.kag.tmp.loading_make_ref && (this.kag.stat.flag_ref_page = !0, this.kag.tmp.loading_make_ref = !1);
    var a = t.auto_next;
    this.kag.popStack("call"), this.kag.ftag.nextOrderWithIndex(t.index, t.storage, void 0, void 0, a)
  }
}, tyrano.plugin.kag.tag.macro = {
  vital: ["name"],
  pm: {
    name: ""
  },
  log_join: "true",
  start: function (t) {
    var a = this.kag.ftag.current_order_index,
      e = this.kag.stat.current_scenario;
    this.kag.stat.map_macro[t.name] = {
      storage: e,
      index: a
    }, this.kag.tmp.checking_macro = !0;
    for (var r = 0; r < 2e3; r++) {
      if (1 == this.kag.ftag.nextOrderWithTag({
          endmacro: ""
        })) break
    }
    r > 1900 && this.kag.error("マクロが閉じていません")
  }
}, tyrano.plugin.kag.tag.endmacro = {
  log_join: "true",
  start: function (t) {
    if (1 == this.kag.tmp.checking_macro) return this.kag.tmp.checking_macro = !1, void this.kag.ftag.nextOrder();
    var a = this.kag.getStack("macro");
    a && (this.kag.popStack("macro"), this.kag.stat.mp = this.kag.getStack("macro"), this.kag.ftag.nextOrderWithIndex(a.index, a.storage, !0))
  }
}, tyrano.plugin.kag.tag.erasemacro = {
  vital: ["name"],
  pm: {
    name: ""
  },
  start: function (t) {
    delete this.kag.stat.map_macro[t.name], this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.savesnap = {
  vital: ["title"],
  pm: {
    title: ""
  },
  start: function (t) {
    this.kag.menu.snapSave(t.title)
  }
}, tyrano.plugin.kag.tag.autosave = {
  vital: [],
  pm: {
    title: ""
  },
  start: function (t) {
    var a = this;
    "" == t.title && (t.title = this.kag.stat.current_save_str), this.kag.menu.snapSave(t.title, function () {
      a.kag.menu.doSetAutoSave(), a.kag.ftag.nextOrder()
    })
  }
}, tyrano.plugin.kag.tag.autoload = {
  vital: [],
  pm: {
    title: ""
  },
  start: function (t) {
    $.getStorage(this.kag.config.projectID + "_tyrano_auto_save", this.kag.config.configSave);
    this.kag.menu.loadAutoSave()
  }
}, tyrano.plugin.kag.tag.ignore = {
  vital: ["exp"],
  pm: {
    exp: ""
  },
  start: function (t) {
    if (this.kag.embScript(t.exp)) {
      for (var a = 0; a < 2e3; a++) {
        if (1 == this.kag.ftag.nextOrderWithTag({
            endignore: ""
          })) break
      }
      a > 1900 && this.kag.error("ignoreが閉じていません")
    } else this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.endignore = {
  start: function () {
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.edit = {
  vital: ["name"],
  pm: {
    name: "",
    length: "",
    initial: "",
    placeholder: "",
    color: "black",
    left: "0",
    top: "0",
    size: "20",
    face: "",
    width: "200",
    autocomplete: "false",
    height: "40",
    maxchars: "1000"
  },
  start: function (t) {
    var a = $("<input class='text_box form' name='" + t.name + "' type='text' value='' />");
    "" == t.face && (t.face = this.kag.stat.default_font.face), t = $.minifyObject(t);
    var e = {
      color: $.convertColor(t.color),
      left: parseInt(t.left),
      top: parseInt(t.top),
      placeholder: t.placeholder,
      width: t.width,
      height: t.height,
      "font-size": parseInt(t.size),
      "font-family": t.face
    };
    this.kag.event.addEventElement({
      tag: "edit",
      j_target: a,
      pm: t
    }), this.setEvent(a, t), a.css(e), a.css("position", "absolute"), a.attr("maxlength", t.maxchars), "true" == t.autocomplete ? a.attr("autocomplete", "on") : a.attr("autocomplete", "off"), this.kag.layer.getFreeLayer().append(a), this.kag.layer.getFreeLayer().show(), this.kag.ftag.nextOrder()
  },
  setEvent: function (t, a) {
    TYRANO;
    var e = a;
    t.val(e.initial), t.click(function () {
      t.focus()
    }), t.on("keydown", function (t) {
      t.stopPropagation()
    })
  }
}, tyrano.plugin.kag.tag.preload = {
  vital: ["storage"],
  pm: {
    storage: "",
    wait: "false"
  },
  start: function (t) {
    var a = this;
    "true" == t.wait && this.kag.layer.hideEventLayer();
    var e = t.storage;
    if ("object" == typeof e && e.length > 0)
      for (var r = 0, i = 0; i < e.length; i++) a.kag.preload(e[i], function () {
        r++, e.length == r && ("true" == t.wait && a.kag.layer.showEventLayer(), a.kag.ftag.nextOrder())
      });
    else this.kag.preload(t.storage, function () {
      "true" == t.wait && a.kag.layer.showEventLayer(), a.kag.ftag.nextOrder()
    })
  }
}, tyrano.plugin.kag.tag.clearfix = {
  pm: {
    name: ""
  },
  start: function (t) {
    "" != t.name ? $(".fixlayer." + t.name).remove() : $(".fixlayer").remove(), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.commit = {
  start: function () {
    var t = this;
    this.kag.layer.getFreeLayer().find(".form").each(function () {
      var a = $(this).attr("name") + " = '" + $(this).val() + "'";
      t.kag.evalScript(a)
    }), t.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.cursor = {
  vital: ["storage"],
  pm: {
    storage: "default"
  },
  start: function (t) {
    this.kag.setCursor(t.storage), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.screen_full = {
  vital: [],
  pm: {},
  start: function (t) {
    this.kag.menu.screenFull(), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.sleepgame = {
  vital: [],
  pm: {
    storage: "",
    target: "",
    next: !0
  },
  start: function (t) {
    var a = this,
      e = this.kag.stat.current_save_str;
    this.kag.menu.snapSave(e, function () {
      a.kag.menu.setGameSleep(t.next), a.kag.ftag.startTag("jump", t)
    }, "false")
  }
}, tyrano.plugin.kag.tag.awakegame = {
  vital: [],
  pm: {
    variable_over: "true",
    bgm_over: "true"
  },
  start: function (t) {
    if (null == this.kag.tmp.sleep_game) this.kag.ftag.nextOrder();
    else {
      var a = this.kag.tmp.sleep_game;
      "true" == t.variable_over && (a.stat.f = this.kag.stat.f);
      var e = {
        bgm_over: t.bgm_over
      };
      1 == this.kag.tmp.sleep_game_next && (e.auto_next = "yes"), this.kag.menu.loadGameData($.extend(!0, {}, a), e), this.kag.tmp.sleep_game = null
    }
  }
}, tyrano.plugin.kag.tag.breakgame = {
  vital: [],
  pm: {},
  start: function (t) {
    this.kag.tmp.sleep_game = null, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.dialog = {
  vital: [],
  pm: {
    name: "tf.dialog_value",
    type: "alert",
    text: "",
    storage: "",
    target: "",
    storage_cancel: "",
    target_cancel: "",
    label_ok: "OK",
    label_cancel: "Cancel"
  },
  start: function (t) {
    var a = this;
    $(".remodal").find(".remodal-confirm").html(t.label_ok), $(".remodal").find(".remodal-cancel").html(t.label_cancel), "confirm" == t.type ? $.confirm(t.text, function () {
      a.finish(t)
    }, function () {
      t.storage = t.storage_cancel, t.target = t.target_cancel, a.finish(t)
    }) : "input" == t.type ? (alertify.set({
      buttonFocus: "none",
      labels: {
        ok: t.label_ok,
        cancel: t.label_cancel
      }
    }), alertify.prompt(t.text, function (e, r) {
      if (e) {
        var i = t.name + " = '" + r + "'";
        a.kag.evalScript(i)
      } else t.storage = t.storage_cancel, t.target = t.target_cancel;
      a.finish(t)
    }), $(".alertify-text").on("keydown", function (t) {
      t.stopPropagation()
    })) : $.alert(t.text, function () {
      a.finish(t)
    })
  },
  finish: function (t) {
    "" != t.storage || "" != t.target ? this.kag.ftag.startTag("jump", t) : this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.plugin = {
  vital: ["name"],
  pm: {
    name: "",
    storage: "init.ks"
  },
  start: function (t) {
    var a = t.name;
    t.storage = "../others/plugin/" + a + "/" + t.storage, this.kag.stat.mp = t, this.kag.ftag.startTag("call", t)
  }
}, tyrano.plugin.kag.tag.sysview = {
  vital: ["type", "storage"],
  pm: {
    type: "",
    storage: ""
  },
  start: function (t) {
    var a = t.type,
      e = t.storage;
    this.kag.cache_html[a] && delete this.kag.cache_html[a], this.kag.stat.sysview[a] = e, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.loadcss = {
  vital: ["file"],
  pm: {
    file: ""
  },
  start: function (t) {
    var a = t.file,
      e = '<link rel="stylesheet" href="' + a + "?" + Math.floor(1e7 * Math.random()) + '">';
    $("head link:last").after(e), this.kag.stat.cssload[a] = !0, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.save_img = {
  vital: [],
  pm: {
    storage: "",
    folder: ""
  },
  start: function (t) {
    t.storage;
    var a = "",
      e = "";
    "" == t.storage && (t.storage = "default"), a = "" != t.folder ? t.folder : "bgimage", e = $.isHTTP(t.storage) ? t.storage : "./data/" + a + "/" + t.storage, "default" == t.storage && (e = ""), this.kag.stat.save_img = e, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.nolog = {
  vital: [],
  pm: {},
  start: function (t) {
    this.kag.stat.log_write = !1, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.endnolog = {
  vital: [],
  pm: {},
  start: function (t) {
    this.kag.stat.log_write = !0, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.pushlog = {
  vital: ["text"],
  pm: {
    text: "",
    join: "false"
  },
  start: function (t) {
    "true" == t.join ? this.kag.pushBackLog(t.text, "join") : this.kag.pushBackLog(t.text, "add"), this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.start_keyconfig = {
  pm: {},
  start: function (t) {
    this.kag.stat.enable_keyconfig = !0, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.stop_keyconfig = {
  pm: {},
  start: function (t) {
    this.kag.stat.enable_keyconfig = !1, this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.apply_local_patch = {
  vital: ["file"],
  pm: {
    file: "",
    reload: "false"
  },
  start: function (t) {
    var a = this;
    if ($.isNWJS() || $.isElectron()) {
      var e = $.localFilePath() + "/" + t.file;
      a.kag.applyPatch(e, t.reload, function () {
        a.kag.ftag.nextOrder()
      })
    } else a.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.check_web_patch = {
  vital: ["url"],
  pm: {
    url: "",
    reload: "false"
  },
  start: function (t) {
    var a = this;
    $.isNWJS() || $.isElectron() ? $.ajax({
      url: t.url + "?" + Math.floor(1e6 * Math.random()),
      cache: !1,
      dataType: "json",
      success: function (e) {
        "object" != typeof e && (e = JSON.parse(e)), a.checkPatch(e, t)
      },
      error: function (a) {
        console.log(a), alert("file not found:" + t.url)
      }
    }) : a.kag.ftag.nextOrder()
  },
  checkPatch: function (t, a) {
    var e = this;
    void 0 === this.kag.variable.sf._patch_version && this.kag.evalScript("sf._patch_version=" + this.kag.config.game_version), parseFloat(this.kag.variable.sf._patch_version) < parseFloat(t.version) ? $.confirm("新しいアップデートが見つかりました。Ver:" + parseFloat(t.version) + "「" + t.message + "」<br />アップデートを行いますか？", function () {
      alert("アップデートを行います。完了後、自動的にゲームは終了します。");
      var r = require("http"),
        i = require("fs"),
        n = t.file,
        g = $.getDirPath(a.url) + n; - 1 != g.indexOf("https") && (r = require("https"));
      var s = $.localFilePath();
      s = s + "/" + n;
      var o = i.createWriteStream(s);
      r.get(g, function (a) {
        a.pipe(o), a.on("end", function () {
          o.close(), e.kag.evalScript("sf._patch_version=" + t.version), window.close()
        })
      }).on("error", function (t) {
        console.log("Error: ", t)
      })
    }, function () {
      e.kag.ftag.nextOrder()
    }) : e.kag.ftag.nextOrder(), console.log(t)
  }
}, tyrano.plugin.kag.tag.dialog_config = {
  pm: {
    okpos: "",
    btntype: "",
    btnwidth: "",
    btnmargin: "",
    btnpadding: "",
    fontsize: "",
    fontbold: "",
    fontface: "",
    fontcolor: "",
    btnfontsize: "",
    btnfontbold: "",
    btnfontface: "",
    btnfontcolor: "",
    boxradius: "",
    boxcolor: "",
    boximg: "",
    boximgpos: "",
    boximgrepeat: "",
    boximgsize: "",
    boxopacity: "",
    boxwidth: "",
    boxheight: "",
    boxpadding: "",
    bgcolor: "",
    bgimg: "",
    bgimgpos: "",
    bgimgrepeat: "",
    bgimgsize: "",
    bgopacity: "",
    openeffect: "",
    opentime: "",
    closeeffect: "",
    closetime: "",
    gotitle: "",
    ingame: ""
  },
  __initialized: !1,
  init() {
    if (!this.__initialized) {
      this.__initialized = !0;
      this.j_overlay = $(".remodal-overlay");
      this.j_box = $("[data-remodal-id=modal]");
      this.j_wrapper = this.j_box.parent();
      this.j_title = this.j_box.find(".remodal_title");
      this.j_message = this.j_box.find(".remodal_txt");
      this.j_text = $([this.j_title[0], this.j_message[0]]);
      this.j_cancel = this.j_box.find(".remodal-cancel").attr("id", "remodal-cancel");
      this.j_ok = this.j_box.find(".remodal-confirm").attr("id", "remodal-confirm");
      this.j_button = $([this.j_ok[0], this.j_cancel[0]]);
      this.j_boxbase = $('<div class="remodal-boxbase"></div>');
      this.j_box.prepend(this.j_boxbase);
      this.j_base = $('<div class="remodal-base"></div>');
      this.j_image = $('<div class="remodal-image"</div>');
      this.j_base.append(this.j_image);
      this.j_wrapper.prepend(this.j_base);
      this.j_ok_img = null;
      this.j_cancel_img = null
    }
  },
  start: function (pm) {
    this.init();
    pm.btntype && this.j_button.attr("class", pm.btntype);
    pm.btnwidth && this.j_button.setStyle("width", $.convertLength(pm.btnwidth));
    pm.btnmargin && this.j_button.setMargin(pm.btnmargin);
    pm.btnpadding && this.j_button.setPadding(pm.btnpadding);
    pm.fontsize && this.j_text.setStyle("font-size", $.convertLength(pm.fontsize));
    pm.fontbold && this.j_text.setStyle("font-weight", $.convertFontWeight(pm.fontbold));
    pm.fontface && this.j_text.setStyle("font-family", pm.fontface);
    pm.fontcolor && this.j_text.setStyle("color", $.convertColor(pm.fontcolor));
    pm.btnfontsize && this.j_button.setStyle("font-size", $.convertLength(pm.btnfontsize));
    pm.btnfontbold && this.j_button.setStyle("font-weight", $.convertFontWeight(pm.btnfontbold));
    pm.btnfontface && this.j_button.setStyle("font-family", pm.btnfontface);
    pm.btnfontcolor && this.j_button.setStyle("color", $.convertColor(pm.btnfontcolor));
    if (pm.boxradius) {
      this.j_box.setStyle("border-radius", $.convertLength(pm.boxradius + "px"));
      this.j_boxbase.setStyle("border-radius", $.convertLength(pm.boxradius + "px"))
    }
    pm.boxcolor && this.j_boxbase.setStyle("background-color", $.convertColor(pm.boxcolor));
    pm.boximg && this.j_boxbase.setStyle("background-image", $.convertBackgroundImage(pm.boximg, "image"));
    pm.boximgpos && this.j_boxbase.setStyle("background-position", $.convertBackgroundPosition(pm.boximgpos));
    pm.boximgsize && this.j_boxbase.setStyle("background-size", $.convertLength(pm.boximgsize));
    pm.boximgrepeat && this.j_boxbase.setStyle("background-repeat", pm.boximgrepeat);
    pm.boxopacity && this.j_boxbase.setStyle("opacity", $.convertOpacity(pm.boxopacity));
    pm.boxwidth && this.j_box.setStyle("width", $.convertLength(pm.boxwidth)).setStyle("max-width", $.convertLength(pm.boxwidth));
    pm.boxheight && this.j_box.setStyle("height", $.convertLength(pm.boxheight)).setStyle("max-height", $.convertLength(pm.boxheight));
    pm.boxpadding && this.j_box.setPadding(pm.boxpadding);
    (pm.boximg || pm.boxcolor) && this.j_box.setStyleMap({
      background: "none"
    });
    (pm.bgimg || pm.bgcolor) && this.j_overlay.setStyleMap({
      webkitFilter: "none",
      filter: "none",
      background: "none"
    });
    pm.bgcolor && this.j_image.setStyle("background-color", $.convertColor(pm.bgcolor));
    pm.bgimg && this.j_image.setStyle("background-image", $.convertBackgroundImage(pm.bgimg, "image"));
    pm.bgimgpos && this.j_image.setStyle("background-position", $.convertBackgroundPosition(pm.bgimgpos));
    pm.bgimgsize && this.j_image.setStyle("background-size", $.convertLength(pm.bgimgsize));
    pm.bgimgrepeat && this.j_image.setStyle("background-repeat", pm.bgimgrepeat);
    pm.bgopacity && this.j_image.setStyle("opacity", $.convertOpacity(pm.bgopacity));
    pm.openeffect && (this.kag.tmp.remodal_opening_effect = pm.openeffect);
    pm.closeeffect && (this.kag.tmp.remodal_closing_effect = pm.closeeffect);
    pm.opentime && (this.kag.tmp.remodal_opening_effect_time = pm.opentime + "ms");
    pm.closetime && (this.kag.tmp.remodal_closing_effect_time = pm.closetime + "ms");
    pm.gotitle && (tyrano_lang.word.go_title = pm.gotitle);
    if (pm.okpos) {
      const insert_method = "left" === pm.okpos ? "insertBefore" : "insertAfter";
      this.j_ok[insert_method](this.j_cancel);
      this.j_ok_img && this.j_ok_img[insert_method](this.j_ok);
      this.j_cancel_img && this.j_cancel_img[insert_method](this.j_cancel)
    }
    if (pm.ingame) {
      const j_remodal = $(".remodal-bg, .remodal-overlay, .remodal-wrapper");
      if ("true" === pm.ingame) {
        j_remodal.appendTo("#tyrano_base");
        j_remodal.setStyle("z-index", "1000000000")
      } else "false" === pm.ingame && j_remodal.appendTo("body")
    }
    this.kag.ftag.nextOrder()
  },
  changeButton(pm, is_ok) {
    if (pm.img && "bg" !== pm.btnimgtype) return this.replaceButton(pm, is_ok);
    const j_elm = is_ok ? this.j_ok : this.j_cancel,
      id = is_ok ? "remodal-confirm" : "remodal-cancel",
      j_old_image = $(`img#${id}`);
    if (j_old_image.length > 0) {
      j_old_image.remove();
      j_elm.show().attr("id", id);
      TYRANO.kag.makeFocusable(j_elm)
    }
    pm.text && j_elm.text(pm.text);
    pm.type && j_elm.attr("class", pm.type);
    pm.width && j_elm.setStyle("width", $.convertLength(pm.width));
    pm.margin && j_elm.setMargin(pm.margin);
    pm.padding && j_elm.setPadding(pm.padding);
    pm.fontsize && j_elm.setStyle("font-size", $.convertLength(pm.fontsize));
    pm.fontbold && j_elm.setStyle("font-weight", $.convertFontWeight(pm.fontbold));
    pm.fontface && j_elm.setStyle("font-family", pm.fontface);
    pm.fontcolor && j_elm.setStyle("color", $.convertColor(pm.fontcolor));
    pm.img && (this.css_map[`#${id}`]["background-image"] = $.convertBackgroundImage(pm.img, "image"));
    if (pm.activeimg) {
      this.css_map[`#${id}:active`]["background-image"] = $.convertBackgroundImage(pm.activeimg, "image");
      this.css_map[`#${id}.active`]["background-image"] = $.convertBackgroundImage(pm.activeimg, "image")
    }
    if (pm.enterimg) {
      this.css_map[`#${id}:hover`]["background-image"] = $.convertBackgroundImage(pm.enterimg, "image");
      this.css_map[`#${id}.hover`]["background-image"] = $.convertBackgroundImage(pm.enterimg, "image")
    }
    pm.clickimg && (this.css_map[`#${id}.clicked`]["background-image"] = $.convertBackgroundImage(pm.clickimg, "image"));
    this.updateCSS();
    j_elm.off("init mouseenter mouseleave click");
    j_elm.on("init", (() => {
      j_elm.removeClass("clicked")
    }));
    j_elm.on("mouseenter", (() => {
      pm.enterse && this.kag.playSound(pm.enterse)
    }));
    j_elm.on("mouseleave", (() => {
      pm.leavese && this.kag.playSound(pm.leavese)
    }));
    j_elm.on("click", (() => {
      pm.clickse && this.kag.playSound(pm.clickse);
      j_elm.addClass("clicked")
    }))
  },
  css_map: {
    "#remodal-confirm": {},
    "#remodal-confirm:hover": {},
    "#remodal-confirm.hover": {},
    "#remodal-confirm:active": {},
    "#remodal-confirm.active": {},
    "#remodal-confirm.clicked": {},
    "#remodal-cancel": {},
    "#remodal-cancel:hover": {},
    "#remodal-cancel.hover": {},
    "#remodal-cancel:active": {},
    "#remodal-cancel.active": {},
    "#remodal-cancel.clicked": {}
  },
  updateCSS() {
    let css_exists = !1,
      css = "";
    for (const key in this.css_map) {
      css += `${key}{`;
      const styles = this.css_map[key];
      for (const prop in styles) {
        css += `${prop}:${styles[prop]};`;
        css_exists = !0
      }
      css += "}"
    }
    if (!css_exists) return;
    let style_elm = document.getElementById("dialog_config_style");
    if (!style_elm) {
      style_elm = document.createElement("style");
      style_elm.id = "dialog_config_style";
      document.head.appendChild(style_elm)
    }
    style_elm.textContent = css
  },
  replaceButton(pm, is_ok) {
    pm.img = $.parseStorage(pm.img, "image");
    pm.enterimg = $.parseStorage(pm.enterimg, "image");
    pm.activeimg = $.parseStorage(pm.activeimg, "image");
    pm.clickimg = $.parseStorage(pm.clickimg, "image");
    const id = is_ok ? "remodal-confirm" : "remodal-cancel",
      j_original_button = is_ok ? this.j_ok : this.j_cancel,
      j_old_image = $(`img#${id}`);
    if (j_old_image.length) j_old_image.remove();
    else {
      j_original_button.hide().attr("id", "");
      TYRANO.kag.makeUnfocusable(j_original_button)
    }
    const j_img = this.createButton(pm);
    pm.margin && j_img.setMargin(pm.margin);
    pm.padding && j_img.setPadding(pm.padding);
    j_img.attr("id", id);
    j_img.addClass("remodal-image-button");
    j_img.insertBefore(j_original_button);
    j_img.on("click", (() => {
      j_original_button.trigger("click")
    }));
    j_img.on("touchstart", (() => {
      j_original_button.trigger("touchstart")
    }));
    is_ok ? this.j_ok_img = j_img : this.j_cancel_img = j_img
  },
  createButton(pm) {
    const j_img = $("<img />").attr("src", pm.img);
    pm.width && j_img.setStyle("width", $.convertLength(pm.width));
    let clicked = !1;
    j_img.on("init", (() => {
      clicked = !1;
      j_img.attr("src", pm.img)
    }));
    j_img.on("mouseenter", (() => {
      pm.enterimg && (pm.activeimg && 0 !== j_img.filter(":active").length || j_img.attr("src", pm.enterimg));
      pm.enterse && this.kag.playSound(pm.enterse)
    }));
    j_img.on("mouseleave", (() => {
      pm.activeimg ? clicked || 0 !== j_img.filter(":active").length || j_img.attr("src", pm.img) : clicked || j_img.attr("src", pm.img);
      pm.leavese && this.kag.playSound(pm.leavese)
    }));
    j_img.on("mousedown", (() => {
      pm.activeimg && j_img.attr("src", pm.activeimg);
      pm.clickse && this.kag.playSound(pm.clickse);
      window.__active_element = j_img[0]
    }));
    j_img.on("activeoff", (() => {
      j_img.filter(":hover").length > 0 ? clicked = !0 : pm.activeimg && j_img.attr("src", pm.img)
    }));
    j_img.on("click", (() => {
      clicked = !0;
      pm.clickimg && j_img.attr("src", pm.clickimg);
      pm.clickse && this.kag.playSound(pm.clickse)
    }));
    j_img.on("remove", (() => {
      window.__active_element === j_img[0] && (window.__active_element = null)
    }));
    if (!window.__is_set_active_remover) {
      window.__is_set_active_remover = !0;
      window.addEventListener("mouseup", (() => {
        if (window.__active_element) {
          const elm = window.__active_element;
          window.__active_element = null;
          $(elm).trigger("activeoff")
        }
      }), {
        capture: !0
      })
    }
    return j_img
  }
}, tyrano.plugin.kag.tag.dialog_config_ok = {
  pm: {
    text: "",
    type: "",
    width: "",
    margin: "",
    padding: "",
    fontsize: "",
    fontbold: "",
    fontface: "",
    fontcolor: "",
    img: "",
    imgwidth: "",
    enterimg: "",
    activeimg: "",
    clickimg: "",
    enterse: "",
    leavese: "",
    clickse: "",
    btnimgtype: ""
  },
  start: function (pm) {
    const that = this.kag.ftag.master_tag.dialog_config;
    that.init();
    that.changeButton(pm, !0);
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.dialog_config_ng = {
  pm: tyrano.plugin.kag.tag.dialog_config_ok.pm,
  start: function (pm) {
    const that = this.kag.ftag.master_tag.dialog_config;
    that.init();
    that.changeButton(pm, !1);
    this.kag.ftag.nextOrder()
  }
}, tyrano.plugin.kag.tag.translation = {
  start:function () {
    location.href = "./index.html";
    return !1
  }
};