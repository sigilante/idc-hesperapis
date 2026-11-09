% U+10449 DESERET SMALL LETTER ER (𐑉)
% U+10421 at min_scale: drawn with use_min_pens, then shrunk about the baseline.
beginfig(1097);
  use_min_pens;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup peg_pen;
  path line;
  line := (-0.12*x_radius, y_radius)
          -- (0.12*x_radius, y_radius)
          -- (0.12*x_radius, -y_radius)
          -- (-0.12*x_radius, -y_radius)
          -- cycle;
        %   -- (-0.24*x_radius, y_radius);
  draw line;
  fill line;

  pickup thin_pen;
  path loop, circle;
  circle := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, 1.5*half_y);
  loop := (-0.12*x_radius,-y_radius)
          .. tension 5.0
          .. (-0.12*x_radius, 0.25*y_radius)
          .. (point 4 of circle)
          .. (point 6 of circle)
          .. (point 7 of circle)
          .. (point 8 of circle);
  draw loop;

  shrink_to_min;
  lsb := min_scale * default_side; rsb := min_scale * default_side;
endfig;
