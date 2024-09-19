% U+10406 𐐆
beginfig(406) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;
  path line;
  line := (0, y_radius) -- (0, -y_radius);
  draw line;

  pickup tall_pen;
  path bar;
  bar := (-.5*x_radius,.25*y_radius) -- (.5*x_radius,-.25*y_radius);
  draw bar;
endfig;
