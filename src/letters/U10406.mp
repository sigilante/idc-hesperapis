% U+10406 𐐆
beginfig(406) ;
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
endfig;
