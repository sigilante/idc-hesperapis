% U+10421 𐐡
beginfig(421) ;
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
endfig;
