% U+201D RIGHT DOUBLE QUOTATION MARK (”)
beginfig(8221);
  % U+2019 twice, spaced as U+0022.
  for x = -0.12font_size, 0.12font_size:
    addto currentpicture also comma_mark(1) shifted (x, y_radius - 0.5dot_d);
  endfor;
endfig;
