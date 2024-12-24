% U+10414 𐐔
beginfig(414) ;
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
  inner_shape_upper := inner_circle_h cutbefore point 0.2 of inner_circle_h cutafter point 2 of inner_circle_h;
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

  path loop;
  numeric tx, ty;
  tx := (xpart (point 1.25 of outer_circle)) + 0.5*pen_width;
  ty := (ypart (point 1.25 of outer_circle)); % shifted (0, 0.5*penwidth);
  loop = point 4 of outer_circle
         .. tension 1.5
         .. (0, 0)
         .. (tx, ty);
  draw loop;

  pickup peg_pen;
  path line;
  line := (0.24*x_radius, y_radius)
          -- (0, y_radius)
          -- (0, -y_radius)
          -- (0.24*x_radius, -y_radius)
          -- cycle;
  draw line shifted ((xpart point 0.5 of inner_circle_h)+0.2*pen_width, 0);
  fill line shifted ((xpart point 0.5 of inner_circle_h)+0.2*pen_width, 0);

%   currentpicture := currentpicture reflectedabout((0,0),(0,y_radius));

%   draw currentpicture;

endfig;
