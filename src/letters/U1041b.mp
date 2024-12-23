% U+1041b 𐐛
beginfig(4007);
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
endfig;
