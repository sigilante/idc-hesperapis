% U+10420 𐐠
beginfig(420);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pen hair_pen ;   hair_pen   = pencircle scaled (0.5*pen_height);
  pickup thin_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.0 * y_radius) shifted (0, 0.5*y_radius);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.0 * y_radius) shifted (0, -0.5*y_radius);
  path top_segment, bottom_segment;
  draw inner_circle_hi withcolor (1,1,0);
  draw inner_circle_lo withcolor (1,1,0);
  top_segment := inner_circle_hi cutbefore point 0.2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 4.2 of inner_circle_lo cutafter point 7.5 of inner_circle_lo;

endfig;
