% U+1042F DESERET SMALL LETTER SHORT E (𐐯)
% U+10407 at min_scale: drawn with use_min_pens, then shrunk about the baseline.
beginfig(1071);
  use_min_pens;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;
  path line;
  line := (0, y_radius) -- (0, -y_radius);
  draw line;

  pickup thin_pen;
  path arc_hi, arc_lo;
  % arc_hi := halfcircle scaled x_radius shifted (-.5*x_radius, -y_radius);
  arc_hi := halfcircle scaled (1.5*x_radius) shifted (-0.75*x_radius, -y_radius);
  arc_lo := point 0 of arc_hi
            .. point 2 of arc_hi shifted (0, -0.2*y_radius)
            .. point 4 of arc_hi;
  path arc;
  arc = arc_hi .. reverse arc_lo .. cycle;
  draw arc;
        fill arc;

  shrink_to_min;
  lsb := min_scale * default_side; rsb := min_scale * default_side;
endfig;
