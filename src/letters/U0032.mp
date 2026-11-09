% U+0032 DIGIT TWO (2)
beginfig(50);
  pickup stress_pen;
  draw (-dw, 0.5fig_top){up}
       .. (0, fig_top){right}
       .. (dw, 0.45fig_top){down}
       .. {dir 225}(-dw, -fig_top)
       -- (dw, -fig_top);
endfig;
