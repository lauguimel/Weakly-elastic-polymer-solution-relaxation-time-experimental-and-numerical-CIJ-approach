set terminal epslatex dashed standalone

set output 'rojer_bilan_zoomed.tex'
set encoding iso_8859_15

set style line 80 lt 1 lc rgb "#000000" lw 0.7
set style line 81 lt 0 lw 0.7  # dashed
set style line 81 lt rgb "#000000"   lw 0.7 # grey

#set grid back linestyle 81

set border 15 back linestyle 80

set xtics nomirror (0.8,0.85,0.9,0.95,1)
set ytics nomirror (0.1,0.2,0.3,0.4,0.5,0.6)

set log y
set mytics 10    # Makes logscale look good

set style line 1 lt 1 lc rgb "#000000" lw 2 pt 6 ps 2
set style line 2 lt 2 lc rgb "#000000" lw 2 pt 8 ps 2 dt 2
set style line 3 lt 4 lc rgb "#000000" lw 2 pt 10 ps 2
set style line 4 lt 1 lc rgb "#000000" lw 0.4 pt 12 ps 1.5
set style line 5 lt 4 lc rgb "#000000" lw 0.4 pt 10 ps 1.5
set style line 6 lt 1 lc rgb "#000000" lw 0.4 pt 11 ps 1.5
set style line 7 lt 1 lc rgb "#000000" lw 0.4 pt 12 ps 1.5
set style line 8 lt 1 lc rgb "#000000" lw 0.4 pt 13 ps 1.5
set style line 9 lt 1 lc rgb "#000000" lw 0.4 pt 14 ps 1.5
set style line 10 lt 1 lc rgb "#000000" lw 0.4 pt 15 ps 1.5
set style line 11 lt 1 lc rgb "#000000" lw 0.4 pt 18 ps 1.5
set style line 12 lt 1 lc rgb "#000000" lw 0.4 pt 19 ps 1.5

set xlabel ' $t / t_b$'
set ylabel ' $D_P / D_0$'

set key top right
set key spacing 1.6

set yrange[0.03:0.6]
set xrange[0.8:1]

plot "5127" using 1:4 title ' Experimental data' w p ls 2, \
"Newtonien" using 1:8 title ' Linear analysis' w l ls 2, \
exp((-x*310/(3*5.6))+15.38) title ' $ \lambda_R = 5.6 \, \mu s$' w l ls 1


#"9651" using 1:3 title ' Ink A' w p ls 1, \
#"9175" using 1:3 title ' Ink B' w p ls 2, \

quit
