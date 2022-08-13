

# greneraqr gráfico de frecuencias
g_freq <-  function(data_sf, indice, variable){
  data_sf[[indice]] %>%
    sf::st_drop_geometry() %>%
    sjPlot::plot_frq(!!!variable,
                     title = paste0("Frecuencia de ",  variable)) %>%
    plotly::ggplotly()
}
