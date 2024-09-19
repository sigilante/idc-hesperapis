% Base font parameters
numeric font_size, pen_width, pen_height, x_height;
font_size  := 72pt;
pen_width  := 0.12 * font_size;
pen_height := 0.08 * font_size;
x_height   := 0.5 * font_size;

% Pens
pen square_pen ; square_pen = pensquare scaled pen_width;
pen thin_pen ;   thin_pen   = pencircle scaled pen_height;
pen fat_pen ;    fat_pen    = pencircle scaled pen_width;
pen flat_pen ;   flat_pen   = makepen ((0,0)--(pen_width,0));
pen tall_pen ;   tall_pen   = makepen ((0,0)--(0,1.75*pen_width));

% Letters
input letters/U10400.mp; % Deseret Capital Letter Long I (𐐀)
input letters/U10403.mp;
input letters/U10404.mp; % Deseret Capital Letter Long O (𐐄)
input letters/U10405.mp; % Deseret Capital Letter Long Oo (𐐅)
input letters/U10406.mp;
input letters/U10407.mp;
input letters/U10408.mp;
input letters/U10409.mp;
input letters/U1040a.mp;
input letters/U1040b.mp;
input letters/U1040c.mp;

end
