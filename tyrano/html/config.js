
$(function () {
    var baseVolume1 = Math.ceil(tyrano.plugin.kag.variable.sf.vo1_vol * 100 / tyrano.plugin.kag.variable.sf.current_vo_vol);
    var baseVolume2 = Math.ceil(tyrano.plugin.kag.variable.sf.vo2_vol * 100 / tyrano.plugin.kag.variable.sf.current_vo_vol);
    var baseVolume3 = Math.ceil(tyrano.plugin.kag.variable.sf.vo3_vol * 100 / tyrano.plugin.kag.variable.sf.current_vo_vol);
    var baseVolume4 = Math.ceil(tyrano.plugin.kag.variable.sf.vo4_vol * 100 / tyrano.plugin.kag.variable.sf.current_vo_vol);
    var baseVolume5 = Math.ceil(tyrano.plugin.kag.variable.sf.vo5_vol * 100 / tyrano.plugin.kag.variable.sf.current_vo_vol);
    var baseVolume6 = Math.ceil(tyrano.plugin.kag.variable.sf.vo6_vol * 100 / tyrano.plugin.kag.variable.sf.current_vo_vol);
    //BGM
    var current_bgm_vol = parseInt(tyrano.plugin.kag.config.defaultBgmVolume); //システム値取得
    $('#bgm_volume').val(current_bgm_vol); //スライダー初期位置
    $('#spanbgm').html(current_bgm_vol);
    $('#bgm_volume').on('input change', function () {
        current_bgm_vol = Number($(this).val());
        tyrano.plugin.kag.ftag.startTag("bgmopt", { volume: current_bgm_vol });
    });
    //テキスト
    var current_ch_speed = parseInt(tyrano.plugin.kag.config.chSpeed); //システム値取得
    var span_ch_speed = -current_ch_speed + 100 //表示用変数
    $('#text_speed').val(-current_ch_speed); //スライダー初期位置
    $('#spantext').html(span_ch_speed); //初期表示
    $('#text_speed').on('input change', function () {
        span_ch_speed = 100 + parseInt($(this).val());
        $('#spantext').html(span_ch_speed);
        current_ch_speed = -$(this).val();
        tyrano.plugin.kag.ftag.startTag("configdelay", { speed: -$(this).val() });
    });
    //オート
    var current_auto_speed = parseInt(tyrano.plugin.kag.config.autoSpeed); //システム値取得
    var span_auto_speed = (-current_auto_speed + 5500) / 50 //表示用変数
    $('#auto_speed').val(-current_auto_speed); //スライダー初期位置
    $('#spanauto').html(span_auto_speed); //初期表示
    $('#auto_speed').on('input change', function () {
        span_auto_speed = (5500 + parseInt($(this).val())) / 50;
        $('#spanauto').html(span_auto_speed);
        current_auto_speed = -$(this).val();
        tyrano.plugin.kag.ftag.startTag("autoconfig", { speed: -$(this).val() });
    });
    //SE
    if (typeof tyrano.plugin.kag.variable.sf.current_se_vol != "undefined") { tyrano.plugin.kag.variable.tf.current_se_vol = tyrano.plugin.kag.variable.sf.current_se_vol } else { tyrano.plugin.kag.variable.tf.current_se_vol = 20 }
    $('#se_volume').val(tyrano.plugin.kag.variable.tf.current_se_vol); //スライダー初期位置
    $('#se_volume').on('input change', function () {
        tyrano.plugin.kag.variable.tf.current_se_vol = $(this).val();
        tyrano.plugin.kag.variable.sf.current_se_vol = tyrano.plugin.kag.variable.tf.current_se_vol;
        current_se_vol = Number($(this).val());
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: current_se_vol, buf: 0 });
    });
    //ボイスマスター
    if (typeof tyrano.plugin.kag.variable.sf.current_vo_vol != "undefined") { tyrano.plugin.kag.variable.tf.current_vo_vol = tyrano.plugin.kag.variable.sf.current_vo_vol } else { tyrano.plugin.kag.variable.tf.current_vo_vol = 50 }
    $('#vo_volume').val(tyrano.plugin.kag.variable.tf.current_vo_vol); //スライダー初期位置
    $('#vo_volume').on('input change', function () {
        tyrano.plugin.kag.variable.tf.current_vo_vol = $(this).val();
        tyrano.plugin.kag.variable.sf.current_vo_vol = tyrano.plugin.kag.variable.tf.current_vo_vol;
        current_vo_vol = Number($(this).val());
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: current_vo_vol, buf: 7 });
        tyrano.plugin.kag.variable.tf.vo1_vol = Math.ceil(Number($('#vo1_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo1_vol = tyrano.plugin.kag.variable.tf.vo1_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo1_vol, buf: 1 });
        tyrano.plugin.kag.variable.tf.vo2_vol = Math.ceil(Number($('#vo2_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo2_vol = tyrano.plugin.kag.variable.tf.vo2_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo2_vol, buf: 2 });
        tyrano.plugin.kag.variable.tf.vo3_vol = Math.ceil(Number($('#vo3_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo3_vol = tyrano.plugin.kag.variable.tf.vo3_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo3_vol, buf: 3 });
        tyrano.plugin.kag.variable.tf.vo4_vol = Math.ceil(Number($('#vo4_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo4_vol = tyrano.plugin.kag.variable.tf.vo4_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo4_vol, buf: 4 });
        tyrano.plugin.kag.variable.tf.vo5_vol = Math.ceil(Number($('#vo5_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo5_vol = tyrano.plugin.kag.variable.tf.vo5_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo5_vol, buf: 5 });
        tyrano.plugin.kag.variable.tf.vo6_vol = Math.ceil(Number($('#vo6_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo6_vol = tyrano.plugin.kag.variable.tf.vo6_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo6_vol, buf: 6 });
    });
    //ボイス北斗
    if (typeof tyrano.plugin.kag.variable.sf.vo1_vol != "undefined") { tyrano.plugin.kag.variable.tf.vo1_vol = tyrano.plugin.kag.variable.sf.vo1_vol } else { tyrano.plugin.kag.variable.tf.vo1_vol = 100 }
    $('#vo1_volume').val(baseVolume1); //スライダー初期位置
    $('#vo1_volume').on('input change', function () {
        tyrano.plugin.kag.variable.tf.vo1_vol = Math.ceil(Number($('#vo_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo1_vol = tyrano.plugin.kag.variable.tf.vo1_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo1_vol, buf: 1 });
    });
    //ボイス美波
    if (typeof tyrano.plugin.kag.variable.sf.vo2_vol != "undefined") { tyrano.plugin.kag.variable.tf.vo2_vol = tyrano.plugin.kag.variable.sf.vo2_vol } else { tyrano.plugin.kag.variable.tf.vo2_vol = 100 }
    $('#vo2_volume').val(baseVolume2); //スライダー初期位置
    $('#vo2_volume').on('input change', function () {
        tyrano.plugin.kag.variable.tf.vo2_vol = Math.ceil(Number($('#vo_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo2_vol = tyrano.plugin.kag.variable.tf.vo2_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo2_vol, buf: 2 });
    });
    //ボイス清二
    if (typeof tyrano.plugin.kag.variable.sf.vo3_vol != "undefined") { tyrano.plugin.kag.variable.tf.vo3_vol = tyrano.plugin.kag.variable.sf.vo3_vol } else { tyrano.plugin.kag.variable.tf.vo3_vol = 100 }
    $('#vo3_volume').val(baseVolume3); //スライダー初期位置
    $('#vo3_volume').on('input change', function () {
        tyrano.plugin.kag.variable.tf.vo3_vol = Math.ceil(Number($('#vo_volume').val()) * Number($(this).val()) / 110);
        tyrano.plugin.kag.variable.sf.vo3_vol = tyrano.plugin.kag.variable.tf.vo3_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo3_vol, buf: 3 });
    });
    //ボイス七音
    if (typeof tyrano.plugin.kag.variable.sf.vo4_vol != "undefined") { tyrano.plugin.kag.variable.tf.vo4_vol = tyrano.plugin.kag.variable.sf.vo4_vol } else { tyrano.plugin.kag.variable.tf.vo4_vol = 100 }
    $('#vo4_volume').val(baseVolume4); //スライダー初期位置
    $('#vo4_volume').on('input change', function () {
        tyrano.plugin.kag.variable.tf.vo4_vol = Math.ceil(Number($('#vo_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo4_vol = tyrano.plugin.kag.variable.tf.vo4_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo4_vol, buf: 4 });
    });
    //ボイス奏女
    if (typeof tyrano.plugin.kag.variable.sf.vo5_vol != "undefined") { tyrano.plugin.kag.variable.tf.vo5_vol = tyrano.plugin.kag.variable.sf.vo5_vol } else { tyrano.plugin.kag.variable.tf.vo5_vol = 100 }
    $('#vo5_volume').val(baseVolume5); //スライダー初期位置
    $('#vo5_volume').on('input change', function () {
        tyrano.plugin.kag.variable.tf.vo5_vol = Math.ceil(Number($('#vo_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo5_vol = tyrano.plugin.kag.variable.tf.vo5_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo5_vol, buf: 5 });
    });
    //ボイス怜人
    if (typeof tyrano.plugin.kag.variable.sf.vo6_vol != "undefined") { tyrano.plugin.kag.variable.tf.vo6_vol = tyrano.plugin.kag.variable.sf.vo6_vol } else { tyrano.plugin.kag.variable.tf.vo6_vol = 100 }
    $('#vo6_volume').val(baseVolume6); //スライダー初期位置
    $('#vo6_volume').on('input change', function () {
        tyrano.plugin.kag.variable.tf.vo6_vol = Math.ceil(Number($('#vo_volume').val()) * Number($(this).val()) / 100);
        tyrano.plugin.kag.variable.sf.vo6_vol = tyrano.plugin.kag.variable.tf.vo6_vol;
        tyrano.plugin.kag.ftag.startTag("seopt", { volume: tyrano.plugin.kag.variable.tf.vo6_vol, buf: 6 });
    });
});

$(function () {
    var text_skip = "ON";
    if (tyrano.plugin.kag.config.unReadTextSkip != "true") {
        text_skip = "OFF";
    };
    if (text_skip == "ON") {
        $('#unreadon').prop('checked', true); $('#unreadoff').prop('checked', false);
    } else {
        $('#unreadon').prop('checked', false); $('#unreadoff').prop('checked', true);
    };
    $('#unreadon').change(function () {
        if ($(this).prop('checked')) {
            text_skip = "ON";
            tyrano.plugin.kag.ftag.startTag("config_record_label", { skip: "true" });
        } else {
            text_skip = "OFF";
            tyrano.plugin.kag.ftag.startTag("config_record_label", { skip: "false" });
        }
    });
    $('#unreadoff').change(function () {
        if ($(this).prop('checked')) {
            text_skip = "OFF";
            tyrano.plugin.kag.ftag.startTag("config_record_label", { skip: "false" });
        } else {
            text_skip = "ON";
            tyrano.plugin.kag.ftag.startTag("config_record_label", { skip: "true" });
        }
    });
});

$(function () {
    var fullscreen = "OFF";

    if ((document.fullscreenElement !== undefined && document.fullscreenElement !== null) || // HTML5 標準
        (document.mozFullScreenElement !== undefined && document.mozFullScreenElement !== null) || // Firefox
        (document.webkitFullscreenElement !== undefined && document.webkitFullscreenElement !== null) || // Chrome・Safari
        (document.webkitCurrentFullScreenElement !== undefined && document.webkitCurrentFullScreenElement !== null) || // Chrome・Safari (old)
        (document.msFullscreenElement !== undefined && document.msFullscreenElement !== null)) { // IE・Edge Legacy
        fullscreen = "ON";
    } else {
        fullscreen = "OFF";
    };

    if (fullscreen == "ON") {
        $('#fullscreenOn').prop('checked', true); $('#fullscreenOff').prop('checked', false);
    } else {
        $('#fullscreenOn').prop('checked', false); $('#fullscreenOff').prop('checked', true);
    };
    $('#fullscreenOn').change(function () {
        if ($(this).prop('checked')) {
            fullscreen = "ON";
            tyrano.plugin.kag.menu.screenFull();
        } else {
            fullscreen = "OFF";
        }
    });
    $('#fullscreenOff').change(function () {
        if ($(this).prop('checked')) {
            fullscreen = "OFF";
            tyrano.plugin.kag.menu.screenFull();
        } else {
            fullscreen = "ON";
        }
    });
});
$('.config_button_hover').mouseover(function () {
    tyrano.plugin.kag.ftag.startTag("playse", { storage: "se/harmonics.ogg" })
});



$('.content1').on('click', function () {
    $('#border3, #border6').hide();
    $('#border4, #border5').show();
    $('#tab_button1').css("color", "white");
    $('#tab_button2').css('color', '#606589');
});
$('.content2').on('click', function () {
    $('#border4, #border5').hide();
    $('#border3, #border6').show();
    $('#tab_button2').css("color", "white");
    $('#tab_button1').css('color', '#606589');
});

$('.tab-content>div').hide();
$('.tab-content>div').first().slideDown();
$('.tab-buttons span').click(function () {
    var thisclass = $(this).attr('class');
    $('#lamp').removeClass().addClass(thisclass);
    $('.tab-content>div').each(function () {
        if ($(this).hasClass(thisclass)) {
            $(this).fadeIn(800);
        }
        else {
            $(this).hide();
        }
    });
});

$('.config_quit').click(function () { tyrano.plugin.kag.ftag.startTag("close") });

var tabText;
var configMessage;
var configBorder;
var voiceName;
if (TYRANO.kag.variable.sf.trans == 2) {
    tabText = ['Configuración', '&nbsp;Configuración&nbsp;de&nbsp;Voces'];
    configMessage = ['Volumen BGM', 'Volumen SE', 'Volumen de Voces', 'Velocidad Texto', 'Velocidad Auto', 'Skip sin leer?', 'Fullscreen'];
    configBorder = [
        { top: '299px', left: '912px', width: '880px', height: '620px' }
        , { top: '299px', left: '300px', width: '320px', height: '622px' }
        , { top: '299px', left: '300px', width: '242px', height: '622px' }
        , { top: '299px', left: '543px', width: '400px', height: '622px' }
        , { top: '234px', left: '300p', width: '240px', height: '64px' }
        , { top: '234px', left: '540px', width: '370px', height: '64px' }
    ];
    voiceName = [
        'Kagaya <span>Hokuto</span>', 'Kuruse <span>Minami</span>', 'Takamura <span>Seiji</span>',
        'Hoshina <span>Nao</span>', 'Souma <span>Reito</span>', 'Amamiya <span>Kaname</span>'
    ];
    $('#tab_button1').css('margin-left', '118px');
    $('#tab_button2').css('margin-left', '24px');
    $('#title_logo').attr('src', 'tyrano/images/system/logo_es.png');
} else if (TYRANO.kag.variable.sf.trans == 1) {
    tabText = ['Settings', 'Voice&nbsp;Settings'];
    configMessage = ['BGM Volume', 'SE Volume', 'Voice Volume', 'Text Speed', 'Automode Speed', 'Skip unread Text', 'Fullscreen'];
    configBorder = [
        { top: '299px', left: '750px', width: '940px', height: '620px' }
        , { top: '299px', left: '300px', width: '300px', height: '622px' }
        , { top: '299px', left: '300px', width: '195px', height: '622px' }
        , { top: '299px', left: '496px', width: '400px', height: '622px' }
        , { top: '234px', left: '300p', width: '194px', height: '64px' }
        , { top: '234px', left: '494px', width: '250px', height: '64px' }
    ];
    voiceName = [
        'Kagaya <span>Hokuto</span>', 'Kuruse <span>Minami</span>', 'Takamura <span>Seiji</span>',
        'Hoshina <span>Nao</span>', 'Souma <span>Reito</span>', 'Amamiya <span>Kaname</span>'
    ];
    $('#title_logo').attr('src', 'tyrano/images/system/logo_en.png');
} else if (TYRANO.kag.variable.sf.trans == 0) {
    tabText = ['一般設定', 'ボイス設定'];
    configMessage = ['BGM 音量', 'SE 音量', 'ボイス音量', 'テキスト速度', 'オートモード速度', '未読スキップ', 'フルスクリーン'];
    configBorder = [
        { top: '299px', left: '711px', width: '940px', height: '620px' }
        , { top: '299px', left: '300px', width: '385.8px', height: '622px' }
        , { top: '299px', left: '300px', width: '195px', height: '622px' }
        , { top: '299px', left: '496px', width: '215px', height: '622px' }
        , { top: '234px', left: '300p', width: '194px', height: '64px' }
        , { top: '234px', left: '494px', width: '214px', height: '64px' }
    ];
    voiceName = [
        '加賀屋 <span>北斗</span>', '来瀬 <span>美波</span>', '高村 <span>清二</span>',
        '保科 <span>七音</span>', '草間 <span>令人</span>', '天宮 <span>奏女</span>'
    ];
    $('.config_voice_name_trans').hide();
    $('#tab_button2').css('margin-left', '6px');
}
$('.config_body').find('.range_text').each(function (index) {
    $(this).html(configMessage[index]);
})
$('.border').each(function (index) {
    $(this).css(configBorder[index]);
})
$('.config_voice_name').each(function (index) {
    $(this).html(voiceName[index]);
})
$('#tab_button1').html(tabText[0]);
$('#tab_button2').html(tabText[1]);