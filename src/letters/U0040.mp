% U+0040 COMMERCIAL AT (@)
beginfig(64);
  pickup stress_pen;
  draw fullcircle xscaled (0.28font_size) yscaled (0.36font_size);
  draw (0.14font_size, 0.18font_size)
       -- (0.14font_size, -0.1font_size)
       .. (0.26font_size, -0.18font_size){right}
       .. (0.42font_size, 0){up}
       .. (0, 0.45font_size){left}
       .. (-0.42font_size, 0){down}
       .. (0, -0.45font_size){right}
       .. {dir 30}(0.3font_size, -0.36font_size);
endfig;
