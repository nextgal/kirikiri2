@call storage="bubble.ks"
@image layer=base page=fore storage=_24_3
*start1|泡は非表示
泡をふらせます[l]
@backlay
@bubbleinit forevisible=false backvisible=true
@trans method=crossfade time=2000
@wt
;
;@jump target=*test
;
*start2|泡は表示中
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
泡をやませます[l]
@backlay
@bubbleopt backvisible=false
@trans method=crossfade time=2000
@wt
@bubbleuninit
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

