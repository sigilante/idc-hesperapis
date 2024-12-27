% U+10416 𐐖
beginfig(416) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pen hair_pen ;   hair_pen   = pencircle scaled (0.5*pen_height);
  pickup thin_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, half_y-0.5*pen_height)  yscaled 0.5 shifted (0, 0.5*y_radius);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, -half_y+0.5*pen_height)  yscaled 0.5 shifted (0, 0.5*y_radius);
  path top_segment, bottom_segment;
  top_segment := inner_circle_hi cutbefore point 0.2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 4.2 of inner_circle_lo cutafter point 7.5 of inner_circle_lo;
  path inner_shape;
  inner_shape := top_segment
                 .. bottom_segment
                 .. cycle;

  path inner_circle_h, inner_circle_l;
  inner_circle_h := fullcircle xscaled (1.2 * (x_radius+0.4*pen_height)) yscaled (1.2 * (y_radius+0.0*pen_height)) shifted (0, half_y)  yscaled 0.5 shifted (0, 0.5*y_radius);
  inner_circle_l := fullcircle xscaled (1.2 * (x_radius+0.4*pen_height)) yscaled (1.2 * (y_radius+0.0*pen_height)) shifted (0, -half_y)  yscaled 0.5 shifted (0, 0.5*y_radius);
  path inner_shape_upper;
  inner_shape_upper := inner_circle_h cutbefore point 0.5 of inner_circle_h cutafter point 2 of inner_circle_h;
  path inner_shape_lower;
  inner_shape_lower := inner_circle_l cutbefore point 6 of inner_circle_l cutafter point 7.6 of inner_circle_l;

  draw inner_shape_upper;
  draw inner_shape_lower;

  pickup thin_pen;
  path outer_circle;
  outer_circle   := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius)  yscaled 0.5 shifted (0, 0.5*y_radius);

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
            r = 1.0*(point 0.95 of outer_circle);
  theta = angle(r);
  p = ((xpart r - 0.28*pen_height) * cosd(theta), (ypart r - 0.28*pen_height) * sind(theta));
  knob := fullcircle scaled (0.4*x_radius) shifted (1.15*p);
  draw knob;
  fill knob;

  pen knurl_pen;
  knurl_pen = makepen((-1.0*pen_width, -y_radius)
                      -- (1.0*pen_width, -y_radius)
                      -- ((xpart point 7.6 of inner_circle_l)+0.5*pen_height, ypart point 7.6 of inner_circle_l)
                      -- ((xpart point 7.6 of inner_circle_l)+0.5*pen_height-2.0*pen_height, (ypart point 7.6 of inner_circle_l)-0.2*y_radius)
                      -- cycle
                     );
  pickup knurl_pen;
  path line;
  line := (0,0);

  draw line;

endfig;
