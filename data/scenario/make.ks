;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;
[seopt volume="&sf.current_se_vol" effect=true]
[seopt buf=1 volume="&sf.vo1_vol" effect=true]
[seopt buf=2 volume="&sf.vo2_vol" effect=true]
[seopt buf=3 volume="&sf.vo3_vol" effect=true]
[seopt buf=4 volume="&sf.vo4_vol" effect=true]
[seopt buf=5 volume="&sf.vo5_vol" effect=true]
[seopt buf=6 volume="&sf.vo6_vol" effect=true]
[seopt buf=8 volume="&sf.current_se_vol" effect=true]
[seopt buf=9 volume="&sf.current_se_vol" effect=true]

;make.ks はロード時にcallとして呼ばれるため、return必須です。
[return]

