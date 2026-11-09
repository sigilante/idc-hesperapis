% U+005F LOW LINE (_)
beginfig(95);
  pickup fat_pen;
  draw (-0.3font_size, -y_radius - 0.12font_size) -- (0.3font_size, -y_radius - 0.12font_size);
  lsb := 0; rsb := 0;   % runs of underscores join
endfig;
