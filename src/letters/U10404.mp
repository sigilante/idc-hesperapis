% U+10404 𐐄
beginfig(404) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, half_y-0.5*pen_height);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, -half_y+0.5*pen_height);
  path top_segment, bottom_segment;
  top_segment := inner_circle_hi cutbefore point 0.2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 4.2 of inner_circle_lo cutafter point 7.8 of inner_circle_lo;
  path inner_shape;
  inner_shape := top_segment
                 .. bottom_segment
                 .. cycle;

  draw inner_shape;

  path outer_circle;
  outer_circle   := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius);

  draw outer_circle;

  fill outer_circle;
  unfill inner_shape;
endfig;
