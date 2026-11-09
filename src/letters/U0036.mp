% U+0036 DIGIT SIX (6)
beginfig(54);
  % A round bowl below, and from its left side a stroke up to the top right.
  pickup stress_pen;
  draw fullcircle xscaled 2dw yscaled 1.2fig_top shifted (0, -0.4fig_top);
  draw (0.9dw, 0.75fig_top){dir 135}
       .. (0, fig_top){left}
       .. (-dw, 0.2fig_top){down}
       .. {down}(-dw, -0.4fig_top);
endfig;
