% U+1040c 𐐌
beginfig(4002) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (0.5*1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, half_y);

  draw inner_circle_hi cutbefore point 2 of inner_circle_hi cutafter point 4 of inner_circle_hi;

  pickup peg_pen;
  path line;
  numeric lx, rx;
  lx := (xpart point 4 of inner_circle_hi) + 0.45*pen_width;
  uly := (ypart point 4 of inner_circle_hi);
  ury := (ypart point 4 of outer_circle);
  rx := lx - 0.24*x_radius;
  by := -y_radius;
  line := (lx, uly)
          -- (rx, ury)
          -- (rx, by)
          -- (lx, by)
          -- cycle;
  draw line shifted (-0.45*pen_width, 0);
  fill line shifted (-0.45*pen_width, 0);

  pickup thin_pen;
  path loop, circle;
  circle := fullcircle xscaled (1.4 * x_radius) yscaled (1.2 * y_radius) shifted (-0.5*x_radius+0.45*pen_width, 1.5*half_y);
  loop := (rx-0.45*pen_width,by)
          .. tension 5.0
          .. (rx-0.45*pen_width, 0)
          .. (point 2 of inner_circle_hi)
          .. (point 0 of circle)
          .. (point 6 of circle)
          .. (point 5 of circle)
          .. (point 3.5 of circle) shifted (0,0.5*pen_width);
  draw loop;

  path filler;
  filler := (lx-0.45*pen_width, uly)
            -- (rx-0.45*pen_width, ury)
            .. point 3 of inner_circle_hi shifted (-0.45*pen_width, 0)
            -- cycle;
  fill filler;

  currentpicture := currentpicture rotated 180;

  draw currentpicture;
endfig;
