% U+1041a 𐐚
beginfig(4006) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_y;
  half_y := 0.5 * y_radius;

  pickup thin_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.0 * y_radius) shifted (0, half_y);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.0 * y_radius) shifted (0, -half_y);
  path top_segment, bottom_segment;
  top_segment := inner_circle_hi cutbefore point 2 of inner_circle_hi cutafter point 6 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 2 of inner_circle_lo cutafter point 6 of inner_circle_lo;
  path line;
  line := (point 6 of inner_circle_hi) -- (-0.24*x_radius, 0);

  draw top_segment reflectedabout((0,0),(0,y_radius));
  draw bottom_segment reflectedabout((0,0),(0,y_radius));
  draw line;

  path inner_shape;
  top_segment := inner_circle_hi cutbefore point 2 of inner_circle_hi cutafter point 4 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 4 of inner_circle_lo cutafter point 6 of inner_circle_lo;
  inner_shape := top_segment
                 .. bottom_segment;

%   draw inner_shape;

  path outer_circle;
  outer_circle   := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius);

%   draw outer_circle cutbefore point 2 of outer_circle cutafter point 6 of outer_circle withcolor blue;
%   draw inner_shape cutbefore point 2 of inner_shape cutafter point 6 of inner_shape withcolor red;

  path ur, lr, rhs;
  ur := outer_circle cutbefore point 2 of outer_circle cutafter point 6 of outer_circle;
  lr := inner_shape;
  rhs := %outer_circle cutbefore point 0 of outer_circle cutafter point 2 of outer_circle
           ur
         ..  reverse lr
         %--  point 2 of inner_circle_hi
         %--  inner_circle_hi cutbefore point 0 of inner_circle_hi cutafter point 2 of inner_circle_hi
         %..  point 8 of outer_circle
         %..  reverse outer_circle cutbefore point 6 of outer_circle cutafter point 8 of outer_circle
         %..  point 6 of inner_circle_lo
         %..  inner_circle_lo cutbefore point 6 of inner_circle_lo cutafter point 8 of inner_circle_lo
         .. cycle
         ;
  
  %draw inner_shape cutbefore point 2 of inner_shape cutafter point 7 of inner_shape withcolor red;
  %draw outer_circle cutbefore point 6 of outer_circle cutafter point 8 of outer_circle withcolor green;
  %draw outer_circle cutbefore point 0 of outer_circle cutafter point 2 of outer_circle withcolor blue;
  draw rhs;
  fill rhs;
endfig;
