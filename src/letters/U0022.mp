% U+0022 QUOTATION MARK (")
beginfig(34);
  for x = -0.12font_size, 0.12font_size:
    draw_wedge((x, y_radius), (x, 0.4y_radius), 1.1pen_width, pen_height);
  endfor;
endfig;
