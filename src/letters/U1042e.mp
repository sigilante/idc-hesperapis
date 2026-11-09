% U+1042E DESERET SMALL LETTER SHORT I (𐐮)
% U+10406 at min_scale: drawn with use_min_pens, then shrunk about the baseline.
beginfig(1070);
  use_min_pens;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup peg_pen;
  path line;
  line := (0, y_radius) -- (0, -y_radius);
  draw line;

  pickup thin_pen;
  path bar;
  bar := (-.5*x_radius,.5*y_radius)
         -- (-.5*x_radius,.26*y_radius)
         -- (.5*x_radius,-.05*y_radius)
        -- (.5*x_radius,.19*y_radius)
        -- cycle;
  draw bar;
  fill bar;

  shrink_to_min;
  lsb := min_scale * default_side; rsb := min_scale * default_side;
endfig;
