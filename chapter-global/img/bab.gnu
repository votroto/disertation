set term pdfcairo size 12cm,12cm font "Times,12"
set output 'babtree.pdf'

set xtics 1
set ytics 1

set yrange [-0.5:1.5]

f1(x) = (-0.5*(x-0)**2 + 3 - 0.5) / 5
f2(x) = (-2*(x-1.5)**2 + 5 - 0.5) / 5
f3(x) = (-0.6*(x-5)**2 + 3.5 - 0.5) / 5

$optimum << EOD
2.9277 0.08466
EOD

slop(x, x1, y1, x2, y2) = ((y2 - y1) / (x2 - x1)) * x + (y1 - (x1 * (y2 - y1) / (x2 - x1)))

set multiplot

set xrange [0:4]
set origin 0,0.67
set size 1,0.33
plot \
slop(x, 0, f1(0), 4, f1(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f2(0), 4, f2(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f3(0), 4, f3(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f1(0), 4, f1(4)) w l lt rgb "black" notitle,\
slop(x, 0, f2(0), 4, f2(4)) w l lt rgb "black" notitle,\
slop(x, 0, f3(0), 4, f3(4)) w l lt rgb "black" notitle,\
f1(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f2(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f3(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
$optimum w p ls 6 lc rgb "black" notitle

set xrange [0:2]
set origin 0,0.33
set size 0.5,0.33
plot \
slop(x, 0, f1(0), 2, f1(2)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f2(0), 2, f2(2)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f3(0), 2, f3(2)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f1(0), 2, f1(2)) with line lt rgb "black"  notitle,\
slop(x, 0, f2(0), 2, f2(2)) with line lt rgb "black"  notitle,\
slop(x, 0, f3(0), 2, f3(2)) with line lt rgb "black"  notitle,\
f1(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f2(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f3(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle

set xrange [2:4]
set origin 0.5,0.33
set size 0.5,0.33
plot \
slop(x, 2, f1(2), 4, f1(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 2, f2(2), 4, f2(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 2, f3(2), 4, f3(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 2, f1(2), 4, f1(4)) with l lt rgb "black" notitle,\
slop(x, 2, f2(2), 4, f2(4)) with l lt rgb "black" notitle,\
slop(x, 2, f3(2), 4, f3(4)) with l lt rgb "black" notitle,\
f1(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f2(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f3(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
$optimum w p ls 6 lc rgb "black" notitle

set xrange [0:1]
set origin 0,0
set size 0.25,0.33
plot \
slop(x, 0, f1(0), 1, f1(1)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f2(0), 1, f2(1)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f3(0), 1, f3(1)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 0, f1(0), 1, f1(1)) with l lt rgb "black"  notitle,\
slop(x, 0, f2(0), 1, f2(1)) with l lt rgb "black"  notitle,\
slop(x, 0, f3(0), 1, f3(1)) with l lt rgb "black"  notitle,\
f1(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f2(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f3(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle

set xrange [1:2]
set origin 0.25,0
set size 0.25,0.33
plot \
slop(x, 1, f1(1), 2, f1(2)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 1, f2(1), 2, f2(2)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 1, f3(1), 2, f3(2)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 1, f1(1), 2, f1(2)) with l lt rgb "black"  notitle,\
slop(x, 1, f2(1), 2, f2(2)) with l lt rgb "black"  notitle,\
slop(x, 1, f3(1), 2, f3(2)) with l lt rgb "black"  notitle,\
f1(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f2(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f3(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle

set xrange [2:3]
set origin 0.5,0
set size 0.25,0.33
plot \
slop(x, 2, f1(2), 3, f1(3)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 2, f2(2), 3, f2(3)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 2, f3(2), 3, f3(3)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 2, f1(2), 3, f1(3)) with l lt rgb "black"  notitle,\
slop(x, 2, f2(2), 3, f2(3)) with l lt rgb "black"  notitle,\
slop(x, 2, f3(2), 3, f3(3)) with l lt rgb "black"  notitle,\
f1(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f2(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f3(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
$optimum w p ls 6 lc rgb "black" notitle

set xrange [3:4]
set origin 0.75,0
set size 0.25,0.33
plot \
slop(x, 3, f1(3), 4, f1(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 3, f2(3), 4, f2(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 3, f3(3), 4, f3(4)) with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 notitle,\
slop(x, 3, f1(3), 4, f1(4)) with l lt rgb "black"  notitle,\
slop(x, 3, f2(3), 4, f2(4)) with l lt rgb "black"  notitle,\
slop(x, 3, f3(3), 4, f3(4)) with l lt rgb "black"  notitle,\
f1(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f2(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle, \
f3(x) with filledcurves y1=-4 lt rgb "#aaBA0C2F" notitle




set lmargin -1   # automatic lmargin
    unset title
    set origin 0,0
    set size 1,1
    set border 0
    unset tics
    set ylabel "y"
	set xlabel "x"
    plot \
		-10 with filledcurves y1=-4 lt rgb "black" fillstyle pattern 1 t "Relaxed infeasible region",\
		-10 with filledcurves y1=-4 lt rgb "#aaBA0C2F" t "Infeasible region",\
        -10 w p ls 6 lc rgb "black" t "Global optimum"

unset multiplot