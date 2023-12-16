N0_init = 200
  r_init = 1.2
    xpred = seq(0, 15, 0.1)
    ypred = N0_init * exp(r_init * xpred)
    dfpred = tibble(x=xpred, y=ypred)
    ggplot(train, aes(x=t, y=N)) + 
      geom_point() + 
      geom_line(dfpred, mapping=aes(x=x, y=y), color="blue")
    