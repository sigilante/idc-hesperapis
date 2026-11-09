% U+10443 DESERET SMALL LETTER ETH (𐑃)
% U+1041B at min_scale: drawn with use_min_pens, then shrunk about the baseline.
beginfig(1091);
  use_min_pens;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup peg_pen;
  path line;
  line := (0.24*x_radius, y_radius)
          -- (0, y_radius)
          -- (0, -y_radius)
          -- (1.75*x_radius, -y_radius)
          -- (1.75*x_radius, -0.76*y_radius)
          -- (0.24*x_radius, -0.76*y_radius)
          -- cycle;
        %   -- (-0.24*x_radius, y_radius);
  draw line;
  fill line;

  % currentpicture := currentpicture rotated 180;

  draw currentpicture;

  shrink_to_min;
  lsb := min_scale * default_side; rsb := min_scale * default_side;
endfig;
