% U+10409 𐐉
beginfig(409) ;
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
  bar := (-.25*x_radius,.5*y_radius)
         -- (-.25*x_radius,.26*y_radius)
         -- (.25*x_radius,-.05*y_radius)
        -- (.25*x_radius,.19*y_radius)
        -- cycle;
  draw bar shifted (-.25*x_radius,-0.95*y_radius);
  fill bar shifted (-.25*x_radius,-0.95*y_radius);
  draw bar shifted (-x_radius,-0.95*y_radius);
  fill bar shifted (-x_radius,-0.95*y_radius);
  path cnxr;
  cnxr := (-.75*x_radius,-y_radius) -- (-.5*x_radius,-0.45*y_radius);
  draw cnxr;
  path endr;
  endr := (-1.5*x_radius,-y_radius) -- (-1.25*x_radius,-0.45*y_radius);
  draw endr cutbefore point 0.65 of endr cutafter point 1 of endr;
  path smvr;
  smvr := (point 0.65 of endr) -- (point 2 of bar shifted (-x_radius,-0.95*y_radius));
  draw smvr;
endfig;
