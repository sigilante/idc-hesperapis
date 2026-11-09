% U+E00D DESERET SMALL LETTER VARIANT SCHWA
% U+E00C at min_scale: drawn with use_min_pens, then shrunk about the baseline.
beginfig(24589);
  use_min_pens;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup peg_pen;
  path line;
  line := (0, 0.25*y_radius) -- (0, -y_radius);
  draw line;

  shrink_to_min;
  lsb := min_scale * default_side; rsb := min_scale * default_side;
endfig;
