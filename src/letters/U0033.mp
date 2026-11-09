% U+0033 DIGIT THREE (3)
beginfig(51);
  pickup stress_pen;
  draw (-dw, 0.55fig_top){up}
       .. (0, fig_top){right}
       .. (0.85dw, 0.5fig_top){down}
       .. {left}(-0.2dw, 0.05fig_top);
  draw (-0.2dw, 0.05fig_top){right}
       .. (dw, -0.45fig_top){down}
       .. (0, -fig_top){left}
       .. {up}(-dw, -0.55fig_top);
endfig;
