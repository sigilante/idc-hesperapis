% Base font parameters
numeric font_size, pen_width, pen_height, x_height;
font_size  := 72pt;
pen_width  := 0.12 * font_size;
pen_height := 0.08 * font_size;
x_height   := 0.5 * font_size;
warningcheck := 0;  % figure numbers run to codepoint mod 32768, safe for SVG output

% Every letter sets these to the same values; the punctuation uses them too.
numeric x_radius, y_radius;
x_radius := 0.4 * font_size;
y_radius := 0.5 * font_size;

% Pens, all derived from pen_width and pen_height. stress_pen is a broad nib
% held level: thick on the upright parts of a curve, thin across the top and
% bottom, as the round letters are (cf. U+10404), for the digits and curved
% punctuation.
def define_pens =
  pen square_pen ; square_pen := pensquare scaled pen_width;
  pen peg_pen ;    peg_pen    := pensquare scaled pen_height;
  pen thin_pen ;   thin_pen   := pencircle scaled pen_height;
  pen fat_pen ;    fat_pen    := pencircle scaled pen_width;
  pen flat_pen ;   flat_pen   := makepen ((0,0)--(pen_width,0));
  pen tall_pen ;   tall_pen   := makepen ((0,0)--(0,1.75*pen_width));
  pen stress_pen ; stress_pen := pencircle xscaled (1.25 * pen_width) yscaled pen_height;
enddef;
define_pens;

% Minuscules are the capitals shrunk to min_scale about the baseline. Inside a
% minuscule's figure, use_min_pens sets pen_width and pen_height to 1/min_scale
% of their values and redefines the pens, so after shrink_to_min every stroke
% matches the capitals'. Both work within the current figure only (beginfig
% opens a group).
numeric min_scale; min_scale := 0.8;
numeric min_pen_width_, min_pen_height_;
def use_min_pens =
  min_pen_width_ := pen_width / min_scale;
  min_pen_height_ := pen_height / min_scale;
  save pen_width, pen_height, square_pen, peg_pen, thin_pen, fat_pen, flat_pen, tall_pen, stress_pen;
  numeric pen_width, pen_height;
  pen_width := min_pen_width_;
  pen_height := min_pen_height_;
  define_pens;
enddef;
def shrink_to_min =
  currentpicture := currentpicture scaled min_scale shifted (0, (min_scale - 1) * y_radius);
enddef;

% Spacing. The capitals leave their sides to dtf's default ([metrics]
% sidebearing: 50 of the 700-unit cap height, here font_size); minuscules take
% it at min_scale, and other glyphs set theirs from it.
numeric default_side, space_width;
default_side := (50/700) * font_size;
space_width  := (250/800) * font_size;   % the 1.0 font's, 250 of its 800-unit cap height

% Punctuation parts. dot_d is a full stop's diameter, about the thick side of
% a round letter. comma_mark(s) is a picture of a comma with its dot centred on
% the origin, the tail falling to the left (s = 1) or, built mirrored, to the
% right (s = -1); the quotation marks and grave accent are it raised or turned.
% wedge(top, bot, wt, wb) is a tapered upright from wt wide at top to wb at bot.
% Figures, math signs and brackets sit about the middle of the cap height,
% y = 0; dw is a figure's half-width along its centreline.
numeric dot_d, dw, fig_top;
dot_d := 1.5 * pen_width;
dw := 0.26 * font_size;
fig_top := y_radius - 0.5 * pen_height;   % a figure's top and bottom centreline
def dot_at(expr z) = fill fullcircle scaled dot_d shifted z enddef;
vardef comma_mark(expr s) =
  image(
    fill fullcircle scaled dot_d;
    pickup thin_pen;
    draw (s * (0.5dot_d - 0.5pen_height), 0){down}
         .. (-s * 0.3dot_d, -1.6dot_d){dir (270 - 45s)};
  )
