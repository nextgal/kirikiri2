@image layer=base page=fore storage=_24
@wait time=200
*first
@er
@quake
デフォルトの揺れ[l]
@stopquake
停止[l]
@quake hmax=10 vmax=2
横 10 縦 2[l]
@stopquake
停止[l]
@quake hmax=1 vmax=10
横 1 縦 10[l]
@stopquake
停止[l]
@quake time=5000 timemode=ms
5秒間の揺れを待つ
@wq canskip=true
待った[l]
[link target=*first]もう一度[endlink]
