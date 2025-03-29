dim x as double=200
dim y as double=100
'eu a4
dim colors as integer=14
dim colors2 as integer=0
dim colors3 as integer=6
dim grid as double=47.2
dim grid2 as double=grid/10
dim grid3 as double=grid/2
dim n as double=0
dim nn as double=0
dim counter as integer=0
dim counter2 as integer=0
dim counter3 as integer=0
dim t as integer=1
dim fts(0 to 2000) as double
dim ft(0 to 2000) as double
dim ftt as double=0.0
dim a as string=""
dim aa as string=""
dim ccc1 as integer
dim ccc as integer
color 0,colors3
cls 

print "creat..."
input "file to print sums ? ",a
fts(0)=0.0
ft(0)=0.0
ftt=0.0
ccc=1
aa=""
print a
open a for input as #1
while t
        line input #1, aa
        print aa
        fts(ccc)=val(ltrim(rtrim(aa)))
        print(fts(ccc))
        ftt=ftt+fts(ccc)
        ft(ccc)=ftt
        ccc=ccc+1
        if eof(1) then t=0
wend
close #1
screen 12
color 0,colors
cls
y=8*(ccc+3)

dim graphic as any ptr= imagecreate(x, y, colors,4)

color 0

    counter=0
    counter2=0
    counter3=0
    for n=0 to ccc
        
        
        Draw String graphic,(5,n*8+8),rtrim(ltrim("="+str(ft(n))+"="+str(fts(n)))),colors2
    
    next
    

bsave "my.bmp",graphic
ImageDestroy graphic