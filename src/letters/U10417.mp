% U+10417 𐐗
beginfig(417);
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
  bottom_segment := inner_circle_lo cutbefore point 4.2 of inner_circle_lo cutafter point 7.8 of inner_circle_lo;
  path inner_shape;
  inner_shape := top_segment
                 .. bottom_segment
                 .. cycle;

  draw inner_shape withcolor blue;

  path outer_circle;
  outer_circle   := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius);

  pickup thin_pen;
  path lr_circle, ll_circle, line;
  lr_circle := fullcircle xscaled (0.5 * x_radius) yscaled (0.5 * y_radius) shifted (0.25 * x_radius, -0.75*y_radius);
  ll_circle := fullcircle xscaled (0.5 * x_radius) yscaled (0.5 * y_radius) shifted (-0.25 * x_radius, -0.75*y_radius);
  line :=  (0, -0.75*y_radius) -- (0, -0.25*y_radius);

  path perimeter;
  perimeter := outer_circle cutbefore point 2 of outer_circle cutafter point 4.5 of outer_circle
            %    .. point 4 of outer_circle
            %    .. point 5 of outer_circle
            %    .. point 5 of ll_circle
               .. point 6 of ll_circle
               .. point 7 of ll_circle
               .. point 8 of ll_circle
               -- point 0 of line
               -- point 1 of line
               -- point 0 of line
               .. point 4 of lr_circle
               .. point 5 of lr_circle
               .. point 6 of lr_circle
               .. point 7 of lr_circle
            %    .. point 7 of outer_circle
               .. outer_circle cutbefore point 7.5 of outer_circle cutafter point 8 of outer_circle
               .. outer_circle cutbefore point 8 of outer_circle cutafter point 0 of outer_circle
               .. outer_circle cutbefore point 0 of outer_circle cutafter point 2 of outer_circle
            %    .. point 2 of outer_circle
               -- cycle;

  fill perimeter withcolor blue;
  unfill inner_shape;
  draw perimeter withcolor green;

%   draw lr_circle withcolor red;
%   draw ll_circle withcolor green;
%   draw line withcolor blue;
  endfig;