enddef;
numeric comma_mid; comma_mid := -0.55dot_d;   % halfway down a comma_mark
vardef wedge(expr top, bot, wt, wb) =
  (xpart top - 0.5wt, ypart top) -- (xpart top + 0.5wt, ypart top)
  -- (xpart bot + 0.5wb, ypart bot) -- (xpart bot - 0.5wb, ypart bot) -- cycle
enddef;
def draw_wedge(expr top, bot, wt, wb) =
  pickup thin_pen;
  fill wedge(top, bot, wt, wb);
  draw wedge(top, bot, wt, wb);
enddef;

% Format parameters
outputtemplate := "%j-%c.svg";
outputformat := "svg";

% Letters
input src/letters/U10400.mp; % Deseret Capital Letter Long I (𐐀)
input src/letters/U10401.mp; % Deseret Capital Letter Long E (𐐁)
input src/letters/U10402.mp; % Deseret Capital Letter Long A (𐐂)
input src/letters/U10403.mp; % Deseret Capital Letter Long Ah (𐐃)
input src/letters/U10404.mp; % Deseret Capital Letter Long O (𐐄)
input src/letters/U10405.mp; % Deseret Capital Letter Long Oo (𐐅)
input src/letters/U10406.mp; % Deseret Capital Letter Short I (𐐆)
input src/letters/U10407.mp; % Deseret Capital Letter Short E (𐐇)
input src/letters/U10408.mp; % Deseret Capital Letter Short A (𐐈)
input src/letters/U10409.mp; % Deseret Capital Letter Short Ah (𐐉)
input src/letters/U1040a.mp; % Deseret Capital Letter Short O (𐐊) 4000
input src/letters/U1040b.mp; % Deseret Capital Letter Short Oo (𐐋) 4001
input src/letters/U1040c.mp; % Deseret Capital Letter Ay (𐐌) 4002
input src/letters/U1040d.mp; % Deseret Capital Letter Ow (𐐍) 4003
input src/letters/U1040e.mp; % Deseret Capital Letter W (𐐎) 4004
input src/letters/U1040f.mp; % Deseret Capital Letter Yee (𐐏) 4005
input src/letters/U10410.mp; % Deseret Capital Letter H (𐐐)
input src/letters/U10411.mp; % Deseret Capital Letter Pe (𐐑)
input src/letters/U10412.mp; % Deseret Capital Letter Bee (𐐒)
input src/letters/U10413.mp; % Deseret Capital Letter Tee (𐐓)
input src/letters/U10414.mp; % Deseret Capital Letter Dee (𐐔)
input src/letters/U10415.mp; % Deseret Capital Letter Chee (𐐕)
input src/letters/U10416.mp; % Deseret Capital Letter Jee (𐐖)
input src/letters/U10417.mp; % Deseret Capital Letter Kay (𐐗)
input src/letters/U10418.mp; % Deseret Capital Letter Gay (𐐘)
input src/letters/U10419.mp; % Deseret Capital Letter Ef (𐐙)
input src/letters/U1041a.mp; % Deseret Capital Letter Vee (𐐚) 4006
input src/letters/U1041b.mp; % Deseret Capital Letter Eth (𐐛) 4007
input src/letters/U1041c.mp; % Deseret Capital Letter Thee (𐐜) 4008
input src/letters/U1041d.mp; % Deseret Capital Letter Es (𐐝) 4009
input src/letters/U1041e.mp; % Deseret Capital Letter Zee (𐐞) 4010
input src/letters/U1041f.mp; % Deseret Capital Letter Esh (𐐟) 4011
input src/letters/U10420.mp; % Deseret Capital Letter Zhee (𐐠)
input src/letters/U10421.mp; % Deseret Capital Letter Er (𐐡)
input src/letters/U10422.mp; % Deseret Capital Letter El (𐐢)
input src/letters/U10423.mp; % Deseret Capital Letter Em (𐐣)
input src/letters/U10424.mp; % Deseret Capital Letter En (𐐤)
input src/letters/U10425.mp; % Deseret Capital Letter Eng (𐐥)
input src/letters/U10426.mp; % Deseret Capital Letter Oi (𐐦)
input src/letters/U10427.mp; % Deseret Capital Letter Ew (𐐧)

