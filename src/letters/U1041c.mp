% U+1041c 𐐜
beginfig(4008);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup thin_pen;

  path loop;
  loop := fullcircle xscaled (0.75*y_radius) yscaled (0.75*x_radius) rotated 90 shifted (0, -0.5*y_radius) ;
  draw loop cutafter point 7 of loop cutbefore point 1 of loop;

  path loop_r;
  loop_r := fullcircle xscaled (0.75*y_radius+pen_height) yscaled (0.75*x_radius+pen_height) rotated 90 shifted (0, -0.5*y_radius+0.5*pen_height) ;
  draw loop_r cutafter point 7 of loop_r cutbefore point 4 of loop_r;

  pair anchor_ul, anchor_lr;
  anchor_ul = ((xpart point 1 of loop)-0.5*pen_height*cosd(45), (ypart point 1 of loop)+0.5*pen_height*sind(45));
  anchor_lr = ((xpart point 1 of loop)+0.5*pen_height*cosd(45), (ypart point 1 of loop)-0.5*pen_height*sind(45));

  pen knurl_pen_r;
  knurl_pen_r = makepen((x_radius, y_radius)
                        -- (x_radius-sqrt(2)*pen_height, y_radius)
                        -- anchor_ul
                        -- anchor_lr
                        -- cycle
                      );
  pickup knurl_pen_r;
  path right_line;
  right_line := (0,0);
  draw right_line;

  pair anchor_ur, anchor_ll;
  anchor_ur = ((xpart point 7 of loop)+0.5*pen_height*cosd(135), (ypart point 1 of loop)-0.5*pen_height*sind(135));
  anchor_ll = ((xpart point 7 of loop_r)-0.5*pen_height*cosd(135), (ypart point 1 of loop_r)+0.5*pen_height*sind(135));

  pen knurl_pen_l;
  knurl_pen_l = makepen((-x_radius, y_radius)
                        -- (-x_radius+2*pen_height, y_radius)
                        -- anchor_ur
                        -- anchor_ll
                        -- cycle
                      );
  pickup knurl_pen_l;
  path right_line;
  right_line := (0,0);
  draw right_line;

endfig;
