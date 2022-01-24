## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, eval=FALSE--------------------------------------------------------
#  install.packages("netmap")

## ----setup_github, eval=FALSE-------------------------------------------------
#  devtools::install_github("artod83/netmap")

## ----plot_example, eval=FALSE-------------------------------------------------
#  
#  fortified_df=ggnetmap(net, map, lkp_tbl, m_name="spatial_id", n_name="vertex.names")
#  ggplot() +
#    geom_sf(data=map) + #this will be the map on which the network will be overlayed
#    geom_edges(data=fortified_df, aes(x=x,y=y, xend=xend, yend=yend), colour="red") + #network edges
#    geom_nodes(data=fortified_df, aes(x=x,y=y)) + #network vertices
#    geom_nodetext(data=fortified_df, aes(x=x,y=y, label = spatial_id), fontface = "bold") + #vertex labels
#    theme_blank()

## ----network_overlay, eval=FALSE----------------------------------------------
#  library(ggplot2)
#  library(netmap)
#  data(fvgmap)
#  routes=network::network(matrix(c(0, 1, 1, 0,
#                                   1, 0, 1, 0,
#                                   1, 1, 0, 1,
#                                   0, 0, 1, 0), nrow=4, byrow=TRUE))
#  network::set.vertex.attribute(routes, "names", value=c("Trieste", "Gorizia", "Udine", "Pordenone"))
#  routes_df=netmap::ggnetmap(routes, fvgmap, m_name="Comune", n_name="names")
#  ggplot() +
#    geom_sf(data=fvgmap) +
#    ggnetwork::geom_edges(data=routes_df, aes(x=x,y=y, xend=xend, yend=yend), colour="red") +
#    ggnetwork::geom_nodes(data=routes_df, aes(x=x,y=y)) +
#    ggnetwork::geom_nodetext(data=routes_df, aes(x=x,y=y, label = Comune), fontface = "bold") +
#    theme_blank()

## ----plot_1, echo=FALSE, eval=TRUE--------------------------------------------
knitr::include_graphics('netmap-1.png')

## ----centrality, eval=FALSE---------------------------------------------------
#  routes2=network::network(matrix(c(0, 1, 1, 0, 0, 1 ,
#                                   1, 0, 1, 0, 0, 1,
#                                   1, 1, 0, 1, 1, 1,
#                                   0, 0, 1, 0, 1, 1,
#                                   0, 0, 1, 1, 0, 0,
#                                   1, 1, 1, 1, 0, 0), nrow=6, byrow=TRUE))
#  network::set.vertex.attribute(routes2, "names",
#                                value=c("Trieste", "Gorizia", "Udine", "Pordenone",
#                                        "Tolmezzo", "Grado"))
#  lkpt=data.frame(Pro_com=c(32006, 31007, 30129, 93033, 30121, 31009),
#                  names=c("Trieste", "Gorizia", "Udine", "Pordenone", "Tolmezzo",
#                          "Grado"))
#  routes2_df=netmap::ggnetmap(routes2, fvgmap, lkpt, m_name="Pro_com", n_name="names")
#  map_centrality=netmap::ggcentrality(routes2, fvgmap, lkpt, m_name="Pro_com",
#                                      n_name="names", par.deg=list(gmode="graph"))
#  ggplot() +
#    geom_sf(data=fvgmap) +
#    geom_sf(data=map_centrality, aes(fill=degree)) +
#    ggnetwork::geom_edges(data=routes2_df, aes(x=x,y=y, xend=xend, yend=yend), colour="red") +
#    ggnetwork::geom_nodes(data=routes2_df, aes(x=x,y=y)) +
#    ggnetwork::geom_nodetext(data=routes2_df, aes(x=x,y=y, label = names), fontface = "bold") +
#    theme_blank()

## ----plot_2, echo=FALSE, eval=TRUE--------------------------------------------
knitr::include_graphics('netmap-2.png')

## ----netmap_plot, eval=FALSE--------------------------------------------------
#  routes2=network::network(matrix(c(0, 1, 1, 0, 0, 1 ,
#                                   1, 0, 1, 0, 0, 1,
#                                   1, 1, 0, 1, 1, 1,
#                                   0, 0, 1, 0, 1, 1,
#                                   0, 0, 1, 1, 0, 0,
#                                   1, 1, 1, 1, 0, 0), nrow=6, byrow=TRUE))
#  network::set.vertex.attribute(routes2, "names",
#                                value=c("Trieste", "Gorizia", "Udine", "Pordenone",
#                                        "Tolmezzo", "Grado"))
#  lkpt=data.frame(Pro_com=c(32006, 31007, 30129, 93033, 30121, 31009),
#                  names=c("Trieste", "Gorizia", "Udine", "Pordenone", "Tolmezzo",
#                          "Grado"))
#  netmap::netmap_plot(routes2, fvgmap, lkpt, m_name="Pro_com", n_name="names")

