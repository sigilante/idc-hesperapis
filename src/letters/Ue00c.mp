% U+e00c ı
beginfig(4018) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup peg_pen;
  path line;
  line := (0, 0.25*y_radius) -- (0, -y_radius);
  draw line;

endfig;
