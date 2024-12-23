% U+10423 𐐣
beginfig(423) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pen hair_pen ;   hair_pen   = pencircle scaled (0.5*pen_height);
  pickup hair_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, half_y);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, -half_y);
  path top_segment, bottom_segment;
  top_segment := inner_circle_hi cutbefore point 0.2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 4.2 of inner_circle_lo cutafter point 7.8 of inner_circle_lo;
  path inner_shape;
  inner_shape := top_segment
                 .. bottom_segment
                 .. cycle;

  path inner_circle_h, inner_circle_l;
  inner_circle_h := fullcircle xscaled (1.2 * (x_radius+0.4*pen_height)) yscaled (1.2 * (y_radius+0.4*pen_height)) shifted (0, half_y);
  inner_circle_l := fullcircle xscaled (1.2 * (x_radius+0.4*pen_height)) yscaled (1.2 * (y_radius+0.4*pen_height)) shifted (0, -half_y);
  path inner_shape_upper;
  inner_shape_upper := inner_circle_h cutbefore point 0.5 of inner_circle_h cutafter point 2 of inner_circle_h;
  path inner_shape_lower;
  inner_shape_lower := inner_circle_l cutbefore point 6 of inner_circle_l cutafter point 7.8 of inner_circle_l;

  draw inner_shape_upper;
  draw inner_shape_lower;

  pickup thin_pen;
  path outer_circle;
  outer_circle   := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius);

  path left_segment;
  left_segment := outer_circle cutbefore point 2 of outer_circle cutafter point 6 of outer_circle;

  draw left_segment;

  path left_side;
  left_side := left_segment
               .. reverse (reverse inner_shape cutafter point 7.8 of inner_shape cutbefore point 4.2 of inner_shape)
               .. cycle
             ;
  fill left_side;

  % fill outer_circle;
  unfill inner_shape;

  pickup hair_pen;
  path knob;
  pair p, r;
  numeric theta;
  r = point 0.5 of inner_circle_h;
  theta = angle(r);
  p = ((xpart r) * cosd(theta), (ypart r) * sind(theta));
  knob := fullcircle scaled (0.4*x_radius) shifted (1.15*p);
  draw knob;
  fill knob;

  currentpicture := currentpicture reflectedabout((0,0),(0,y_radius));

  draw currentpicture;

endfig;
