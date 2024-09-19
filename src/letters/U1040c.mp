% U+1040c 𐐌
beginfig(4002) ;
x_radius := 0.4 * font_size;
y_radius := 0.5 * font_size;

numeric half_x;
half_y := 0.4 * x_height;

pickup thin_pen;
path line;
line := reverse ((0, y_radius) -- (0, -half_y));

draw line;

endfig;
