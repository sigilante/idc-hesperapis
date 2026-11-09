% U+0035 DIGIT FIVE (5)
beginfig(53);
  pickup stress_pen;
  draw (dw, fig_top) -- (-0.8dw, fig_top) -- (-0.85dw, 0.1fig_top);
  draw (-0.85dw, 0.1fig_top){dir 40}
       .. (0.05dw, 0.3fig_top){right}
       .. (dw, -0.35fig_top){down}
       .. (0, -fig_top){left}
       .. {up}(-dw, -0.6fig_top);
endfig;
