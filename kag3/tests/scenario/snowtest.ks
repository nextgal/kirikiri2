@call storage="snow.ks"
@image layer=base page=fore storage=_24_3
*start1|雪は非表示
雪をふらせます[l]
@backlay
@snowinit forevisible=false backvisible=true
@trans method=crossfade time=2000
@wt
;
;@jump target=*test
;
*start2|雪は表示中
背景を入れ替えます[l]
@backlay
@image layer=base page=back storage=_24
@trans method=crossfade time=2000
@wt
@l
@backlay
@image layer=base page=back storage=_24_3
@trans children=false method=crossfade time=2000
@wt
@l
雪をやませます[l]
@backlay
@snowopt backvisible=false
@trans method=crossfade time=2000
@wt
@snowuninit
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