input src/letters/Ue000.mp; % Deseret Capital Letter Variant MULE 4012
input src/letters/Ue001.mp; % Deseret Capital Letter Variant CHOICE 4013
input src/letters/Ue002.mp; % Deseret Capital Letter SQUARE 4014
input src/letters/Ue003.mp; % Deseret Capital Letter Variant Open Vee 4015
input src/letters/Ue004.mp; % Deseret Capital Letter Variant Looped Short Ah 4016
input src/letters/Ue005.mp; % Deseret Capital Letter Variant Looped Shart A 4017
input src/letters/Ue00c.mp; % Deseret Capital Letter Variant 4018

% Minuscules
input src/letters/U10428.mp; % Deseret Small Letter Long I (𐐨)
input src/letters/U10429.mp; % Deseret Small Letter Long E (𐐩)
input src/letters/U1042a.mp; % Deseret Small Letter Long A (𐐪)
input src/letters/U1042b.mp; % Deseret Small Letter Long Ah (𐐫)
input src/letters/U1042c.mp; % Deseret Small Letter Long O (𐐬)
input src/letters/U1042d.mp; % Deseret Small Letter Long Oo (𐐭)
input src/letters/U1042e.mp; % Deseret Small Letter Short I (𐐮)
input src/letters/U1042f.mp; % Deseret Small Letter Short E (𐐯)
input src/letters/U10430.mp; % Deseret Small Letter Short A (𐐰)
input src/letters/U10431.mp; % Deseret Small Letter Short Ah (𐐱)
input src/letters/U10432.mp; % Deseret Small Letter Short O (𐐲)
input src/letters/U10433.mp; % Deseret Small Letter Short Oo (𐐳)
input src/letters/U10434.mp; % Deseret Small Letter Ay (𐐴)
input src/letters/U10435.mp; % Deseret Small Letter Ow (𐐵)
input src/letters/U10436.mp; % Deseret Small Letter Wu (𐐶)
input src/letters/U10437.mp; % Deseret Small Letter Yee (𐐷)
input src/letters/U10438.mp; % Deseret Small Letter H (𐐸)
input src/letters/U10439.mp; % Deseret Small Letter Pee (𐐹)
input src/letters/U1043a.mp; % Deseret Small Letter Bee (𐐺)
input src/letters/U1043b.mp; % Deseret Small Letter Tee (𐐻)
input src/letters/U1043c.mp; % Deseret Small Letter Dee (𐐼)
input src/letters/U1043d.mp; % Deseret Small Letter Chee (𐐽)
input src/letters/U1043e.mp; % Deseret Small Letter Jee (𐐾)
input src/letters/U1043f.mp; % Deseret Small Letter Kay (𐐿)
input src/letters/U10440.mp; % Deseret Small Letter Gay (𐑀)
input src/letters/U10441.mp; % Deseret Small Letter Ef (𐑁)
input src/letters/U10442.mp; % Deseret Small Letter Vee (𐑂)
input src/letters/U10443.mp; % Deseret Small Letter Eth (𐑃)
input src/letters/U10444.mp; % Deseret Small Letter Thee (𐑄)
input src/letters/U10445.mp; % Deseret Small Letter Es (𐑅)
input src/letters/U10446.mp; % Deseret Small Letter Zee (𐑆)
input src/letters/U10447.mp; % Deseret Small Letter Esh (𐑇)
input src/letters/U10448.mp; % Deseret Small Letter Zhee (𐑈)
input src/letters/U10449.mp; % Deseret Small Letter Er (𐑉)
input src/letters/U1044a.mp; % Deseret Small Letter El (𐑊)
input src/letters/U1044b.mp; % Deseret Small Letter Em (𐑋)
input src/letters/U1044c.mp; % Deseret Small Letter En (𐑌)
input src/letters/U1044d.mp; % Deseret Small Letter Eng (𐑍)
input src/letters/U1044e.mp; % Deseret Small Letter Oi (𐑎)
input src/letters/U1044f.mp; % Deseret Small Letter Ew (𐑏)

