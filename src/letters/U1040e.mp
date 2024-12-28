% U+1040e 𐐎
beginfig(4004);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup peg_pen;
  path line_r;
  line_r := (0.75*x_radius, y_radius) -- (0.75*x_radius, -0.75*y_radius+0.5*pen_height);
  draw line_r;

  path line_c;
  line_c := (0, 0) -- (0, -0.75*y_radius+0.5*pen_height);
  draw line_c;

  path line_l;
  line_l := (-0.75*x_radius, y_radius)
            -- (-0.75*x_radius-0.24*x_radius, y_radius)
            -- (-0.75*x_radius-0.24*x_radius, -0.75*y_radius+0.5*pen_height)
            -- (-0.75*x_radius, -0.75*y_radius+0.5*pen_height)
            -- cycle;
  draw line_l;
  fill line_l;

  pickup thin_pen;
  path lr_circle, ll_circle, ol_circle;
  lr_circle := fullcircle xscaled (0.75 * x_radius) yscaled (0.75 * y_radius) shifted (0.375 * x_radius, -0.75*y_radius);
  ll_circle := fullcircle xscaled (0.75 * x_radius) yscaled (0.75 * y_radius) shifted (-0.375 * x_radius, -0.75*y_radius);
  ol_circle := fullcircle xscaled (1.23 * x_radius) yscaled (0.75 * y_radius) shifted (-0.375 * x_radius, -0.75*y_radius);
  draw lr_circle cutafter point 0 of lr_circle cutbefore point 4 of lr_circle;
  draw ll_circle cutafter point 0 of ll_circle cutbefore point 4 of ll_circle;
  draw ol_circle cutafter point 6 of ol_circle cutbefore point 4 of ol_circle;

  path filler;
  filler := reverse (ol_circle cutafter point 6 of ol_circle cutbefore point 4 of ol_circle)
                    -- (-0.75*x_radius-0.24*x_radius, -0.75*y_radius+0.5*pen_height)
                    -- (-0.75*x_radius, -0.75*y_radius+0.5*pen_height)
                    .. (ll_circle cutafter point 6 of ll_circle cutbefore point 4 of ll_circle)
                    -- cycle;
  fill filler;
endfig;
