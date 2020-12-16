;@position vertical=true
[image storage="_24_3" page=fore layer=base]¥
*first
[cm]¥
選択肢テスト

[link target=*sel1]選択肢１[endlink]
[link target=*sel2]選択肢２[endlink] [link target=*sel2]選択肢２[endlink]
[link target=*sel2]選択肢２[endlink] [link target=*sel2]選[font size=40]択[resetfont]肢２[endlink]
[link exp="kag.restoreBookMark(0,true)"]栞０をたどる[endlink]
[s]

*sel1
[cm]¥
選択肢１が選択されました。[l]¥
[jump target=*first]¥

*sel2
[cm]¥
選択肢２が選択されました。[l]¥
[jump target=*first]¥


