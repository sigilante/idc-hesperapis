% U+201C LEFT DOUBLE QUOTATION MARK (“)
beginfig(8220);
  % U+2018 twice, spaced as U+0022.
  for x = -0.12font_size, 0.12font_size:
    addto currentpicture also comma_mark(1) rotatedaround ((0, comma_mid), 180)
      shifted (x, y_radius - 0.5dot_d);
  endfor;
endfig;
