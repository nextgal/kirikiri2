@call storage="rain.ks"
@image layer=base page=fore storage=d:¥temp¥testbg02
*start1|雨は非表示
雨をふらせます[l]
@backlay
@raininit forevisible=false backvisible=true
@trans method=crossfade time=2000
@wt
;
;@jump target=*test
;
*start2|雨は表示中
雨を表示中です。[l]どれどれ。[l]どれどれ。[l]
みゅみゅみゅみゅみゅみゅみゅみゅ[l]
背景を入れ替えます[l]
@backlay
@image layer=base page=back storage=d:¥temp¥testbg01
@trans method=crossfade time=2000
@wt
@l
@backlay
@image layer=base page=back storage=d:¥temp¥testbg02
@trans children=false method=crossfade time=2000
@wt
@l
雨をやませます[l]
@backlay
@rainopt backvisible=false
@trans method=crossfade time=2000
@wt
@rainuninit
@jump target=*start1



*test
@layopt layer=message0 page=fore visible=false
@backlay
@image layer=base page=back storage=_24
@trans children=false method=crossfade time=2000
@wt
@backlay
@image layer=base page=back storage=_24_3
@trans children=false method=crossfade time=2000
@wt
@jump target=*test

