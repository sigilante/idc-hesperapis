% U+10400 𐐀
beginfig(400) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, half_y);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, -half_y);
  path top_segment, bottom_segment;
  top_segment := inner_circle_hi cutbefore point 0.2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi;
  bottom_segment := inner_circle_lo;

  draw top_segment;
  draw bottom_segment;

  path inner_shape;
  inner_shape := reverse top_segment
                 .. reverse bottom_segment;

  draw inner_shape;

  path outer_circle;
  outer_circle   := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius);

  draw outer_circle cutbefore point 0 of outer_circle cutafter point 2 of outer_circle;
  draw outer_circle cutbefore point 6 of outer_circle cutafter point 8 of outer_circle;

  path rhs;
  rhs := %outer_circle cutbefore point 0 of outer_circle cutafter point 2 of outer_circle
           inner_shape cutbefore point 2 of inner_shape cutafter point 7 of inner_shape
         ..  outer_circle cutbefore point 6 of outer_circle cutafter point 8 of outer_circle
         %--  point 2 of inner_circle_hi
         %--  inner_circle_hi cutbefore point 0 of inner_circle_hi cutafter point 2 of inner_circle_hi
         %..  point 8 of outer_circle
         %..  reverse outer_circle cutbefore point 6 of outer_circle cutafter point 8 of outer_circle
         %..  point 6 of inner_circle_lo
         %..  inner_circle_lo cutbefore point 6 of inner_circle_lo cutafter point 8 of inner_circle_lo
         .. cycle
         ;
  show rhs;

  %draw inner_shape cutbefore point 2 of inner_shape cutafter point 7 of inner_shape withcolor red;
  %draw outer_circle cutbefore point 6 of outer_circle cutafter point 8 of outer_circle withcolor green;
  %draw outer_circle cutbefore point 0 of outer_circle cutafter point 2 of outer_circle withcolor blue;
  draw rhs withcolor red;
  %fill rhs;
endfig;
