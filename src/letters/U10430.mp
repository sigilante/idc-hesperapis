% U+10430 DESERET SMALL LETTER SHORT A (𐐰)
% U+10408 at min_scale: drawn with use_min_pens, then shrunk about the baseline.
beginfig(1072);
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
  path bar;
  bar := (-1.0*x_radius,(.5+.31/2)*y_radius)
          -- (-1.0*x_radius,(.26+.31/2)*y_radius)
          -- (.5*x_radius,-.05*y_radius)
          -- (.5*x_radius,.19*y_radius)
          -- cycle;
  draw bar shifted (-.5*x_radius,-y_radius);
  fill bar shifted (-.5*x_radius,-y_radius);

  shrink_to_min;
  lsb := min_scale * default_side; rsb := min_scale * default_side;
endfig;
