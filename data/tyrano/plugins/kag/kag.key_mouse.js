tyrano.plugin.kag.key_mouse = {
  kag: null,
  keyconfig: {
    key: {}
  },
  map_key: {},
  map_mouse: {},
  map_ges: {},
  is_swipe: !1,
  timeoutId: 0,
  is_keydown: !1,
  start_point: {
    x: 0,
    y: 0
  },
  end_point: {
    x: 0,
    y: 0
  },
  init: function () {
    var e = this;
    "undefined" == typeof __tyrano_key_config && (__tyrano_key_config = {
      key: {
        32: "hidemessage",
        13: "next",
        91: "skip",
        17: "skip",
        67: function () {}
      },
      mouse: {
        right: "hidemessage",
        center: "menu",
        wheel_up: "backlog",
        wheel_down: "next"
      },
      gesture: {
        swipe_up_1: {
          action: "backlog"
        },
        swipe_left_1: {
          action: "auto"
        },
        swipe_right_1: {
          action: "menu"
        },
        swipe_down_1: {
          action: "load"
        },
        hold: {
          action: "skip"
        }
      }
    }), this.keyconfig = __tyrano_key_config, this.map_key = this.keyconfig.key, this.map_mouse = this.keyconfig.mouse, this.map_ges = this.keyconfig.gesture, $(document).keydown(function (t) {
      if (1 == e.is_keydown) return !1;
      e.is_keydown = !0;
      var a = t.keyCode;
      e.map_key[a] && ("function" == typeof e.map_key[a] ? e.map_key[a]() : e[e.map_key[a]] && e[e.map_key[a]]())
    }), $(document).keyup(function (t) {
      e.is_keydown = !1;
      var a = t.keyCode;
      91 != a && 17 != a || (e.kag.stat.is_skip = !1)
    }), $(document).on("mousedown", function (t) {
      e.clearSkip();
      var a = null;
      2 == t.which ? a = e.map_mouse.center : 3 == t.which && (a = e.map_mouse.right), "function" == typeof a ? a() : e[a] && e[a]()
    });
    var t = "onwheel" in document ? "wheel" : "onmousewheel" in document ? "mousewheel" : "DOMMouseScroll";
    $(document).on(t, function (t) {
      if (e.canShowMenu() && 0 != e.kag.stat.enable_keyconfig && !($(".menu_close").length > 0 && "none" != $(".layer_menu").css("display"))) {
        var a = null;
        "function" == typeof (a = (t.originalEvent.deltaY ? -t.originalEvent.deltaY : t.originalEvent.wheelDelta ? t.originalEvent.wheelDelta : -t.originalEvent.detail) < 0 ? e.map_mouse.wheel_down : e.map_mouse.wheel_up) ? a(): e[a] && e[a]()
      }
    });
    var a = $(".layer_event_click");
    if ("pc" != $.userenv()) {
      a.swipe({
        swipe: function (t, a, s, i, n, o) {
          e.is_swipe = !0;
          var u = "swipe_" + a + "_" + n;
          return e.map_ges[u] && e[e.map_ges[u].action] && e[e.map_ges[u].action](), t.stopPropagation(), t.preventDefault(), !1
        },
        fingers: "all"
      }), a.on("touchstart", function () {
        e.clearSkip(), e.timeoutId = setTimeout(function () {
          e[e.map_ges.hold.action] && (e.is_swipe = !0, e[e.map_ges.hold.action]())
        }, 2e3)
      }).on("touchend", function () {
        clearTimeout(e.timeoutId), e.timeoutId = null
      });
      var s = 0;
      $(".tyrano_base").on("touchend", function (e) {
        var t = (new Date).getTime();
        t - s < 350 && e.preventDefault(), s = t
      })
    }
    a.on("click", function (t) {
      return 0 == e.kag.tmp.ready_audio && $.isNeedClickAudio() ? (e.kag.readyAudio(), e.kag.tmp.ready_audio = !0, 1 == e.kag.stat.is_adding_text ? (e.kag.stat.is_click_text = !0, !1) : (e.kag.ftag.nextOrder(), !1)) : e.is_swipe ? (e.is_swipe = !1, !1) : 1 == e.kag.stat.is_hide_message ? (e.kag.layer.showMessageLayers(), !1) : 1 == e.kag.stat.is_adding_text ? (e.kag.stat.is_click_text = !0, !1) : 1 != e.kag.stat.is_click_text && (1 != e.kag.stat.is_stop && void e.kag.ftag.nextOrder())
    })
  },
  next: function () {
    this.kag.key_mouse.canClick() && $(".layer_event_click").click()
  },
  showmenu: function () {
    this.canShowMenu() && ($(".menu_close").length > 0 && "none" != $(".layer_menu").css("display") ? $(".menu_close").click() : $(".button_menu").click())
  },
  hidemessage: function () {
    this.canShowMenu() && ($(".menu_close").length > 0 && "none" != $(".layer_menu").css("display") ? $(".menu_close").click() : this.kag.stat.is_strong_stop || (this.kag.stat.is_hide_message ? this.kag.layer.showMessageLayers() : this.kag.ftag.startTag("hidemessage")))
  },
  save: function () {
    this._role("save")
  },
  load: function () {
    this._role("load")
  },
  menu: function () {
    this._role("menu")
  },
  title: function () {
    this._role("title")
  },
  skip: function () {
    this.canClick() && this._role("skip")
  },
  backlog: function () {
    this._role("backlog")
  },
  fullscreen: function () {
    this._role("fullscreen")
  },
  qsave: function () {
    this._role("quicksave")
  },
  qload: function () {
    this._role("quickload")
  },
  auto: function () {
    this._role("auto")
  },
  _role: function (e) {
    if (1 == this.kag.stat.is_skip && "skip" == e) return this.kag.stat.is_skip = !1, !1;
    if ("none" == this.kag.layer.layer_event.css("display") && 1 != this.kag.stat.is_strong_stop) return !1;
    if (0 == this.kag.stat.enable_keyconfig) return !1;
    if (this.kag.stat.is_skip = !1, "auto" != e && this.kag.ftag.startTag("autostop", {
        next: "false"
      }), !("save" != e && "menu" != e && "quicksave" != e && "sleepgame" != e || 1 != this.kag.stat.is_adding_text && 1 != this.kag.stat.is_wait)) return !1;
    switch (e) {
    case "save":
      "none" == $(".layer_menu").css("display") && this.kag.menu.displaySave();
      break;
    case "load":
      "none" == $(".layer_menu").css("display") && this.kag.menu.displayLoad();
      break;
    case "window":
      this.kag.layer.hideMessageLayers();
      break;
    case "title":
      $.confirm($.lang("go_title"), function () {
        location.reload()
      }, function () {
        return !1
      });
      break;
    case "menu":
      this.kag.menu.showMenu();
      break;
    case "skip":
      this.kag.ftag.startTag("skipstart", {});
      break;
    case "backlog":
      this.kag.menu.displayLog();
      break;
    case "fullscreen":
      this.kag.menu.screenFull();
      break;
    case "quicksave":
      this.kag.menu.setQuickSave();
      break;
    case "quickload":
      this.kag.menu.loadQuickSave();
      break;
    case "auto":
      1 == this.kag.stat.is_auto ? this.kag.ftag.startTag("autostop", {
        next: "false"
      }) : this.kag.ftag.startTag("autostart", {});
      break;
    case "sleepgame":
      if (null != this.kag.tmp.sleep_game) return !1;
      this.kag.tmp.sleep_game = {}, this.kag.ftag.startTag("sleepgame", _pm)
    }
  },
  canClick: function () {
    return "none" != $(".layer_event_click").css("display") && "none" == $(".layer_menu").css("display")
  },
  clearSkip: function () {
    if (1 == this.kag.stat.is_skip && 0 == this.kag.stat.is_strong_stop) return this.kag.stat.is_skip = !1, !1;
    1 == this.kag.stat.is_auto && "true" == this.kag.config.autoClickStop && this.kag.ftag.startTag("autostop", {
      next: "false"
    }), 1 == this.kag.stat.is_wait_auto && (this.kag.stat.is_wait_auto = !1)
  },
  canShowMenu: function () {
    return ("none" != this.kag.layer.layer_event.css("display") || 1 == this.kag.stat.is_strong_stop) && 1 != this.kag.stat.is_wait
  }
};
