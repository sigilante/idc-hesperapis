% U+1040b 𐐋
beginfig(4001) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, half_y);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, -half_y);
  path top_segment, bottom_segment;
  top_segment := inner_circle_hi cutbefore point 0 of inner_circle_hi cutafter point 3.8 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 4.2 of inner_circle_lo cutafter point 7.8 of inner_circle_lo;

  draw inner_circle_hi cutbefore point 0 of inner_circle_hi cutafter point 4 of inner_circle_hi;

  path outer_circle;
  outer_circle   := fullcircle xscaled (1.685 * x_radius) yscaled (2 * y_radius);

  draw outer_circle cutbefore point 2 of outer_circle cutafter point 4 of outer_circle;

  pickup peg_pen;
  path line;
  numeric lx, rx;
  lx := (xpart point 4 of inner_circle_hi) + 0.45*pen_width;
  uly := (ypart point 4 of inner_circle_hi); % - 0.5*pen_width;
  ury := (ypart point 4 of outer_circle); % + 0.5*pen_width;
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
  path loop;
  loop := reverse (inner_circle_hi cutbefore point 6 of inner_circle_hi cutafter point 4 of inner_circle_hi)
      -- (-0.5*x_radius, ypart point 6 of inner_circle_hi);
  draw loop;

  currentpicture := currentpicture reflectedabout((0,0),(0,y_radius));

  draw currentpicture;

endfig;
