# Acme colors

These are the colors used in the Acme text editor by Rob Pike.

I like them.

## Text cols

* Background, yellow (1/3: pale yellow / white): #ffffea
* Selected btn 1, dark yellow: #eeee9e
* Border, dark yellow green: #99994C
* Text, black: #000000


## Tag cols

* Background, blue (1/3: pale blue green / white): #eaffff
* Selected btn 1, pale grey green: #9EEEEE
* Border, purple blue: #8888CC
* Text, black: #000000


## Column buttons (top left drag and re-size corner)

* Default, purple blue: #8888cc
* Modified, medium blue: #000099


## Mouse button selects

* Btn 2
	* Selected, dark red-ish: #aa0000
	* Text, white: #ffffff
* Btn 3
	* Selected, dark green-ish: #006600
	* Text, white: #ffffff


---


## Source code

The mixing of the background colors is explained in the man page of allocimage(3):

	Allocimagemix is used to allocate background colors.  On  8-bit  color-
	mapped  displays, it returns a 2A2 replicated image with one pixel col-
	ored the color one and the other three with three.  (This  simulates  a
	wider range of tones than can be represented by a single pixel value on
	a color-mapped display.)  On true color  displays,  it  returns  a  1A1
	replicated  image whose pixel is the result of mixing the two colors in
	a one to three ratio.

This yields the following:

	tagcols[BACK] = allocimagemix(display, DPalebluegreen, DWhite); /* #EAFFFF */
	textcols[BACK] = allocimagemix(display, DPaleyellow, DWhite); /* #FFFFEA */

I haven't really looked at how the mixing is done, but by the look of it, it's sort of "let us mix and meet half-way (or at ratio 1:3)". The result is pretty darn close for a true color display mix.


### plan9port/src/cmd/acme/acme.c:/^iconinit/

	/* Blue */
	tagcols[BACK] = allocimagemix(display, DPalebluegreen, DWhite);
	tagcols[HIGH] = allocimage(display, Rect(0,0,1,1), screen->chan, 1, DPalegreygreen);
	tagcols[BORD] = allocimage(display, Rect(0,0,1,1), screen->chan, 1, DPurpleblue);
	tagcols[TEXT] = display->black;
	tagcols[HTEXT] = display->black;

	/* Yellow */
	textcols[BACK] = allocimagemix(display, DPaleyellow, DWhite);
	textcols[HIGH] = allocimage(display, Rect(0,0,1,1), screen->chan, 1, DDarkyellow);
	textcols[BORD] = allocimage(display, Rect(0,0,1,1), screen->chan, 1, DYellowgreen);
	textcols[TEXT] = display->black;
	textcols[HTEXT] = display->black;
	
	[...]
	
	button = allocimage(display, r, screen->chan, 0, DNofill);
	draw(button, r, tagcols[BACK], nil, r.min);
	r.max.x -= ButtonBorder;
	border(button, r, ButtonBorder, tagcols[BORD], ZP);

	r = button->r;
	modbutton = allocimage(display, r, screen->chan, 0, DNofill);
	draw(modbutton, r, tagcols[BACK], nil, r.min);
	r.max.x -= ButtonBorder;
	border(modbutton, r, ButtonBorder, tagcols[BORD], ZP);
	r = insetrect(r, ButtonBorder);
	tmp = allocimage(display, Rect(0,0,1,1), screen->chan, 1, DMedblue);
	draw(modbutton, r, tmp, nil, ZP);
	freeimage(tmp);

	r = button->r;
	colbutton = allocimage(display, r, screen->chan, 0, DPurpleblue);

	but2col = allocimage(display, r, screen->chan, 1, 0xAA0000FF);
	but3col = allocimage(display, r, screen->chan, 1, 0x006600FF);


### plan9port/include/draw.h:31,59

	#define 	DOpaque		0xFFFFFFFF
	#define 	DTransparent	0x00000000		/* only useful for allocimage memfillcolor */
	#define 	DBlack		0x000000FF
	#define 	DWhite		0xFFFFFFFF
	#define 	DRed		0xFF0000FF
	#define 	DGreen		0x00FF00FF
	#define 	DBlue		0x0000FFFF
	#define 	DCyan		0x00FFFFFF
	#define 	DMagenta		0xFF00FFFF
	#define 	DYellow		0xFFFF00FF
	#define 	DPaleyellow	0xFFFFAAFF
	#define 	DDarkyellow	0xEEEE9EFF
	#define 	DDarkgreen	0x448844FF
	#define 	DPalegreen	0xAAFFAAFF
	#define 	DMedgreen	0x88CC88FF
	#define 	DDarkblue	0x000055FF
	#define 	DPalebluegreen 0xAAFFFFFF
	#define 	DPaleblue		0x0000BBFF
	#define 	DBluegreen	0x008888FF
	#define 	DGreygreen	0x55AAAAFF
	#define 	DPalegreygreen	0x9EEEEEFF
	#define 	DYellowgreen	0x99994CFF
	#define 	DMedblue		0x000099FF
	#define 	DGreyblue	0x005DBBFF
	#define 	DPalegreyblue	0x4993DDFF
	#define 	DPurpleblue	0x8888CCFF
	
	#define 	DNotacolor	0xFFFFFF00
	#define 	DNofill		DNotacolor
