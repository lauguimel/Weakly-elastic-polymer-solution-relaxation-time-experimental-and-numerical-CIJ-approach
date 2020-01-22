set terminal epslatex dashed standalone

set output 'rojer_bilan.tex'
set encoding iso_8859_15

set style line 80 lt 1 lc rgb "#000000" lw 0.7

set style line 81 lt 0 lw 0.7  # dashed
set style line 81 lt rgb "#000000"   lw 0.7 # grey

#set grid back linestyle 81

set border 15 back linestyle 80

set xtics  nomirror
set ytics nomirror (0.1,0.2,0.4,0.6,0.8,1)

set log y
set mytics 10    # Makes logscale look good

set style line 1 lt 1 lc rgb "#000000" lw 1.2 pt 6 ps 1.5
set style line 2 lt 2 lc rgb "#000000" lw 2 pt 8 ps 2
set style line 3 lt 4 lc rgb "#000000" lw 1.2 pt 10 ps 1.5
set style line 4 lt 1 lc rgb "#000000" lw 0.4 pt 12 ps 1.5
set style line 5 lt 4 lc rgb "#000000" lw 0.4 pt 10 ps 1.5
set style line 6 lt 1 lc rgb "#000000" lw 0.4 pt 11 ps 1.5
set style line 7 lt 1 lc rgb "#000000" lw 0.4 pt 12 ps 1.5
set style line 8 lt 1 lc rgb "#000000" lw 0.4 pt 13 ps 1.5
set style line 9 lt 1 lc rgb "#000000" lw 0.4 pt 14 ps 1.5
set style line 10 lt 1 lc rgb "#000000" lw 0.4 pt 15 ps 1.5
set style line 11 lt 1 lc rgb "#000000" lw 0.4 pt 18 ps 1.5
set style line 12 lt 1 lc rgb "#000000" lw 0.4 pt 19 ps 1.5

### This is to plot the square. You can skip this ###
# set arrow from 45,6 to 45,6.2 lw 1 lt rgb "#000000" back filled
#set arrow from 45,130 to 45,200 lw 0.7 lt rgb "#000000" back filled
#set arrow from 0.8,0.1 to 1,0.1 lw 0.7 lt rgb "#000000" front nohead
#set arrow from 0.8,0.5 to 1,0.5 lw 0.7 lt rgb "#000000" front nohead
#set arrow from 0.8,0.1 to 0.8,0.5 lw 0.7 lt rgb "#000000" front nohead
#set arrow from 1,0.5 to 1,0.1 lw 0.7 lt rgb "#000000" front nohead
###################################

set xlabel '\LARGE $t / t_b$'
set ylabel '\LARGE $D_P / D_0$'

set key bottom left
set key spacing 1.6

set yrange[0.1:1.2]
#set xrange[14:65]

plot "Newtonien" using 1:8 title '\Large $1-\delta exp(qt)$' w l ls 2, \
"5127" using 1:4 title '\Large Present ink' w p ls 2

#"9651" using 1:3 title 'Encre A' w p ls 1, \
#"9175" using 1:3 title 'Encre B' w p ls 2, \
quit
