tyrano.plugin.kag = {
  version: 500,
  tyrano: null,
  kag: null,
  sound_swf: null,
  is_rider: !1,
  is_studio: !1,
  cache_html: {},
  cache_scenario: {},
  config: {
    defaultStorageExtension: "jpg",
    projectID: "tyranoproject",
    game_version: "0.0",
    preload: "on",
    skipSpeed: "30",
    patch_apply_auto: "true",
    mediaFormatDefault: "ogg",
    configSave: "webstorage"
  },
  define: {
    TYRANO_ENGINE_VERSION: 400,
    BASE_DIV_NAME: "tyrano_base",
    FLAG_APRI: !1,
    www: ""
  },
  variable: {
    sf: {},
    tf: {}
  },
  tmp: {
    checking_macro: !1,
    ready_audio: !1,
    audio_context: !1,
    num_anim: 0,
    map_bgm: {},
    map_se: {},
    sleep_game: null,
    sleep_game_next: !1,
    base_scale: 1,
    is_se_play: !1,
    is_se_play_wait: !1,
    is_vo_play: !1,
    is_vo_play_wait: !1,
    is_bgm_play: !1,
    is_bgm_play_wait: !1,
    is_audio_stopping: !1,
    loading_make_ref: !1,
    wait_id: "",
    map_chara_talk_top: {},
    camera_stream: !1,
    video_playing: !1,
    angle: 0,
    three: {
      stat: {
        is_load: !1,
        canvas_show: !1,
        start_event: !0,
        scene_pm: {},
        init_pm: {},
        gyro: {
          pm: {},
          x: 0,
          y: 0,
          enable: -1,
          mode: 0
        }
      },
      models: {},
      evt: {}
    }
  },
  stat: {
    map_label: {},
    map_macro: {},
    vertical: "false",
    f: {},
    mp: {},
    current_layer: "message0",
    current_page: "fore",
    is_stop: !1,
    is_wait: !1,
    is_trans: !1,
    is_wait_anim: !1,
    is_strong_stop: !1,
    strong_stop_recover_index: 0,
    is_nowait: !1,
    current_message_str: "ゲームスタート",
    current_save_str: "",
    current_keyframe: "",
    map_keyframe: {},
    is_script: !1,
    buff_script: "",
    is_html: !1,
    map_html: {},
    cssload: {},
    save_img: "",
    stack: {
      if: [],
      call: [],
      macro: []
    },
    set_text_span: !1,
    current_scenario: "first.ks",
    is_skip: {},
    is_auto: {},
    current_bgm: "",
    current_bgm_vol: "",
    current_se: {},
    load_auto_next: !1,
    current_bgcamera: "",
    enable_keyconfig: !0,
    current_bgmovie: {
      storage: "",
      volume: ""
    },
    current_camera: {},
    current_camera_layer: "",
    is_move_camera: !1,
    is_wait_camera: !1,
    current_line: 0,
    is_hide_message: !1,
    is_click_text: !1,
    is_adding_text: !1,
    flag_ref_page: !1,
    ruby_str: "",
    ch_speed: "",
    skip_link: "true",
    log_join: "false",
    log_clear: !1,
    f_chara_ptext: "false",
    flag_glyph: "false",
    current_cursor: "auto",
    font: {
      enable: !1,
      color: "",
      bold: "",
      size: "",
      face: "",
      italic: ""
    },
    qr: {
      mode: "off",
      define: {}
    },
    locate: {
      x: 0,
      y: 0
    },
    default_font: {
      color: "",
      bold: "",
      size: "",
      face: "",
      italic: "",
      edge: "",
      shadow: ""
    },
    sysview: {
      save: "./tyrano/html/save.html",
      load: "./tyrano/html/load.html",
      backlog: "./tyrano/html/backlog.html",
      menu: "./tyrano/html/menu.html",
      config: "./tyrano/html/config.html",
      gallery:"./tyrano/html/gallery.html"
    },
    chara_pos_mode: "true",
    chara_effect: "swing",
    chara_ptext: "",
    chara_time: "600",
    chara_memory: "false",
    chara_anim: "true",
    pos_change_time: "600",
    chara_talk_focus: "none",
    chara_brightness_value: "60",
    chara_blur_value: "2",
    chara_talk_anim: "none",
    chara_talk_anim_time: 230,
    chara_talk_anim_value: 30,
    apply_filter_str: "",
    video_stack: null,
    is_wait_bgmovie: !1,
    charas: {},
    jcharas: {},
    play_bgm: !0,
    play_se: !0,
    play_speak: !1,
    map_se_volume: {},
    map_bgm_volume: {},
    map_vo: {
      vobuf: {},
      vochara: {}
    },
    vostart: !1,
    log_write: !0,
    buff_label_name: "",
    already_read: !1,
    visible_menu_button: !1,
    vchat: {
      is_active: !1,
      chara_name_color: "0x70c7ff",
      max_log_count: 200,
      charas: {}
    },
    title: ""
  },
  init: function () {
    this.kag = this;
    var t = this;
    this.tyrano.test(), this.parser.loadConfig(function (a) {
      t.config = $.extend(!0, t.config, a), t.checkUpdate(function () {
        t.init_game()
      })
    }), $("script").each(function () {
      $(this).attr("src") && (-1 == $(this).attr("src").indexOf("cordova") && -1 == $(this).attr("src").indexOf("phonegap") || (t.define.FLAG_APRI = !0))
    }), "function" == typeof TyranoPlayer ? this.tmp.ready_audio = !0 : $.isNWJS() && (this.tmp.ready_audio = !0);
    var a = window.AudioContext || window.webkitAudioContext || !1;
    a && (this.tmp.audio_context = new a);
    try {
      $.getBrowser()
    } catch (t) {
      console.log(t)
    }
  },
  checkUpdate: function (t) {
    if ($.isNWJS() || $.isElectron())
      if ("false" != this.kag.config.patch_apply_auto) {
        var a = $.localFilePath();
        a = a + "/" + this.kag.config.projectID + ".tpatch", this.applyPatch(a, "true", t)
      } else t();
    else t()
  },
  applyPatch: function (t, a, e) {
    var s = require("fs");
    if (s.existsSync(t)) {
      var i = require("fs-extra"),
        n = require("path"),
        r = $.getUnzipPath();
      if ("asar" == r) {
        const a = require("asar");
        let r = __dirname,
          c = (s.readdirSync(r), $.localFilePath());
        if ("darwin" == process.platform) {
          alert("パッチを適応するゲーム実行ファイル（.app）の場所を選択してください。");
          let t = require("electron").remote.dialog.showOpenDialogSync(null, {
            properties: ["openFile"],
            title: "パッチを適応するゲームの実行ファイル（app）を選択してください。",
            filters: [{
              name: "",
              extensions: ["app"]
            }]
          });
          if (void 0 === t) return alert("パッチの適応を中止します"), void e();
          r = t[0] + "/Contents/Resources/app.asar", c += "/"
        } else c += "/";
        i.mkdirSync(n.resolve(c + "/update_tmp")), (async() => {
          await a.extractAll(n.resolve(r), n.resolve(c + "/update_tmp/"))
        })(), new(o = require("adm-zip"))(t).extractAllTo(n.resolve(c + "update_tmp/"), !0);
        const l = n.resolve(c + "update_tmp/"),
          g = n.resolve(r);
        return (async() => {
          await a.createPackage(l, g)
        })(), void $.alert("パッチを適応しました。再度、起動してください。", function () {
          i.removeSync(n.resolve(t)), i.removeSync(n.resolve(c + "update_tmp")), window.close()
        })
      }
      var o = require("adm-zip");
      require("path").resolve("./");
      new o(t).extractAllTo(r + "/update_tmp", !0), i.copySync(r + "/update_tmp/", r + "/"), i.removeSync(r + "/update_tmp"), i.removeSync(t), $.alert("パッチを適応しました。再起動します。", function () {
        location.reload()
      })
    } else e()
  },
  evalScript: function (str) {
    var TG = this,
      f = this.stat.f,
      sf = this.variable.sf,
      tf = this.variable.tf,
      mp = this.stat.mp;
    eval(str), this.saveSystemVariable(), this.kag.is_studio && this.kag.studio.notifyChangeVariable()
  },
  embScript: function (str, preexp) {
    try {
      var f = this.stat.f,
        sf = this.variable.sf,
        tf = this.variable.tf,
        mp = this.stat.mp;
      return eval(str)
    } catch (t) {
      return
    }
  },
  saveSystemVariable: function () {
    $.setStorage(this.kag.config.projectID + "_sf", this.variable.sf, this.kag.config.configSave)
  },
  clearVariable: function () {
    this.stat.f = {}, this.variable.sf = {}, this.clearTmpVariable(), this.saveSystemVariable()
  },
  clearTmpVariable: function () {
    var t = this.kag.variable.tf.system;
    this.kag.variable.tf = {}, this.kag.variable.tf.system = t
  },
  pushStack: function (t, a) {
    this.stat.stack[t].push(a)
  },
  popStack: function (t) {
    return this.stat.stack[t].pop()
  },
  getStack: function (t) {
    return this.stat.stack[t][this.stat.stack[t].length - 1]
  },
  setStack: function (t, a) {
    this.stat.stack[t][this.stat.stack[t].length - 1] = a
  },
  endStorage: function () {
    var t = this.kag.getStack("call");
    if (null == t) return !1;
    this.kag.popStack("call"), this.kag.ftag.nextOrderWithIndex(t.index, t.storage)
  },
  init_game: function () {
    var that = this;
    this.parser = object(tyrano.plugin.kag.parser), this.parser.kag = that, this.ftag = object(tyrano.plugin.kag.ftag), this.ftag.kag = that, this.ftag.init(), this.layer = object(tyrano.plugin.kag.layer), this.layer.kag = that, this.layer.init(), this.menu = object(tyrano.plugin.kag.menu), this.menu.kag = that, this.menu.init(), this.key_mouse = object(tyrano.plugin.kag.key_mouse), this.key_mouse.kag = that, this.key_mouse.init(), this.event = object(tyrano.plugin.kag.event), this.event.kag = that, this.event.init(), this.rider = object(tyrano.plugin.kag.rider), this.rider.kag = that, this.rider.init(), this.studio = object(tyrano.plugin.kag.studio), this.studio.kag = that, this.studio.init();
    var tmpsf = $.getStorage(this.kag.config.projectID + "_sf", that.config.configSave);
    this.variable.sf = null == tmpsf ? {} : eval("(" + tmpsf + ")"), void 0 !== that.variable.sf._system_config_bgm_volume && (that.config.defaultBgmVolume = String(that.variable.sf._system_config_bgm_volume)), void 0 !== that.variable.sf._system_config_se_volume && (that.config.defaultSeVolume = String(that.variable.sf._system_config_se_volume)), that.variable.sf._config_ch_speed && (that.config.chSpeed = that.variable.sf._config_ch_speed), void 0 !== that.variable.sf._system_config_auto_speed && (that.config.autoSpeed = that.variable.sf._system_config_auto_speed), that.variable.sf._system_config_auto_click && (that.config.autoClickStop = that.variable.sf._system_config_auto_click_stop), that.variable.sf._system_config_already_read_text_color && (that.config.alreadyReadTextColor = that.variable.sf._system_config_already_read_text_color), void 0 !== that.variable.sf._system_config_unread_text_skip && (that.config.unReadTextSkip = that.variable.sf._system_config_unread_text_skip);
    var auto_save_data = $.getStorage(this.kag.config.projectID + "_tyrano_auto_save", this.kag.config.configSave);
    this.variable.sf.system = {}, this.variable.sf.system.autosave = !!auto_save_data, this.variable.tf.system = {}, this.variable.tf.system.backlog = [];
    var button_menu_obj = $("<div class='button_menu' style='z-index:100000000'><img src='./tyrano/images/system/" + $.novel("file_button_menu") + "'  /></div>");
    if ("-1" != this.kag.config.configLeft && "-1" != this.kag.config.configTop ? (button_menu_obj.css("left", parseInt(this.kag.config.configLeft)), button_menu_obj.css("top", parseInt(this.kag.config.configTop))) : (button_menu_obj.css("left", this.config.scWidth - 70), button_menu_obj.css("top", this.config.scHeight - 70)), button_menu_obj.click(function () {
        that.menu.showMenu()
      }), "false" == this.kag.config.configVisible ? (button_menu_obj.hide(), this.kag.stat.visible_menu_button = !1) : this.kag.stat.visible_menu_button = !0, $("." + this.kag.define.BASE_DIV_NAME).append(button_menu_obj), this.kag.config.ScreenCentering && this.kag.config.ScreenCentering, $(".tyrano_base").css("transform-origin", "0 0"), $(".tyrano_base").css({
        margin: 0
      }), "pc" != $.userenv()) {
      function noScroll(t) {
        t.preventDefault()
      }
      $("#tyrano_base").css("position", "absolute"), "true" != this.kag.config.vchat && document.addEventListener("touchmove", noScroll, {
        passive: !1
      })
    }
    this.tyrano.base.setBaseSize(this.config.scWidth, this.config.scHeight), that.tmp.angle = $.getAngle(), this.tyrano.base.fitBaseSize(that.config.scWidth, that.config.scHeight), $(window).bind("load orientationchange resize", function () {
      that.tmp.angle = $.getAngle(), 90 === Math.abs(window.orientation) ? (window.scrollTo(0, 1), that.tyrano.base.fitBaseSize(that.config.scWidth, that.config.scHeight)) : (0 === window.pageYOffset && window.scrollTo(0, 1), that.tyrano.base.fitBaseSize(that.config.scWidth, that.config.scHeight))
    }), this.layer.addLayer("base"), this.layer.addLayer("message0");
    var j_message = $("<div class='message_outer'></div>");
    j_message.css("background-color", $.convertColor(this.config.frameColor)).css("opacity", $.convertOpacity(this.config.frameOpacity)).css("left", eval(this.config.ml)).css("top", eval(this.config.mt)).css("width", eval(this.config.mw)).css("height", eval(this.config.mh)).css("z-index", 100), j_message.l_visible, this.layer.appendObj("message0", "fore", j_message);
    var j_message_inner = $("<div class='message_inner' style='z-index:1001'></div>");
    "false" == this.config.WordBreak && j_message_inner.css("word-break", "break-all"), $.insertRule(".message_inner p{ padding-top:" + this.kag.config.defaultLineSpacing + "px;}"), this.layer.appendObj("message0", "fore", j_message_inner);
    for (var num_message_layer = parseInt(this.config.numMessageLayers), i = 1; i < num_message_layer; i++) {
      var message_layer_name = "message" + i;
      this.layer.addLayer(message_layer_name), this.layer.getLayer(message_layer_name).attr("l_visible", "false"), this.layer.getLayer(message_layer_name).hide();
      var j_message1 = j_message.clone(!1);
      this.layer.appendObj(message_layer_name, "fore", j_message1);
      var j_message_inner1 = j_message_inner.clone(!1);
      this.layer.appendObj(message_layer_name, "fore", j_message_inner1)
    }
    this.layer.refMessageLayer();
    for (var fore_layer_num = parseInt(this.config.numCharacterLayers), i = 0; i < fore_layer_num; i++) this.layer.addLayer("" + i), this.layer.getLayer("" + i, "fore").css("display", "none").css("z-index", 10 + i), this.layer.getLayer("" + i, "back").css("display", "none").css("z-index", 10 + i);
    this.stat.default_font.color = $.convertColor(this.kag.config.defaultChColor), this.stat.default_font.bold = $.convertBold(this.kag.config.defaultBold), this.stat.default_font.size = this.kag.config.defaultFontSize, this.stat.default_font.face = this.kag.config.userFace;
    var smooth = this.kag.config.defaultAntialiased;
    "2" == smooth ? $(".tyrano_base").css("-webkit-font-smoothing", "antialiased") : "0" == smooth ? $(".tyrano_base").css("-webkit-font-smoothing", "none") : $(".tyrano_base").css("-webkit-font-smoothing", "subpixel-antialiased"), "true" == this.kag.config.defaultShadow && (this.stat.default_font.shadow = $.convertColor(this.kag.config.defaultShadowColor)), "true" == this.kag.config.defaultEdge && (this.stat.default_font.edge = $.convertColor(this.kag.config.defaultEdgeColor)), this.stat.vertical = this.kag.config.vertical, this.kag.stat.font = $.extend(!0, $.cloneObject(this.kag.stat.font), this.stat.default_font), this.setTitle(this.config["System.title"]), this.setCursor(this.config.cursorDefault), $.isNeedClickAudio() || (this.tmp.ready_audio = !0), $("[tyrano='config']").each(function () {
      var t = $(this).attr("key"),
        a = $(this).val();
      that.kag.config[t] = "" + a
    }), this.kag.config.vchat && "true" == this.kag.config.vchat && (this.kag.config.ScreenCentering = "false", this.kag.config.ScreenRatio = "fix", this.kag.stat.vchat.is_active = !0, $("#vchat_base").css({
      "background-color": "#EEEEEE",
      overflow: "scroll"
    }), $("#vchat_base").show(), $("body").get(0).ontouchmove = "", this.stat.vertical = "false", this.kag.config.vertical = "false", this.stat.vertical = "false", this.kag.ftag.startTag("vchat_in", {}), $("#vchat_base").on("click", t => {
      $(".layer_event_click").trigger("click"), t.preventDefault()
    })), this.kag.config.vchatMenuVisible && "true" == this.kag.config.vchatMenuVisible && setTimeout(function () {
      ! function () {
        var t = 0,
          a = $("<div id='player_menu_button' class='player_menu_area' style='display:none;opacity:0.6;border-radius:5px;padding:10px;margin:10px;cursor:pointer;position:absolute;left:0px;top:0px;background-color:white;font-size:2em'><span style='color:#6495ED'>メニュー</span></div>"),
          e = $("<div style='display:none;position:absolute;left:10px;top:10px;font-size:2em'></div>"),
          s = $("<div class='player_menu_area' id='player_end_button' style='opacity:0.6;border-radius:5px;padding:10px;margin:10px 10px 10px 10px;cursor:pointer;left:0px;top:0px;background-color:white;'><span style='color:#6495ED'>タイトルへ</span></div>"),
          i = $("<div class='player_menu_area' id='player_auto_button' style='opacity:0.6;border-radius:5px;padding:10px;margin:10px 10px 10px 10px;cursor:pointer;left:0px;top:0px;background-color:white;'><span style='color:#6495ED'>オート</span></div>"),
          n = $("<div class='player_menu_area' id='player_skip_button' style='opacity:0.6;border-radius:5px;padding:10px;margin:10px 10px 10px 10px;cursor:pointer;left:0px;top:0px;background-color:white;'><span style='color:#6495ED'>スキップ</span></div>");

        function r() {
          e.hide(), a.hide(), t = 0
        }
        e.append(s), e.append(i), e.append(n), a.click(function (t) {
          a.hide(), e.show()
        }), s.click(function (t) {
          r(), location.reload(), t.stopPropagation()
        }), i.click(function (t) {
          r(), TYRANO.kag.ftag.startTag("autostart", {}), t.stopPropagation()
        }), n.click(function (t) {
          r(), TYRANO.kag.ftag.startTag("skipstart", {}), t.stopPropagation()
        }), $("body").append(a), $("body").append(e), $("#tyrano_base").on("click.player", function () {
          t > 8 && r(), t = 0
        }), setInterval(function () {
          9 == t && a.show(), t++
        }, 1e3)
      }(), $("#tyrano_base").on("click.player", function () {
        player_back_cnt = 0
      })
    }, 1e3);
    var first_scenario_file = "first.ks";
    $("#first_scenario_file").length > 0 && (first_scenario_file = $("#first_scenario_file").val());
    var array_scripts = [];
    "true" == this.kag.config.use3D && (array_scripts = ["./tyrano/libs/three/three.js", "./tyrano/libs/three/loader/GLTFLoader.js", "./tyrano/libs/three/loader/OBJLoader.js", "./tyrano/libs/three/loader/MTLLoader.js", "./tyrano/libs/three/controls/OrbitControls.js", "./tyrano/libs/three/classes/ThreeModel.js"]), $.getMultiScripts(array_scripts, () => {
      this.loadScenario(first_scenario_file, function (t) {
        that.ftag.buildTag(t)
      })
    }), this.kag.is_studio && that.studio.complete(this)
  },
  pushBackLog: function (t, a) {
    if (0 != this.stat.log_write) {
      a = a || "add";
      var e = parseInt(this.kag.config.maxBackLogNum);
      if (!(e < 1)) {
        if (1 == this.kag.stat.log_clear && (a = "add", this.kag.stat.log_clear = !1), "join" == a) {
          var s = this.variable.tf.system.backlog.length - 1;
          if (s >= 0) {
            var i = this.variable.tf.system.backlog[s];
            this.variable.tf.system.backlog[this.variable.tf.system.backlog.length - 1] = i + t
          } else this.variable.tf.system.backlog.push(t)
        } else this.variable.tf.system.backlog.push(t);
        this.stat.current_save_str = this.variable.tf.system.backlog[this.variable.tf.system.backlog.length - 1], e < this.variable.tf.system.backlog.length && this.variable.tf.system.backlog.shift()
      }
    }
  },
  setTitle: function (t) {
    this.stat.title = t, document.title = t
  },
  pushAnimStack: function () {
    this.kag.tmp.num_anim++
  },
  backTitle: function () {
    "appJsInterface" in window ? appJsInterface.finishGame() : "function" == typeof TyranoPlayer ? webkit.messageHandlers.backHandler.postMessage("endgame") : $.confirm($.lang("go_title"), function () {
      location.href = "./index.html"
    }, function () {
      return !1
    })
  },
  cutTimeWithSkip: function (t) {
    return 1 == this.kag.stat.is_skip && "true" == this.kag.config.skipEffectIgnore ? 70 : t
  },
  readyAudio: function () {
    (this.tmp.ready_audio = !0, $.isNeedClickAudio()) && new Howl({
      src: "./tyrano/audio/silent.mp3",
      volume: .1
    }).play()
  },
  setCursor: function (t) {
    this.stat.current_cursor = t, "default" === t ? $("body").css("cursor", "auto") : $("body").css("cursor", "url(./data/image/" + t + "),default")
  },
  popAnimStack: function () {
    this.kag.tmp.num_anim > 0 && this.kag.tmp.num_anim--, this.kag.tmp.num_anim <= 0 && 1 == this.kag.stat.is_wait_anim && (this.kag.stat.is_wait_anim = !1, this.kag.layer.showEventLayer(), this.kag.ftag.nextOrder())
  },
  loadScenario: function (t, a) {
    var e = this;
    this.stat.is_strong_stop = !0, this.stat.current_scenario = t;
    var s = "";
    if (s = $.isHTTP(t) ? t : "./data/scenario/" + t, e.cache_scenario[s]) {
      if (a) {
        var i = e.cache_scenario[s],
          n = i.array_s,
          r = i.map_label;
        e.stat.map_label = r, e.stat.is_strong_stop = !1, a(n)
      }
    } else $.loadText(s, function (t) {
      var i = e.parser.parseScenario(t);
      e.cache_scenario[s] = i;
      var n = i.array_s,
        r = i.map_label;
      e.stat.map_label = r, e.stat.is_strong_stop = !1, a && a(n)
    })
  },
  getMessageInnerLayer: function () {
    return this.stat.vchat.is_active ? $("#vchat_base").find(".current_vchat") : this.layer.getLayer(this.stat.current_layer, this.stat.current_page).find(".message_inner")
  },
  getMessageOuterLayer: function () {
    return this.layer.getLayer(this.stat.current_layer, this.stat.current_page).find(".message_outer")
  },
  getMessageCurrentSpan: function () {
    return this.layer.getLayer(this.stat.current_layer, this.stat.current_page).find(".message_inner").find("p").find(".current_span")
  },
  setMessageCurrentSpan: function () {
    var t = this.getMessageInnerLayer();
    0 == t.find("p").length && ("true" == this.stat.vertical ? t.append($("<p class='vertical_text'></p>")) : t.append($("<p class=''></p>"))), t.find("p").find(".current_span").length > 0 && (t.find("p").find(".current_span").removeClass("current_span"), this.stat.set_text_span = !1);
    var a = $("<span class='current_span'></span>");
    return t.find("p").append(a), a
  },
  checkMessage: function (t) {
    1 == this.stat.set_text_span && (t.find("p").find(".current_span").removeClass("current_span"), this.stat.set_text_span = !1), 0 == t.find(".current_span").length && t.find("p").append($("<span class='current_span'></span>"))
  },
  appendMessage: function (t, a) {
    t.find("p").find(".current_span").html(a)
  },
  preload: function (t, a) {
    var e = this,
      s = $.getExt(t);
    if ("mp3" == s || "ogg" == s || "m4a" == s) {
      let s = new Howl({
        src: t,
        preload: !0
      });
      s.on("load", function () {
        a && a()
      }), s.on("loaderror", function () {
        e.kag.error("オーディオファイル「" + t + "」が見つかりません。場所はフルパスで指定されていますか？ (例)data/bgm/music.ogg"), a && a()
      })
    } else $("<img />").attr("src", t).on("load", function (t) {
      a && a()
    }).on("error", function (s) {
      e.kag.error("画像ファイル「" + t + "」が見つかりません。場所はフルパスで指定されていますか？ (例)data/fgimage/file.png"), a && a()
    })
  },
  preloadAll: function (t, a) {
    if ("object" == typeof t && t.length >= 0) {
      if (0 == t.length) return void a();
      for (var e = 0, s = 0; s < t.length; s++) this.kag.preload(t[s], function () {
        e++, t.length == e && a()
      })
    } else this.kag.preload(pm.storage, function () {
      a()
    })
  },
  setStyles: function (t, a) {
    for (key in a) a[key] && ("" == a[key] || t.css(key, a[key]));
    return t
  },
  html: function (t, a, e) {
    var s = this;
    if (a = a || {}, this.cache_html[t]) {
      if (e) {
        var i = $.templates(this.cache_html[t]).render(a);
        e($(i))
      }
    } else {
      this.kag.stat.sysview || (this.kag.stat.sysview = {}, this.kag.stat.sysview = {
        save: "./tyrano/html/save.html",
        load: "./tyrano/html/load.html",
        backlog: "./tyrano/html/backlog.html",
        menu: "./tyrano/html/menu.html",
        config: "./tyrano/html/config.html"
      });
      var n = this.kag.stat.sysview[t];
      $.loadText(n, function (i) {
        var n = $.templates(i).render(a);
        s.cache_html[t] = i, e && e($(n))
      })
    }
  },
  error: function (t) {
    if ("true" == this.kag.config["debugMenu.visible"]) {
      var a = "Error:" + this.kag.stat.current_scenario + ":" + (parseInt(this.kag.stat.current_line) + 1) + "行目:" + t;
      $.error_message(a)
    }
  },
  warning: function (t) {
    "true" == this.kag.config["debugMenu.visible"] && alert(t)
  },
  log: function (t) {
    "true" == this.kag.config["debugMenu.visible"] && console.log(t)
  },
  test: function () {}
}, tyrano.plugin.kag.tag = {};
