%%bash
fig_name=test_basemap_p
fig_fmt=png
gmt begin $fig_name $fig_fmt
gmt gmtset MAP_FRAME_TYPE=fancy+
fig_width=14
lon_min=-75
lon_max=-60
lat_min=-50
lat_max=-40
# 方位角
azimuth=135
# 仰角
elevation=90
range_lon_lat=$lon_min/$lon_max/$lat_min/$lat_max
gmt basemap -JM${fig_width}c -R$range_lon_lat -Ba5f1 -BWSen+t"(a) without -p" -TdjBL+o0c/0c+w1.5c+f+l,E,,N
gmt basemap -B -BWSen+t"(b) -p"$azimuth"/"$elevation -TdjBL+o0c/0c+w1.5c+f+l,E,,N -X16c -p${azimuth}/${elevation}
# 更改仰角
elevation=45
gmt basemap -B -BWSen+t"(c) -p"$azimuth"/"$elevation -TdjBL+o0c/0c+w1.5c+f+l,E,,N -X19c -p${azimuth}/${elevation}
gmt end