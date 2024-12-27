% U+10401 𐐁
beginfig(401);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pen hair_pen ;   hair_pen   = pencircle scaled (0.5*pen_height);
  pickup thin_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.0 * y_radius) shifted (0, 0.5*y_radius);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.0 * y_radius) shifted (0, -0.5*y_radius);
  path top_segment, bottom_segment;
  top_segment := inner_circle_hi cutbefore point 0.2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 4.2 of inner_circle_lo cutafter point 7.5 of inner_circle_lo;

  path inner_circle_h, inner_circle_l;
  inner_circle_h := fullcircle xscaled (1.2 * (x_radius+0.4*pen_height)) yscaled (2 * (y_radius+0.0*pen_height))  yscaled 0.5 shifted (0, 0.5*y_radius);
  inner_circle_l := fullcircle xscaled (1.2 * (x_radius+0.4*pen_height)) yscaled (2 * (y_radius+0.0*pen_height))  yscaled 0.5 shifted (0, -0.5*y_radius);
  path inner_shape_upper;
  inner_shape_upper := inner_circle_h cutbefore point 0.2 of inner_circle_h cutafter point 2 of inner_circle_h;
  path inner_shape_lower;
  inner_shape_lower := inner_circle_l cutbefore point 6 of inner_circle_l cutafter point 7.8 of inner_circle_l;

  path rhs_up, rhs_bt;
  rhs_up := inner_shape_upper;
  rhs_bt := inner_shape_lower;
  draw rhs_up;
  draw rhs_bt;

  pickup thin_pen;
  path outer_circle_hi, outer_circle_lo;
  outer_circle_hi := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius)  yscaled 0.5 shifted (0, 0.5*y_radius);
  outer_circle_lo := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius)  yscaled 0.5 shifted (0, -0.5*y_radius);
  path top_left_segment, bot_left_segment;
  top_left_segment := outer_circle_hi cutbefore point 2 of outer_circle_hi cutafter point 6 of outer_circle_hi;
  bot_left_segment := outer_circle_lo cutbefore point 2 of outer_circle_lo cutafter point 6 of outer_circle_lo;

  draw top_left_segment;
  draw bot_left_segment;

  path top_left_side, bot_left_side;
  top_left_side := (outer_circle_hi cutbefore point 2 of outer_circle_hi cutafter point 6 of outer_circle_hi)
                   .. reverse (inner_circle_hi cutafter point 6 of inner_circle_hi cutbefore point 2 of inner_circle_hi)
              .. cycle;
  bot_left_side := (outer_circle_lo cutbefore point 2 of outer_circle_lo cutafter point 6 of outer_circle_lo)
                   .. reverse (inner_circle_lo cutafter point 6 of inner_circle_lo cutbefore point 2 of inner_circle_lo)
                   .. cycle;
  draw top_left_side;
  fill top_left_side;
  draw bot_left_side;
  fill bot_left_side;

  path line;
  line := (0,0) -- (0.24*x_radius, 0);
  draw line;
endfig;
