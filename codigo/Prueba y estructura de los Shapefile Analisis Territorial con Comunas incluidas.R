## Mapa de Mérida con las comunas

## Shapefile del Estado Mérida centros poblados
merida_analisis <- st_read("C:/Users/william/Desktop/Monografía Pasantias/MERIDA/merida.shx")
str(merida_analisis)
merida_analisis

## Shapefile DPT_ESTADO Mérida
dpt_estados <- st_read("C:/Users/william/Desktop/Monografía Pasantias/MERIDA/DPT_ESTADO/vzla_estados.shx")
str(dpt_estados)
dpt_estados

## Shapefile DPT_MUNICIPIO
dpt_municipios <- st_read("C:/Users/william/Desktop/Monografía Pasantias/MERIDA/DPT_MUNICIPAL/merida_mun.shx")
str(dpt_municipios)
dpt_municipios

## Shapefile DPT_PARROQUIA
dpt_parroquias <- st_read("C:/Users/william/Desktop/Monografía Pasantias/MERIDA/DPT_PARROQUIAl/merida.shx")
str(dpt_parroquias)
dpt_parroquias

## Shapefile Circuito comunal
circuito_comunal <- st_read("C:/Users/william/Desktop/Pasante/ComunasCircuitosMérida.shx")
str(circuito_comunal)
circuito_comunal

## Estructura de los dataframe mas importantes
str(df_raw)
df_raw
str(tabla_maestra)
tabla_maestra