% Small variants
input src/letters/Ue006.mp; % Deseret Small Letter Variant Mule
input src/letters/Ue007.mp; % Deseret Small Letter Variant Choice
input src/letters/Ue008.mp; % Deseret Small Letter Variant Square
input src/letters/Ue009.mp; % Deseret Small Letter Variant Open Vee
input src/letters/Ue00a.mp; % Deseret Small Letter Variant Looped Short Ah
input src/letters/Ue00b.mp; % Deseret Small Letter Variant Looped Short A
input src/letters/Ue00d.mp; % Deseret Small Letter Variant Schwa

% Space, punctuation and figures
input src/letters/U0020.mp; % Space
input src/letters/U0021.mp; % Exclamation Mark (!)
input src/letters/U0022.mp; % Quotation Mark (")
input src/letters/U0023.mp; % Number Sign (#)
input src/letters/U0024.mp; % Dollar Sign ($)
input src/letters/U0025.mp; % Percent Sign (%)
input src/letters/U0026.mp; % Ampersand (&)
input src/letters/U0027.mp; % Apostrophe (')
input src/letters/U0028.mp; % Left Parenthesis (()
input src/letters/U0029.mp; % Right Parenthesis ())
input src/letters/U002a.mp; % Asterisk (*)
input src/letters/U002b.mp; % Plus Sign (+)
input src/letters/U002c.mp; % Comma (,)
input src/letters/U002d.mp; % Hyphen-Minus (-)
input src/letters/U002e.mp; % Full Stop (.)
input src/letters/U002f.mp; % Solidus (/)
input src/letters/U0030.mp; % Digit Zero (0)
input src/letters/U0031.mp; % Digit One (1)
input src/letters/U0032.mp; % Digit Two (2)
input src/letters/U0033.mp; % Digit Three (3)
input src/letters/U0034.mp; % Digit Four (4)
input src/letters/U0035.mp; % Digit Five (5)
input src/letters/U0036.mp; % Digit Six (6)
input src/letters/U0037.mp; % Digit Seven (7)
input src/letters/U0038.mp; % Digit Eight (8)
input src/letters/U0039.mp; % Digit Nine (9)
input src/letters/U003a.mp; % Colon (:)
input src/letters/U003b.mp; % Semicolon (;)
input src/letters/U003c.mp; % Less-Than Sign (<)
input src/letters/U003d.mp; % Equals Sign (=)
input src/letters/U003e.mp; % Greater-Than Sign (>)
input src/letters/U003f.mp; % Question Mark (?)
input src/letters/U0040.mp; % Commercial At (@)
input src/letters/U005b.mp; % Left Square Bracket ([)
input src/letters/U005c.mp; % Reverse Solidus (\)
input src/letters/U005d.mp; % Right Square Bracket (])
input src/letters/U005e.mp; % Circumflex Accent (^)
input src/letters/U005f.mp; % Low Line (_)
input src/letters/U0060.mp; % Grave Accent (`)
input src/letters/U007b.mp; % Left Curly Bracket ({)
input src/letters/U007c.mp; % Vertical Line (|)
input src/letters/U007d.mp; % Right Curly Bracket (})
input src/letters/U007e.mp; % Tilde (~)
input src/letters/U2013.mp; % En Dash (–)
input src/letters/U2014.mp; % Em Dash (—)
input src/letters/U2018.mp; % Left Single Quotation Mark (‘)
input src/letters/U2019.mp; % Right Single Quotation Mark (’)
input src/letters/U201c.mp; % Left Double Quotation Mark (“)
input src/letters/U201d.mp; % Right Double Quotation Mark (”)
input src/letters/U2026.mp; % Horizontal Ellipsis (…)

end
