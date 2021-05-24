setwd("C:/Users/josue/Desktop/PROYECTO/Proyecto-AnalisisExploratorioClustering-MineriaDeDatos")

library(readxl)
library(tidyverse)

dt2009 <- excel_sheets("DATOS/Divorcios2009.xls") %>% map(~read_xls("DATOS/Divorcios2009.xls", .))
dt2010 <- excel_sheets("DATOS/Divorcios2010.xls") %>% map(~read_xls("DATOS/Divorcios2010.xls", .))
dt2011 <- excel_sheets("DATOS/Divorcios2011.xls") %>% map(~read_xls("DATOS/Divorcios2011.xls", .))
dt2012 <- excel_sheets("DATOS/Divorcios2012.xls") %>% map(~read_xls("DATOS/Divorcios2012.xls", .))
dt2013 <- excel_sheets("DATOS/Divorcios2013.xls") %>% map(~read_xls("DATOS/Divorcios2013.xls", .))
dt2014 <- excel_sheets("DATOS/Divorcios2014.xls") %>% map(~read_xls("DATOS/Divorcios2014.xls", .))
dt2015 <- excel_sheets("DATOS/Divorcios2015.xls") %>% map(~read_xls("DATOS/Divorcios2015.xls", .))
dt2016 <- excel_sheets("DATOS/Divorcios2016.xls") %>% map(~read_xls("DATOS/Divorcios2016.xls", .))
dt2017 <- excel_sheets("DATOS/Divorcios2017.xlsx") %>% map(~read_xlsx("DATOS/Divorcios2017.xlsx", .))
dt2018 <- excel_sheets("DATOS/Divorcios2018.xlsx") %>% map(~read_xlsx("DATOS/Divorcios2018.xlsx", .))
dt2019 <- excel_sheets("DATOS/Divorcios2019.xlsx") %>% map(~read_xlsx("DATOS/Divorcios2019.xlsx", .))

#Divorcios por grupos de edad del esposo, según grupos de edad de la esposa al momento de la sentencia

grupo_edad_esposo_segun_grupo_edad_esposa_2009 <- as.data.frame(dt2009[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2009$año = 2009

grupo_edad_esposo_segun_grupo_edad_esposa_2010 <- as.data.frame(dt2010[3])
grupo_edad_esposo_segun_grupo_edad_esposa_2010$año = 2010

grupo_edad_esposo_segun_grupo_edad_esposa_2011 <- as.data.frame(dt2011[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2011$año = 2011

grupo_edad_esposo_segun_grupo_edad_esposa_2012 <- as.data.frame(dt2012[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2012$año = 2012

grupo_edad_esposo_segun_grupo_edad_esposa_2013 <- as.data.frame(dt2013[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2013$año = 2013

grupo_edad_esposo_segun_grupo_edad_esposa_2014 <- as.data.frame(dt2014[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2014$año = 2014

grupo_edad_esposo_segun_grupo_edad_esposa_2015 <- as.data.frame(dt2015[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2015$año = 2015

grupo_edad_esposo_segun_grupo_edad_esposa_2016 <- as.data.frame(dt2016[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2016$año = 2016

grupo_edad_esposo_segun_grupo_edad_esposa_2017 <- as.data.frame(dt2017[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2017$año = 2017

grupo_edad_esposo_segun_grupo_edad_esposa_2018 <- as.data.frame(dt2018[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2018$año = 2018

grupo_edad_esposo_segun_grupo_edad_esposa_2019 <- as.data.frame(dt2019[2])
grupo_edad_esposo_segun_grupo_edad_esposa_2019$año = 2019

grupo_edad_esposo_segun_grupo_edad_esposa <- rbind(grupo_edad_esposo_segun_grupo_edad_esposa_2009,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2010,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2011,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2012,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2013,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2014,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2015,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2016,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2017,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2018,
                                                              grupo_edad_esposo_segun_grupo_edad_esposa_2019)

# Divorcios por mes de registro segun departamento de registro

mes_registro_segun_departamento_registro_2009 <- as.data.frame(dt2009[4])
mes_registro_segun_departamento_registro_2009$año = 2009

mes_registro_segun_departamento_registro_2010 <- as.data.frame(dt2010[5])
mes_registro_segun_departamento_registro_2010$año = 2010

mes_registro_segun_departamento_registro_2011 <- as.data.frame(dt2011[4])
mes_registro_segun_departamento_registro_2011$año = 2011

mes_registro_segun_departamento_registro_2012 <- as.data.frame(dt2012[4])
mes_registro_segun_departamento_registro_2012$año = 2012

mes_registro_segun_departamento_registro_2013 <- as.data.frame(dt2013[4])
mes_registro_segun_departamento_registro_2013$año = 2013

mes_registro_segun_departamento_registro_2014 <- as.data.frame(dt2014[4])
mes_registro_segun_departamento_registro_2014$año = 2014

mes_registro_segun_departamento_registro_2015 <- as.data.frame(dt2015[4])
mes_registro_segun_departamento_registro_2015$año = 2015

mes_registro_segun_departamento_registro_2016 <- as.data.frame(dt2016[4])
mes_registro_segun_departamento_registro_2016$año = 2016

mes_registro_segun_departamento_registro_2017 <- as.data.frame(dt2017[4])
mes_registro_segun_departamento_registro_2017$año = 2017

mes_registro_segun_departamento_registro_2018 <- as.data.frame(dt2018[4])
mes_registro_segun_departamento_registro_2018$año = 2018

mes_registro_segun_departamento_registro_2019 <- as.data.frame(dt2019[4])
mes_registro_segun_departamento_registro_2019$año = 2019

mes_registro_segun_departamento_registro <- rbind(mes_registro_segun_departamento_registro_2009,
                                                  mes_registro_segun_departamento_registro_2010,
                                                  mes_registro_segun_departamento_registro_2011,
                                                  mes_registro_segun_departamento_registro_2012,
                                                  mes_registro_segun_departamento_registro_2013,
                                                  mes_registro_segun_departamento_registro_2014,
                                                  mes_registro_segun_departamento_registro_2015,
                                                  mes_registro_segun_departamento_registro_2016,
                                                  mes_registro_segun_departamento_registro_2017,
                                                  mes_registro_segun_departamento_registro_2018,
                                                  mes_registro_segun_departamento_registro_2019)



save(grupo_edad_esposo_segun_grupo_edad_esposa,
     mes_registro_segun_departamento_registro,
     file= "data.RData")


# PARTE 2
# RESULTADOS DEL PROYECTO

# Carga de datos de matrimonios 2001 - 2017
divorcios2010mes <- read_excel(paste(path,"/DATA/divorcios2010.xls",sep=""),
                               sheet=7,skip=1,col_names=TRUE)
divorcios2011mes <- read_excel(paste(path,"/DATA/divorcios2011.xls",sep=""),
                               sheet=6,skip=1,col_names=TRUE)
divorcios2012mes <- read_excel(paste(path,"/DATA/divorcios2012.xls",sep=""),
                               sheet=6,skip=1,col_names=TRUE)
divorcios2013mes <- read_excel(paste(path,"/DATA/divorcios2013.xls",sep=""),
                               sheet=6,skip=1,col_names=TRUE)
divorcios2014mes <- read_excel(paste(path,"/DATA/divorcios2014.xls",sep=""),
                               sheet=6,skip=1,col_names=TRUE)
divorcios2015mes <- read_excel(paste(path,"/DATA/divorcios2015.xls",sep=""),
                               sheet=6,skip=1,col_names=TRUE)
divorcios2016mes <- read_excel(paste(path,"/DATA/Divorcios2016.xls",sep=""),
                               sheet=6,skip=1,col_names=TRUE)
divorcios2017mes <- read_excel(paste(path,"/DATA/Divorcios2017.xlsx",sep=""),
                               sheet=6,skip=1,col_names=TRUE)
divorciosTotalesMes <- c(divorcios2010mes$Enero[1],divorcios2010mes$Febrero[1],divorcios2010mes$Marzo[1],divorcios2010mes$Abril[1],
                         divorcios2010mes$Mayo[1],divorcios2010mes$Junio[1],divorcios2010mes$Julio[1],divorcios2010mes$Agosto[1],
                         divorcios2010mes$Septiembre[1],divorcios2010mes$Octubre[1],divorcios2010mes$Noviembre[1],divorcios2010mes$Diciembre[1],
                         divorcios2011mes$Enero[1],divorcios2011mes$Febrero[1],divorcios2011mes$Marzo[1],divorcios2011mes$Abril[1],
                         divorcios2011mes$Mayo[1],divorcios2011mes$Junio[1],divorcios2011mes$Julio[1],divorcios2011mes$Agosto[1],
                         divorcios2011mes$Septiembre[1],divorcios2011mes$Octubre[1],divorcios2011mes$Noviembre[1],divorcios2011mes$Diciembre[1],
                         divorcios2012mes$Enero[1],divorcios2012mes$Febrero[1],divorcios2012mes$Marzo[1],divorcios2012mes$Abril[1],
                         divorcios2012mes$Mayo[1],divorcios2012mes$Junio[1],divorcios2012mes$Julio[1],divorcios2012mes$Agosto[1],
                         divorcios2012mes$Septiembre[1],divorcios2012mes$Octubre[1],divorcios2012mes$Noviembre[1],divorcios2012mes$Diciembre[1],
                         divorcios2013mes$Enero[1],divorcios2013mes$Febrero[1],divorcios2013mes$Marzo[1],divorcios2013mes$Abril[1],
                         divorcios2013mes$Mayo[1],divorcios2013mes$Junio[1],divorcios2013mes$Julio[1],divorcios2013mes$Agosto[1],
                         divorcios2013mes$Septiembre[1],divorcios2013mes$Octubre[1],divorcios2013mes$Noviembre[1],divorcios2013mes$Diciembre[1],
                         divorcios2014mes$Enero[1],divorcios2014mes$Febrero[1],divorcios2014mes$Marzo[1],divorcios2014mes$Abril[1],
                         divorcios2014mes$Mayo[1],divorcios2014mes$Junio[1],divorcios2014mes$Julio[1],divorcios2014mes$Agosto[1],
                         divorcios2014mes$Septiembre[1],divorcios2014mes$Octubre[1],divorcios2014mes$Noviembre[1],divorcios2014mes$Diciembre[1])
X01 <- c(divorcios2010mes$Enero[2],divorcios2010mes$Febrero[2],divorcios2010mes$Marzo[2],divorcios2010mes$Abril[2],
         divorcios2010mes$Mayo[2],divorcios2010mes$Junio[2],divorcios2010mes$Julio[2],divorcios2010mes$Agosto[2],
         divorcios2010mes$Septiembre[2],divorcios2010mes$Octubre[2],divorcios2010mes$Noviembre[2],divorcios2010mes$Diciembre[2],
         divorcios2011mes$Enero[2],divorcios2011mes$Febrero[2],divorcios2011mes$Marzo[2],divorcios2011mes$Abril[2],
         divorcios2011mes$Mayo[2],divorcios2011mes$Junio[2],divorcios2011mes$Julio[2],divorcios2011mes$Agosto[2],
         divorcios2011mes$Septiembre[2],divorcios2011mes$Octubre[2],divorcios2011mes$Noviembre[2],divorcios2011mes$Diciembre[2],
         divorcios2012mes$Enero[2],divorcios2012mes$Febrero[2],divorcios2012mes$Marzo[2],divorcios2012mes$Abril[2],
         divorcios2012mes$Mayo[2],divorcios2012mes$Junio[2],divorcios2012mes$Julio[2],divorcios2012mes$Agosto[2],
         divorcios2012mes$Septiembre[2],divorcios2012mes$Octubre[2],divorcios2012mes$Noviembre[2],divorcios2012mes$Diciembre[2],
         divorcios2013mes$Enero[2],divorcios2013mes$Febrero[2],divorcios2013mes$Marzo[2],divorcios2013mes$Abril[2],
         divorcios2013mes$Mayo[2],divorcios2013mes$Junio[2],divorcios2013mes$Julio[2],divorcios2013mes$Agosto[2],
         divorcios2013mes$Septiembre[2],divorcios2013mes$Octubre[2],divorcios2013mes$Noviembre[2],divorcios2013mes$Diciembre[2],
         divorcios2014mes$Enero[2],divorcios2014mes$Febrero[2],divorcios2014mes$Marzo[2],divorcios2014mes$Abril[2],
         divorcios2014mes$Mayo[2],divorcios2014mes$Junio[2],divorcios2014mes$Julio[2],divorcios2014mes$Agosto[2],
         divorcios2014mes$Septiembre[2],divorcios2014mes$Octubre[2],divorcios2014mes$Noviembre[2],divorcios2014mes$Diciembre[2])
X02 <- c(divorcios2010mes$Enero[3],divorcios2010mes$Febrero[3],divorcios2010mes$Marzo[3],divorcios2010mes$Abril[3],
         divorcios2010mes$Mayo[3],divorcios2010mes$Junio[3],divorcios2010mes$Julio[3],divorcios2010mes$Agosto[3],
         divorcios2010mes$Septiembre[3],divorcios2010mes$Octubre[3],divorcios2010mes$Noviembre[3],divorcios2010mes$Diciembre[3],
         divorcios2011mes$Enero[3],divorcios2011mes$Febrero[3],divorcios2011mes$Marzo[3],divorcios2011mes$Abril[3],
         divorcios2011mes$Mayo[3],divorcios2011mes$Junio[3],divorcios2011mes$Julio[3],divorcios2011mes$Agosto[3],
         divorcios2011mes$Septiembre[3],divorcios2011mes$Octubre[3],divorcios2011mes$Noviembre[3],divorcios2011mes$Diciembre[3],
         divorcios2012mes$Enero[3],divorcios2012mes$Febrero[3],divorcios2012mes$Marzo[3],divorcios2012mes$Abril[3],
         divorcios2012mes$Mayo[3],divorcios2012mes$Junio[3],divorcios2012mes$Julio[3],divorcios2012mes$Agosto[3],
         divorcios2012mes$Septiembre[3],divorcios2012mes$Octubre[3],divorcios2012mes$Noviembre[3],divorcios2012mes$Diciembre[3],
         divorcios2013mes$Enero[3],divorcios2013mes$Febrero[3],divorcios2013mes$Marzo[3],divorcios2013mes$Abril[3],
         divorcios2013mes$Mayo[3],divorcios2013mes$Junio[3],divorcios2013mes$Julio[3],divorcios2013mes$Agosto[3],
         divorcios2013mes$Septiembre[3],divorcios2013mes$Octubre[3],divorcios2013mes$Noviembre[3],divorcios2013mes$Diciembre[3],
         divorcios2014mes$Enero[3],divorcios2014mes$Febrero[3],divorcios2014mes$Marzo[3],divorcios2014mes$Abril[3],
         divorcios2014mes$Mayo[3],divorcios2014mes$Junio[3],divorcios2014mes$Julio[3],divorcios2014mes$Agosto[3],
         divorcios2014mes$Septiembre[3],divorcios2014mes$Octubre[3],divorcios2014mes$Noviembre[3],divorcios2014mes$Diciembre[3])
X03 <- c(divorcios2010mes$Enero[4],divorcios2010mes$Febrero[4],divorcios2010mes$Marzo[4],divorcios2010mes$Abril[4],
         divorcios2010mes$Mayo[4],divorcios2010mes$Junio[4],divorcios2010mes$Julio[4],divorcios2010mes$Agosto[4],
         divorcios2010mes$Septiembre[4],divorcios2010mes$Octubre[4],divorcios2010mes$Noviembre[4],divorcios2010mes$Diciembre[4],
         divorcios2011mes$Enero[4],divorcios2011mes$Febrero[4],divorcios2011mes$Marzo[4],divorcios2011mes$Abril[4],
         divorcios2011mes$Mayo[4],divorcios2011mes$Junio[4],divorcios2011mes$Julio[4],divorcios2011mes$Agosto[4],
         divorcios2011mes$Septiembre[4],divorcios2011mes$Octubre[4],divorcios2011mes$Noviembre[4],divorcios2011mes$Diciembre[4],
         divorcios2012mes$Enero[4],divorcios2012mes$Febrero[4],divorcios2012mes$Marzo[4],divorcios2012mes$Abril[4],
         divorcios2012mes$Mayo[4],divorcios2012mes$Junio[4],divorcios2012mes$Julio[4],divorcios2012mes$Agosto[4],
         divorcios2012mes$Septiembre[4],divorcios2012mes$Octubre[4],divorcios2012mes$Noviembre[4],divorcios2012mes$Diciembre[4],
         divorcios2013mes$Enero[4],divorcios2013mes$Febrero[4],divorcios2013mes$Marzo[4],divorcios2013mes$Abril[4],
         divorcios2013mes$Mayo[4],divorcios2013mes$Junio[4],divorcios2013mes$Julio[4],divorcios2013mes$Agosto[4],
         divorcios2013mes$Septiembre[4],divorcios2013mes$Octubre[4],divorcios2013mes$Noviembre[4],divorcios2013mes$Diciembre[4],
         divorcios2014mes$Enero[4],divorcios2014mes$Febrero[4],divorcios2014mes$Marzo[4],divorcios2014mes$Abril[4],
         divorcios2014mes$Mayo[4],divorcios2014mes$Junio[4],divorcios2014mes$Julio[4],divorcios2014mes$Agosto[4],
         divorcios2014mes$Septiembre[4],divorcios2014mes$Octubre[4],divorcios2014mes$Noviembre[4],divorcios2014mes$Diciembre[4])
X04 <- c(divorcios2010mes$Enero[5],divorcios2010mes$Febrero[5],divorcios2010mes$Marzo[5],divorcios2010mes$Abril[5],
         divorcios2010mes$Mayo[5],divorcios2010mes$Junio[5],divorcios2010mes$Julio[5],divorcios2010mes$Agosto[5],
         divorcios2010mes$Septiembre[5],divorcios2010mes$Octubre[5],divorcios2010mes$Noviembre[5],divorcios2010mes$Diciembre[5],
         divorcios2011mes$Enero[5],divorcios2011mes$Febrero[5],divorcios2011mes$Marzo[5],divorcios2011mes$Abril[5],
         divorcios2011mes$Mayo[5],divorcios2011mes$Junio[5],divorcios2011mes$Julio[5],divorcios2011mes$Agosto[5],
         divorcios2011mes$Septiembre[5],divorcios2011mes$Octubre[5],divorcios2011mes$Noviembre[5],divorcios2011mes$Diciembre[5],
         divorcios2012mes$Enero[5],divorcios2012mes$Febrero[5],divorcios2012mes$Marzo[5],divorcios2012mes$Abril[5],
         divorcios2012mes$Mayo[5],divorcios2012mes$Junio[5],divorcios2012mes$Julio[5],divorcios2012mes$Agosto[5],
         divorcios2012mes$Septiembre[5],divorcios2012mes$Octubre[5],divorcios2012mes$Noviembre[5],divorcios2012mes$Diciembre[5],
         divorcios2013mes$Enero[5],divorcios2013mes$Febrero[5],divorcios2013mes$Marzo[5],divorcios2013mes$Abril[5],
         divorcios2013mes$Mayo[5],divorcios2013mes$Junio[5],divorcios2013mes$Julio[5],divorcios2013mes$Agosto[5],
         divorcios2013mes$Septiembre[5],divorcios2013mes$Octubre[5],divorcios2013mes$Noviembre[5],divorcios2013mes$Diciembre[5],
         divorcios2014mes$Enero[5],divorcios2014mes$Febrero[5],divorcios2014mes$Marzo[5],divorcios2014mes$Abril[5],
         divorcios2014mes$Mayo[5],divorcios2014mes$Junio[5],divorcios2014mes$Julio[5],divorcios2014mes$Agosto[5],
         divorcios2014mes$Septiembre[5],divorcios2014mes$Octubre[5],divorcios2014mes$Noviembre[5],divorcios2014mes$Diciembre[5])
X05 <- c(divorcios2010mes$Enero[6],divorcios2010mes$Febrero[6],divorcios2010mes$Marzo[6],divorcios2010mes$Abril[6],
         divorcios2010mes$Mayo[6],divorcios2010mes$Junio[6],divorcios2010mes$Julio[6],divorcios2010mes$Agosto[6],
         divorcios2010mes$Septiembre[6],divorcios2010mes$Octubre[6],divorcios2010mes$Noviembre[6],divorcios2010mes$Diciembre[6],
         divorcios2011mes$Enero[6],divorcios2011mes$Febrero[6],divorcios2011mes$Marzo[6],divorcios2011mes$Abril[6],
         divorcios2011mes$Mayo[6],divorcios2011mes$Junio[6],divorcios2011mes$Julio[6],divorcios2011mes$Agosto[6],
         divorcios2011mes$Septiembre[6],divorcios2011mes$Octubre[6],divorcios2011mes$Noviembre[6],divorcios2011mes$Diciembre[6],
         divorcios2012mes$Enero[6],divorcios2012mes$Febrero[6],divorcios2012mes$Marzo[6],divorcios2012mes$Abril[6],
         divorcios2012mes$Mayo[6],divorcios2012mes$Junio[6],divorcios2012mes$Julio[6],divorcios2012mes$Agosto[6],
         divorcios2012mes$Septiembre[6],divorcios2012mes$Octubre[6],divorcios2012mes$Noviembre[6],divorcios2012mes$Diciembre[6],
         divorcios2013mes$Enero[6],divorcios2013mes$Febrero[6],divorcios2013mes$Marzo[6],divorcios2013mes$Abril[6],
         divorcios2013mes$Mayo[6],divorcios2013mes$Junio[6],divorcios2013mes$Julio[6],divorcios2013mes$Agosto[6],
         divorcios2013mes$Septiembre[6],divorcios2013mes$Octubre[6],divorcios2013mes$Noviembre[6],divorcios2013mes$Diciembre[6],
         divorcios2014mes$Enero[6],divorcios2014mes$Febrero[6],divorcios2014mes$Marzo[6],divorcios2014mes$Abril[6],
         divorcios2014mes$Mayo[6],divorcios2014mes$Junio[6],divorcios2014mes$Julio[6],divorcios2014mes$Agosto[6],
         divorcios2014mes$Septiembre[6],divorcios2014mes$Octubre[6],divorcios2014mes$Noviembre[6],divorcios2014mes$Diciembre[6])
X06 <- c(divorcios2010mes$Enero[7],divorcios2010mes$Febrero[7],divorcios2010mes$Marzo[7],divorcios2010mes$Abril[7],
         divorcios2010mes$Mayo[7],divorcios2010mes$Junio[7],divorcios2010mes$Julio[7],divorcios2010mes$Agosto[7],
         divorcios2010mes$Septiembre[7],divorcios2010mes$Octubre[7],divorcios2010mes$Noviembre[7],divorcios2010mes$Diciembre[7],
         divorcios2011mes$Enero[7],divorcios2011mes$Febrero[7],divorcios2011mes$Marzo[7],divorcios2011mes$Abril[7],
         divorcios2011mes$Mayo[7],divorcios2011mes$Junio[7],divorcios2011mes$Julio[7],divorcios2011mes$Agosto[7],
         divorcios2011mes$Septiembre[7],divorcios2011mes$Octubre[7],divorcios2011mes$Noviembre[7],divorcios2011mes$Diciembre[7],
         divorcios2012mes$Enero[7],divorcios2012mes$Febrero[7],divorcios2012mes$Marzo[7],divorcios2012mes$Abril[7],
         divorcios2012mes$Mayo[7],divorcios2012mes$Junio[7],divorcios2012mes$Julio[7],divorcios2012mes$Agosto[7],
         divorcios2012mes$Septiembre[7],divorcios2012mes$Octubre[7],divorcios2012mes$Noviembre[7],divorcios2012mes$Diciembre[7],
         divorcios2013mes$Enero[7],divorcios2013mes$Febrero[7],divorcios2013mes$Marzo[7],divorcios2013mes$Abril[7],
         divorcios2013mes$Mayo[7],divorcios2013mes$Junio[7],divorcios2013mes$Julio[7],divorcios2013mes$Agosto[7],
         divorcios2013mes$Septiembre[7],divorcios2013mes$Octubre[7],divorcios2013mes$Noviembre[7],divorcios2013mes$Diciembre[7],
         divorcios2014mes$Enero[7],divorcios2014mes$Febrero[7],divorcios2014mes$Marzo[7],divorcios2014mes$Abril[7],
         divorcios2014mes$Mayo[7],divorcios2014mes$Junio[7],divorcios2014mes$Julio[7],divorcios2014mes$Agosto[7],
         divorcios2014mes$Septiembre[7],divorcios2014mes$Octubre[7],divorcios2014mes$Noviembre[7],divorcios2014mes$Diciembre[7])
X07 <- c(divorcios2010mes$Enero[8],divorcios2010mes$Febrero[8],divorcios2010mes$Marzo[8],divorcios2010mes$Abril[8],
         divorcios2010mes$Mayo[8],divorcios2010mes$Junio[8],divorcios2010mes$Julio[8],divorcios2010mes$Agosto[8],
         divorcios2010mes$Septiembre[8],divorcios2010mes$Octubre[8],divorcios2010mes$Noviembre[8],divorcios2010mes$Diciembre[8],
         divorcios2011mes$Enero[8],divorcios2011mes$Febrero[8],divorcios2011mes$Marzo[8],divorcios2011mes$Abril[8],
         divorcios2011mes$Mayo[8],divorcios2011mes$Junio[8],divorcios2011mes$Julio[8],divorcios2011mes$Agosto[8],
         divorcios2011mes$Septiembre[8],divorcios2011mes$Octubre[8],divorcios2011mes$Noviembre[8],divorcios2011mes$Diciembre[8],
         divorcios2012mes$Enero[8],divorcios2012mes$Febrero[8],divorcios2012mes$Marzo[8],divorcios2012mes$Abril[8],
         divorcios2012mes$Mayo[8],divorcios2012mes$Junio[8],divorcios2012mes$Julio[8],divorcios2012mes$Agosto[8],
         divorcios2012mes$Septiembre[8],divorcios2012mes$Octubre[8],divorcios2012mes$Noviembre[8],divorcios2012mes$Diciembre[8],
         divorcios2013mes$Enero[8],divorcios2013mes$Febrero[8],divorcios2013mes$Marzo[8],divorcios2013mes$Abril[8],
         divorcios2013mes$Mayo[8],divorcios2013mes$Junio[8],divorcios2013mes$Julio[8],divorcios2013mes$Agosto[8],
         divorcios2013mes$Septiembre[8],divorcios2013mes$Octubre[8],divorcios2013mes$Noviembre[8],divorcios2013mes$Diciembre[8],
         divorcios2014mes$Enero[8],divorcios2014mes$Febrero[8],divorcios2014mes$Marzo[8],divorcios2014mes$Abril[8],
         divorcios2014mes$Mayo[8],divorcios2014mes$Junio[8],divorcios2014mes$Julio[8],divorcios2014mes$Agosto[8],
         divorcios2014mes$Septiembre[8],divorcios2014mes$Octubre[8],divorcios2014mes$Noviembre[8],divorcios2014mes$Diciembre[8])
X08 <- c(divorcios2010mes$Enero[9],divorcios2010mes$Febrero[9],divorcios2010mes$Marzo[9],divorcios2010mes$Abril[9],
         divorcios2010mes$Mayo[9],divorcios2010mes$Junio[9],divorcios2010mes$Julio[9],divorcios2010mes$Agosto[9],
         divorcios2010mes$Septiembre[9],divorcios2010mes$Octubre[9],divorcios2010mes$Noviembre[9],divorcios2010mes$Diciembre[9],
         divorcios2011mes$Enero[9],divorcios2011mes$Febrero[9],divorcios2011mes$Marzo[9],divorcios2011mes$Abril[9],
         divorcios2011mes$Mayo[9],divorcios2011mes$Junio[9],divorcios2011mes$Julio[9],divorcios2011mes$Agosto[9],
         divorcios2011mes$Septiembre[9],divorcios2011mes$Octubre[9],divorcios2011mes$Noviembre[9],divorcios2011mes$Diciembre[9],
         divorcios2012mes$Enero[9],divorcios2012mes$Febrero[9],divorcios2012mes$Marzo[9],divorcios2012mes$Abril[9],
         divorcios2012mes$Mayo[9],divorcios2012mes$Junio[9],divorcios2012mes$Julio[9],divorcios2012mes$Agosto[9],
         divorcios2012mes$Septiembre[9],divorcios2012mes$Octubre[9],divorcios2012mes$Noviembre[9],divorcios2012mes$Diciembre[9],
         divorcios2013mes$Enero[9],divorcios2013mes$Febrero[9],divorcios2013mes$Marzo[9],divorcios2013mes$Abril[9],
         divorcios2013mes$Mayo[9],divorcios2013mes$Junio[9],divorcios2013mes$Julio[9],divorcios2013mes$Agosto[9],
         divorcios2013mes$Septiembre[9],divorcios2013mes$Octubre[9],divorcios2013mes$Noviembre[9],divorcios2013mes$Diciembre[9],
         divorcios2014mes$Enero[9],divorcios2014mes$Febrero[9],divorcios2014mes$Marzo[9],divorcios2014mes$Abril[9],
         divorcios2014mes$Mayo[9],divorcios2014mes$Junio[9],divorcios2014mes$Julio[9],divorcios2014mes$Agosto[9],
         divorcios2014mes$Septiembre[9],divorcios2014mes$Octubre[9],divorcios2014mes$Noviembre[9],divorcios2014mes$Diciembre[9])
X09 <- c(divorcios2010mes$Enero[10],divorcios2010mes$Febrero[10],divorcios2010mes$Marzo[10],divorcios2010mes$Abril[10],
         divorcios2010mes$Mayo[10],divorcios2010mes$Junio[10],divorcios2010mes$Julio[10],divorcios2010mes$Agosto[10],
         divorcios2010mes$Septiembre[10],divorcios2010mes$Octubre[10],divorcios2010mes$Noviembre[10],divorcios2010mes$Diciembre[10],
         divorcios2011mes$Enero[10],divorcios2011mes$Febrero[10],divorcios2011mes$Marzo[10],divorcios2011mes$Abril[10],
         divorcios2011mes$Mayo[10],divorcios2011mes$Junio[10],divorcios2011mes$Julio[10],divorcios2011mes$Agosto[10],
         divorcios2011mes$Septiembre[10],divorcios2011mes$Octubre[10],divorcios2011mes$Noviembre[10],divorcios2011mes$Diciembre[10],
         divorcios2012mes$Enero[10],divorcios2012mes$Febrero[10],divorcios2012mes$Marzo[10],divorcios2012mes$Abril[10],
         divorcios2012mes$Mayo[10],divorcios2012mes$Junio[10],divorcios2012mes$Julio[10],divorcios2012mes$Agosto[10],
         divorcios2012mes$Septiembre[10],divorcios2012mes$Octubre[10],divorcios2012mes$Noviembre[10],divorcios2012mes$Diciembre[10],
         divorcios2013mes$Enero[10],divorcios2013mes$Febrero[10],divorcios2013mes$Marzo[10],divorcios2013mes$Abril[10],
         divorcios2013mes$Mayo[10],divorcios2013mes$Junio[10],divorcios2013mes$Julio[10],divorcios2013mes$Agosto[10],
         divorcios2013mes$Septiembre[10],divorcios2013mes$Octubre[10],divorcios2013mes$Noviembre[10],divorcios2013mes$Diciembre[10],
         divorcios2014mes$Enero[10],divorcios2014mes$Febrero[10],divorcios2014mes$Marzo[10],divorcios2014mes$Abril[10],
         divorcios2014mes$Mayo[10],divorcios2014mes$Junio[10],divorcios2014mes$Julio[10],divorcios2014mes$Agosto[10],
         divorcios2014mes$Septiembre[10],divorcios2014mes$Octubre[10],divorcios2014mes$Noviembre[10],divorcios2014mes$Diciembre[10])
X10 <- c(divorcios2010mes$Enero[11],divorcios2010mes$Febrero[11],divorcios2010mes$Marzo[11],divorcios2010mes$Abril[11],
         divorcios2010mes$Mayo[11],divorcios2010mes$Junio[11],divorcios2010mes$Julio[11],divorcios2010mes$Agosto[11],
         divorcios2010mes$Septiembre[11],divorcios2010mes$Octubre[11],divorcios2010mes$Noviembre[11],divorcios2010mes$Diciembre[11],
         divorcios2011mes$Enero[11],divorcios2011mes$Febrero[11],divorcios2011mes$Marzo[11],divorcios2011mes$Abril[11],
         divorcios2011mes$Mayo[11],divorcios2011mes$Junio[11],divorcios2011mes$Julio[11],divorcios2011mes$Agosto[11],
         divorcios2011mes$Septiembre[11],divorcios2011mes$Octubre[11],divorcios2011mes$Noviembre[11],divorcios2011mes$Diciembre[11],
         divorcios2012mes$Enero[11],divorcios2012mes$Febrero[11],divorcios2012mes$Marzo[11],divorcios2012mes$Abril[11],
         divorcios2012mes$Mayo[11],divorcios2012mes$Junio[11],divorcios2012mes$Julio[11],divorcios2012mes$Agosto[11],
         divorcios2012mes$Septiembre[11],divorcios2012mes$Octubre[11],divorcios2012mes$Noviembre[11],divorcios2012mes$Diciembre[11],
         divorcios2013mes$Enero[11],divorcios2013mes$Febrero[11],divorcios2013mes$Marzo[11],divorcios2013mes$Abril[11],
         divorcios2013mes$Mayo[11],divorcios2013mes$Junio[11],divorcios2013mes$Julio[11],divorcios2013mes$Agosto[11],
         divorcios2013mes$Septiembre[11],divorcios2013mes$Octubre[11],divorcios2013mes$Noviembre[11],divorcios2013mes$Diciembre[11],
         divorcios2014mes$Enero[11],divorcios2014mes$Febrero[11],divorcios2014mes$Marzo[11],divorcios2014mes$Abril[11],
         divorcios2014mes$Mayo[11],divorcios2014mes$Junio[11],divorcios2014mes$Julio[11],divorcios2014mes$Agosto[11],
         divorcios2014mes$Septiembre[11],divorcios2014mes$Octubre[11],divorcios2014mes$Noviembre[11],divorcios2014mes$Diciembre[11])
X11 <- c(divorcios2010mes$Enero[12],divorcios2010mes$Febrero[12],divorcios2010mes$Marzo[12],divorcios2010mes$Abril[12],
         divorcios2010mes$Mayo[12],divorcios2010mes$Junio[12],divorcios2010mes$Julio[12],divorcios2010mes$Agosto[12],
         divorcios2010mes$Septiembre[12],divorcios2010mes$Octubre[12],divorcios2010mes$Noviembre[12],divorcios2010mes$Diciembre[12],
         divorcios2011mes$Enero[12],divorcios2011mes$Febrero[12],divorcios2011mes$Marzo[12],divorcios2011mes$Abril[12],
         divorcios2011mes$Mayo[12],divorcios2011mes$Junio[12],divorcios2011mes$Julio[12],divorcios2011mes$Agosto[12],
         divorcios2011mes$Septiembre[12],divorcios2011mes$Octubre[12],divorcios2011mes$Noviembre[12],divorcios2011mes$Diciembre[12],
         divorcios2012mes$Enero[12],divorcios2012mes$Febrero[12],divorcios2012mes$Marzo[12],divorcios2012mes$Abril[12],
         divorcios2012mes$Mayo[12],divorcios2012mes$Junio[12],divorcios2012mes$Julio[12],divorcios2012mes$Agosto[12],
         divorcios2012mes$Septiembre[12],divorcios2012mes$Octubre[12],divorcios2012mes$Noviembre[12],divorcios2012mes$Diciembre[12],
         divorcios2013mes$Enero[12],divorcios2013mes$Febrero[12],divorcios2013mes$Marzo[12],divorcios2013mes$Abril[12],
         divorcios2013mes$Mayo[12],divorcios2013mes$Junio[12],divorcios2013mes$Julio[12],divorcios2013mes$Agosto[12],
         divorcios2013mes$Septiembre[12],divorcios2013mes$Octubre[12],divorcios2013mes$Noviembre[12],divorcios2013mes$Diciembre[12],
         divorcios2014mes$Enero[12],divorcios2014mes$Febrero[12],divorcios2014mes$Marzo[12],divorcios2014mes$Abril[12],
         divorcios2014mes$Mayo[12],divorcios2014mes$Junio[12],divorcios2014mes$Julio[12],divorcios2014mes$Agosto[12],
         divorcios2014mes$Septiembre[12],divorcios2014mes$Octubre[12],divorcios2014mes$Noviembre[12],divorcios2014mes$Diciembre[12])
X12 <- c(divorcios2010mes$Enero[13],divorcios2010mes$Febrero[13],divorcios2010mes$Marzo[13],divorcios2010mes$Abril[13],
         divorcios2010mes$Mayo[13],divorcios2010mes$Junio[13],divorcios2010mes$Julio[13],divorcios2010mes$Agosto[13],
         divorcios2010mes$Septiembre[13],divorcios2010mes$Octubre[13],divorcios2010mes$Noviembre[13],divorcios2010mes$Diciembre[13],
         divorcios2011mes$Enero[13],divorcios2011mes$Febrero[13],divorcios2011mes$Marzo[13],divorcios2011mes$Abril[13],
         divorcios2011mes$Mayo[13],divorcios2011mes$Junio[13],divorcios2011mes$Julio[13],divorcios2011mes$Agosto[13],
         divorcios2011mes$Septiembre[13],divorcios2011mes$Octubre[13],divorcios2011mes$Noviembre[13],divorcios2011mes$Diciembre[13],
         divorcios2012mes$Enero[13],divorcios2012mes$Febrero[13],divorcios2012mes$Marzo[13],divorcios2012mes$Abril[13],
         divorcios2012mes$Mayo[13],divorcios2012mes$Junio[13],divorcios2012mes$Julio[13],divorcios2012mes$Agosto[13],
         divorcios2012mes$Septiembre[13],divorcios2012mes$Octubre[13],divorcios2012mes$Noviembre[13],divorcios2012mes$Diciembre[13],
         divorcios2013mes$Enero[13],divorcios2013mes$Febrero[13],divorcios2013mes$Marzo[13],divorcios2013mes$Abril[13],
         divorcios2013mes$Mayo[13],divorcios2013mes$Junio[13],divorcios2013mes$Julio[13],divorcios2013mes$Agosto[13],
         divorcios2013mes$Septiembre[13],divorcios2013mes$Octubre[13],divorcios2013mes$Noviembre[13],divorcios2013mes$Diciembre[13],
         divorcios2014mes$Enero[13],divorcios2014mes$Febrero[13],divorcios2014mes$Marzo[13],divorcios2014mes$Abril[13],
         divorcios2014mes$Mayo[13],divorcios2014mes$Junio[13],divorcios2014mes$Julio[13],divorcios2014mes$Agosto[13],
         divorcios2014mes$Septiembre[13],divorcios2014mes$Octubre[13],divorcios2014mes$Noviembre[13],divorcios2014mes$Diciembre[13])
X13 <- c(divorcios2010mes$Enero[14],divorcios2010mes$Febrero[14],divorcios2010mes$Marzo[14],divorcios2010mes$Abril[14],
         divorcios2010mes$Mayo[14],divorcios2010mes$Junio[14],divorcios2010mes$Julio[14],divorcios2010mes$Agosto[14],
         divorcios2010mes$Septiembre[14],divorcios2010mes$Octubre[14],divorcios2010mes$Noviembre[14],divorcios2010mes$Diciembre[14],
         divorcios2011mes$Enero[14],divorcios2011mes$Febrero[14],divorcios2011mes$Marzo[14],divorcios2011mes$Abril[14],
         divorcios2011mes$Mayo[14],divorcios2011mes$Junio[14],divorcios2011mes$Julio[14],divorcios2011mes$Agosto[14],
         divorcios2011mes$Septiembre[14],divorcios2011mes$Octubre[14],divorcios2011mes$Noviembre[14],divorcios2011mes$Diciembre[14],
         divorcios2012mes$Enero[14],divorcios2012mes$Febrero[14],divorcios2012mes$Marzo[14],divorcios2012mes$Abril[14],
         divorcios2012mes$Mayo[14],divorcios2012mes$Junio[14],divorcios2012mes$Julio[14],divorcios2012mes$Agosto[14],
         divorcios2012mes$Septiembre[14],divorcios2012mes$Octubre[14],divorcios2012mes$Noviembre[14],divorcios2012mes$Diciembre[14],
         divorcios2013mes$Enero[14],divorcios2013mes$Febrero[14],divorcios2013mes$Marzo[14],divorcios2013mes$Abril[14],
         divorcios2013mes$Mayo[14],divorcios2013mes$Junio[14],divorcios2013mes$Julio[14],divorcios2013mes$Agosto[14],
         divorcios2013mes$Septiembre[14],divorcios2013mes$Octubre[14],divorcios2013mes$Noviembre[14],divorcios2013mes$Diciembre[14],
         divorcios2014mes$Enero[14],divorcios2014mes$Febrero[14],divorcios2014mes$Marzo[14],divorcios2014mes$Abril[14],
         divorcios2014mes$Mayo[14],divorcios2014mes$Junio[14],divorcios2014mes$Julio[14],divorcios2014mes$Agosto[14],
         divorcios2014mes$Septiembre[14],divorcios2014mes$Octubre[14],divorcios2014mes$Noviembre[14],divorcios2014mes$Diciembre[14])
X14 <- c(divorcios2010mes$Enero[15],divorcios2010mes$Febrero[15],divorcios2010mes$Marzo[15],divorcios2010mes$Abril[15],
         divorcios2010mes$Mayo[15],divorcios2010mes$Junio[15],divorcios2010mes$Julio[15],divorcios2010mes$Agosto[15],
         divorcios2010mes$Septiembre[15],divorcios2010mes$Octubre[15],divorcios2010mes$Noviembre[15],divorcios2010mes$Diciembre[15],
         divorcios2011mes$Enero[15],divorcios2011mes$Febrero[15],divorcios2011mes$Marzo[15],divorcios2011mes$Abril[15],
         divorcios2011mes$Mayo[15],divorcios2011mes$Junio[15],divorcios2011mes$Julio[15],divorcios2011mes$Agosto[15],
         divorcios2011mes$Septiembre[15],divorcios2011mes$Octubre[15],divorcios2011mes$Noviembre[15],divorcios2011mes$Diciembre[15],
         divorcios2012mes$Enero[15],divorcios2012mes$Febrero[15],divorcios2012mes$Marzo[15],divorcios2012mes$Abril[15],
         divorcios2012mes$Mayo[15],divorcios2012mes$Junio[15],divorcios2012mes$Julio[15],divorcios2012mes$Agosto[15],
         divorcios2012mes$Septiembre[15],divorcios2012mes$Octubre[15],divorcios2012mes$Noviembre[15],divorcios2012mes$Diciembre[15],
         divorcios2013mes$Enero[15],divorcios2013mes$Febrero[15],divorcios2013mes$Marzo[15],divorcios2013mes$Abril[15],
         divorcios2013mes$Mayo[15],divorcios2013mes$Junio[15],divorcios2013mes$Julio[15],divorcios2013mes$Agosto[15],
         divorcios2013mes$Septiembre[15],divorcios2013mes$Octubre[15],divorcios2013mes$Noviembre[15],divorcios2013mes$Diciembre[15],
         divorcios2014mes$Enero[15],divorcios2014mes$Febrero[15],divorcios2014mes$Marzo[15],divorcios2014mes$Abril[15],
         divorcios2014mes$Mayo[15],divorcios2014mes$Junio[15],divorcios2014mes$Julio[15],divorcios2014mes$Agosto[15],
         divorcios2014mes$Septiembre[15],divorcios2014mes$Octubre[15],divorcios2014mes$Noviembre[15],divorcios2014mes$Diciembre[15])
X15 <- c(divorcios2010mes$Enero[16],divorcios2010mes$Febrero[16],divorcios2010mes$Marzo[16],divorcios2010mes$Abril[16],
         divorcios2010mes$Mayo[16],divorcios2010mes$Junio[16],divorcios2010mes$Julio[16],divorcios2010mes$Agosto[16],
         divorcios2010mes$Septiembre[16],divorcios2010mes$Octubre[16],divorcios2010mes$Noviembre[16],divorcios2010mes$Diciembre[16],
         divorcios2011mes$Enero[16],divorcios2011mes$Febrero[16],divorcios2011mes$Marzo[16],divorcios2011mes$Abril[16],
         divorcios2011mes$Mayo[16],divorcios2011mes$Junio[16],divorcios2011mes$Julio[16],divorcios2011mes$Agosto[16],
         divorcios2011mes$Septiembre[16],divorcios2011mes$Octubre[16],divorcios2011mes$Noviembre[16],divorcios2011mes$Diciembre[16],
         divorcios2012mes$Enero[16],divorcios2012mes$Febrero[16],divorcios2012mes$Marzo[16],divorcios2012mes$Abril[16],
         divorcios2012mes$Mayo[16],divorcios2012mes$Junio[16],divorcios2012mes$Julio[16],divorcios2012mes$Agosto[16],
         divorcios2012mes$Septiembre[16],divorcios2012mes$Octubre[16],divorcios2012mes$Noviembre[16],divorcios2012mes$Diciembre[16],
         divorcios2013mes$Enero[16],divorcios2013mes$Febrero[16],divorcios2013mes$Marzo[16],divorcios2013mes$Abril[16],
         divorcios2013mes$Mayo[16],divorcios2013mes$Junio[16],divorcios2013mes$Julio[16],divorcios2013mes$Agosto[16],
         divorcios2013mes$Septiembre[16],divorcios2013mes$Octubre[16],divorcios2013mes$Noviembre[16],divorcios2013mes$Diciembre[16],
         divorcios2014mes$Enero[16],divorcios2014mes$Febrero[16],divorcios2014mes$Marzo[16],divorcios2014mes$Abril[16],
         divorcios2014mes$Mayo[16],divorcios2014mes$Junio[16],divorcios2014mes$Julio[16],divorcios2014mes$Agosto[16],
         divorcios2014mes$Septiembre[16],divorcios2014mes$Octubre[16],divorcios2014mes$Noviembre[16],divorcios2014mes$Diciembre[16])
X16 <- c(divorcios2010mes$Enero[17],divorcios2010mes$Febrero[17],divorcios2010mes$Marzo[17],divorcios2010mes$Abril[17],
         divorcios2010mes$Mayo[17],divorcios2010mes$Junio[17],divorcios2010mes$Julio[17],divorcios2010mes$Agosto[17],
         divorcios2010mes$Septiembre[17],divorcios2010mes$Octubre[17],divorcios2010mes$Noviembre[17],divorcios2010mes$Diciembre[17],
         divorcios2011mes$Enero[17],divorcios2011mes$Febrero[17],divorcios2011mes$Marzo[17],divorcios2011mes$Abril[17],
         divorcios2011mes$Mayo[17],divorcios2011mes$Junio[17],divorcios2011mes$Julio[17],divorcios2011mes$Agosto[17],
         divorcios2011mes$Septiembre[17],divorcios2011mes$Octubre[17],divorcios2011mes$Noviembre[17],divorcios2011mes$Diciembre[17],
         divorcios2012mes$Enero[17],divorcios2012mes$Febrero[17],divorcios2012mes$Marzo[17],divorcios2012mes$Abril[17],
         divorcios2012mes$Mayo[17],divorcios2012mes$Junio[17],divorcios2012mes$Julio[17],divorcios2012mes$Agosto[17],
         divorcios2012mes$Septiembre[17],divorcios2012mes$Octubre[17],divorcios2012mes$Noviembre[17],divorcios2012mes$Diciembre[17],
         divorcios2013mes$Enero[17],divorcios2013mes$Febrero[17],divorcios2013mes$Marzo[17],divorcios2013mes$Abril[17],
         divorcios2013mes$Mayo[17],divorcios2013mes$Junio[17],divorcios2013mes$Julio[17],divorcios2013mes$Agosto[17],
         divorcios2013mes$Septiembre[17],divorcios2013mes$Octubre[17],divorcios2013mes$Noviembre[17],divorcios2013mes$Diciembre[17],
         divorcios2014mes$Enero[17],divorcios2014mes$Febrero[17],divorcios2014mes$Marzo[17],divorcios2014mes$Abril[17],
         divorcios2014mes$Mayo[17],divorcios2014mes$Junio[17],divorcios2014mes$Julio[17],divorcios2014mes$Agosto[17],
         divorcios2014mes$Septiembre[17],divorcios2014mes$Octubre[17],divorcios2014mes$Noviembre[17],divorcios2014mes$Diciembre[17])
X17 <- c(divorcios2010mes$Enero[18],divorcios2010mes$Febrero[18],divorcios2010mes$Marzo[18],divorcios2010mes$Abril[18],
         divorcios2010mes$Mayo[18],divorcios2010mes$Junio[18],divorcios2010mes$Julio[18],divorcios2010mes$Agosto[18],
         divorcios2010mes$Septiembre[18],divorcios2010mes$Octubre[18],divorcios2010mes$Noviembre[18],divorcios2010mes$Diciembre[18],
         divorcios2011mes$Enero[18],divorcios2011mes$Febrero[18],divorcios2011mes$Marzo[18],divorcios2011mes$Abril[18],
         divorcios2011mes$Mayo[18],divorcios2011mes$Junio[18],divorcios2011mes$Julio[18],divorcios2011mes$Agosto[18],
         divorcios2011mes$Septiembre[18],divorcios2011mes$Octubre[18],divorcios2011mes$Noviembre[18],divorcios2011mes$Diciembre[18],
         divorcios2012mes$Enero[18],divorcios2012mes$Febrero[18],divorcios2012mes$Marzo[18],divorcios2012mes$Abril[18],
         divorcios2012mes$Mayo[18],divorcios2012mes$Junio[18],divorcios2012mes$Julio[18],divorcios2012mes$Agosto[18],
         divorcios2012mes$Septiembre[18],divorcios2012mes$Octubre[18],divorcios2012mes$Noviembre[18],divorcios2012mes$Diciembre[18],
         divorcios2013mes$Enero[18],divorcios2013mes$Febrero[18],divorcios2013mes$Marzo[18],divorcios2013mes$Abril[18],
         divorcios2013mes$Mayo[18],divorcios2013mes$Junio[18],divorcios2013mes$Julio[18],divorcios2013mes$Agosto[18],
         divorcios2013mes$Septiembre[18],divorcios2013mes$Octubre[18],divorcios2013mes$Noviembre[18],divorcios2013mes$Diciembre[18],
         divorcios2014mes$Enero[18],divorcios2014mes$Febrero[18],divorcios2014mes$Marzo[18],divorcios2014mes$Abril[18],
         divorcios2014mes$Mayo[18],divorcios2014mes$Junio[18],divorcios2014mes$Julio[18],divorcios2014mes$Agosto[18],
         divorcios2014mes$Septiembre[18],divorcios2014mes$Octubre[18],divorcios2014mes$Noviembre[18],divorcios2014mes$Diciembre[18])
X18 <- c(divorcios2010mes$Enero[19],divorcios2010mes$Febrero[19],divorcios2010mes$Marzo[19],divorcios2010mes$Abril[19],
         divorcios2010mes$Mayo[19],divorcios2010mes$Junio[19],divorcios2010mes$Julio[19],divorcios2010mes$Agosto[19],
         divorcios2010mes$Septiembre[19],divorcios2010mes$Octubre[19],divorcios2010mes$Noviembre[19],divorcios2010mes$Diciembre[19],
         divorcios2011mes$Enero[19],divorcios2011mes$Febrero[19],divorcios2011mes$Marzo[19],divorcios2011mes$Abril[19],
         divorcios2011mes$Mayo[19],divorcios2011mes$Junio[19],divorcios2011mes$Julio[19],divorcios2011mes$Agosto[19],
         divorcios2011mes$Septiembre[19],divorcios2011mes$Octubre[19],divorcios2011mes$Noviembre[19],divorcios2011mes$Diciembre[19],
         divorcios2012mes$Enero[19],divorcios2012mes$Febrero[19],divorcios2012mes$Marzo[19],divorcios2012mes$Abril[19],
         divorcios2012mes$Mayo[19],divorcios2012mes$Junio[19],divorcios2012mes$Julio[19],divorcios2012mes$Agosto[19],
         divorcios2012mes$Septiembre[19],divorcios2012mes$Octubre[19],divorcios2012mes$Noviembre[19],divorcios2012mes$Diciembre[19],
         divorcios2013mes$Enero[19],divorcios2013mes$Febrero[19],divorcios2013mes$Marzo[19],divorcios2013mes$Abril[19],
         divorcios2013mes$Mayo[19],divorcios2013mes$Junio[19],divorcios2013mes$Julio[19],divorcios2013mes$Agosto[19],
         divorcios2013mes$Septiembre[19],divorcios2013mes$Octubre[19],divorcios2013mes$Noviembre[19],divorcios2013mes$Diciembre[19],
         divorcios2014mes$Enero[19],divorcios2014mes$Febrero[19],divorcios2014mes$Marzo[19],divorcios2014mes$Abril[19],
         divorcios2014mes$Mayo[19],divorcios2014mes$Junio[19],divorcios2014mes$Julio[19],divorcios2014mes$Agosto[19],
         divorcios2014mes$Septiembre[19],divorcios2014mes$Octubre[19],divorcios2014mes$Noviembre[19],divorcios2014mes$Diciembre[19])
X19 <- c(divorcios2010mes$Enero[20],divorcios2010mes$Febrero[20],divorcios2010mes$Marzo[20],divorcios2010mes$Abril[20],
         divorcios2010mes$Mayo[20],divorcios2010mes$Junio[20],divorcios2010mes$Julio[20],divorcios2010mes$Agosto[20],
         divorcios2010mes$Septiembre[20],divorcios2010mes$Octubre[20],divorcios2010mes$Noviembre[20],divorcios2010mes$Diciembre[20],
         divorcios2011mes$Enero[20],divorcios2011mes$Febrero[20],divorcios2011mes$Marzo[20],divorcios2011mes$Abril[20],
         divorcios2011mes$Mayo[20],divorcios2011mes$Junio[20],divorcios2011mes$Julio[20],divorcios2011mes$Agosto[20],
         divorcios2011mes$Septiembre[20],divorcios2011mes$Octubre[20],divorcios2011mes$Noviembre[20],divorcios2011mes$Diciembre[20],
         divorcios2012mes$Enero[20],divorcios2012mes$Febrero[20],divorcios2012mes$Marzo[20],divorcios2012mes$Abril[20],
         divorcios2012mes$Mayo[20],divorcios2012mes$Junio[20],divorcios2012mes$Julio[20],divorcios2012mes$Agosto[20],
         divorcios2012mes$Septiembre[20],divorcios2012mes$Octubre[20],divorcios2012mes$Noviembre[20],divorcios2012mes$Diciembre[20],
         divorcios2013mes$Enero[20],divorcios2013mes$Febrero[20],divorcios2013mes$Marzo[20],divorcios2013mes$Abril[20],
         divorcios2013mes$Mayo[20],divorcios2013mes$Junio[20],divorcios2013mes$Julio[20],divorcios2013mes$Agosto[20],
         divorcios2013mes$Septiembre[20],divorcios2013mes$Octubre[20],divorcios2013mes$Noviembre[20],divorcios2013mes$Diciembre[20],
         divorcios2014mes$Enero[20],divorcios2014mes$Febrero[20],divorcios2014mes$Marzo[20],divorcios2014mes$Abril[20],
         divorcios2014mes$Mayo[20],divorcios2014mes$Junio[20],divorcios2014mes$Julio[20],divorcios2014mes$Agosto[20],
         divorcios2014mes$Septiembre[20],divorcios2014mes$Octubre[20],divorcios2014mes$Noviembre[20],divorcios2014mes$Diciembre[20])
X20 <- c(divorcios2010mes$Enero[21],divorcios2010mes$Febrero[21],divorcios2010mes$Marzo[21],divorcios2010mes$Abril[21],
         divorcios2010mes$Mayo[21],divorcios2010mes$Junio[21],divorcios2010mes$Julio[21],divorcios2010mes$Agosto[21],
         divorcios2010mes$Septiembre[21],divorcios2010mes$Octubre[21],divorcios2010mes$Noviembre[21],divorcios2010mes$Diciembre[21],
         divorcios2011mes$Enero[21],divorcios2011mes$Febrero[21],divorcios2011mes$Marzo[21],divorcios2011mes$Abril[21],
         divorcios2011mes$Mayo[21],divorcios2011mes$Junio[21],divorcios2011mes$Julio[21],divorcios2011mes$Agosto[21],
         divorcios2011mes$Septiembre[21],divorcios2011mes$Octubre[21],divorcios2011mes$Noviembre[21],divorcios2011mes$Diciembre[21],
         divorcios2012mes$Enero[21],divorcios2012mes$Febrero[21],divorcios2012mes$Marzo[21],divorcios2012mes$Abril[21],
         divorcios2012mes$Mayo[21],divorcios2012mes$Junio[21],divorcios2012mes$Julio[21],divorcios2012mes$Agosto[21],
         divorcios2012mes$Septiembre[21],divorcios2012mes$Octubre[21],divorcios2012mes$Noviembre[21],divorcios2012mes$Diciembre[21],
         divorcios2013mes$Enero[21],divorcios2013mes$Febrero[21],divorcios2013mes$Marzo[21],divorcios2013mes$Abril[21],
         divorcios2013mes$Mayo[21],divorcios2013mes$Junio[21],divorcios2013mes$Julio[21],divorcios2013mes$Agosto[21],
         divorcios2013mes$Septiembre[21],divorcios2013mes$Octubre[21],divorcios2013mes$Noviembre[21],divorcios2013mes$Diciembre[21],
         divorcios2014mes$Enero[21],divorcios2014mes$Febrero[21],divorcios2014mes$Marzo[21],divorcios2014mes$Abril[21],
         divorcios2014mes$Mayo[21],divorcios2014mes$Junio[21],divorcios2014mes$Julio[21],divorcios2014mes$Agosto[21],
         divorcios2014mes$Septiembre[21],divorcios2014mes$Octubre[21],divorcios2014mes$Noviembre[21],divorcios2014mes$Diciembre[21])
X21 <- c(divorcios2010mes$Enero[22],divorcios2010mes$Febrero[22],divorcios2010mes$Marzo[22],divorcios2010mes$Abril[22],
         divorcios2010mes$Mayo[22],divorcios2010mes$Junio[22],divorcios2010mes$Julio[22],divorcios2010mes$Agosto[22],
         divorcios2010mes$Septiembre[22],divorcios2010mes$Octubre[22],divorcios2010mes$Noviembre[22],divorcios2010mes$Diciembre[22],
         divorcios2011mes$Enero[22],divorcios2011mes$Febrero[22],divorcios2011mes$Marzo[22],divorcios2011mes$Abril[22],
         divorcios2011mes$Mayo[22],divorcios2011mes$Junio[22],divorcios2011mes$Julio[22],divorcios2011mes$Agosto[22],
         divorcios2011mes$Septiembre[22],divorcios2011mes$Octubre[22],divorcios2011mes$Noviembre[22],divorcios2011mes$Diciembre[22],
         divorcios2012mes$Enero[22],divorcios2012mes$Febrero[22],divorcios2012mes$Marzo[22],divorcios2012mes$Abril[22],
         divorcios2012mes$Mayo[22],divorcios2012mes$Junio[22],divorcios2012mes$Julio[22],divorcios2012mes$Agosto[22],
         divorcios2012mes$Septiembre[22],divorcios2012mes$Octubre[22],divorcios2012mes$Noviembre[22],divorcios2012mes$Diciembre[22],
         divorcios2013mes$Enero[22],divorcios2013mes$Febrero[22],divorcios2013mes$Marzo[22],divorcios2013mes$Abril[22],
         divorcios2013mes$Mayo[22],divorcios2013mes$Junio[22],divorcios2013mes$Julio[22],divorcios2013mes$Agosto[22],
         divorcios2013mes$Septiembre[22],divorcios2013mes$Octubre[22],divorcios2013mes$Noviembre[22],divorcios2013mes$Diciembre[22],
         divorcios2014mes$Enero[22],divorcios2014mes$Febrero[22],divorcios2014mes$Marzo[22],divorcios2014mes$Abril[22],
         divorcios2014mes$Mayo[22],divorcios2014mes$Junio[22],divorcios2014mes$Julio[22],divorcios2014mes$Agosto[22],
         divorcios2014mes$Septiembre[22],divorcios2014mes$Octubre[22],divorcios2014mes$Noviembre[22],divorcios2014mes$Diciembre[22])
X22 <- c(divorcios2010mes$Enero[23],divorcios2010mes$Febrero[23],divorcios2010mes$Marzo[23],divorcios2010mes$Abril[23],
         divorcios2010mes$Mayo[23],divorcios2010mes$Junio[23],divorcios2010mes$Julio[23],divorcios2010mes$Agosto[23],
         divorcios2010mes$Septiembre[23],divorcios2010mes$Octubre[23],divorcios2010mes$Noviembre[23],divorcios2010mes$Diciembre[23],
         divorcios2011mes$Enero[23],divorcios2011mes$Febrero[23],divorcios2011mes$Marzo[23],divorcios2011mes$Abril[23],
         divorcios2011mes$Mayo[23],divorcios2011mes$Junio[23],divorcios2011mes$Julio[23],divorcios2011mes$Agosto[23],
         divorcios2011mes$Septiembre[23],divorcios2011mes$Octubre[23],divorcios2011mes$Noviembre[23],divorcios2011mes$Diciembre[23],
         divorcios2012mes$Enero[23],divorcios2012mes$Febrero[23],divorcios2012mes$Marzo[23],divorcios2012mes$Abril[23],
         divorcios2012mes$Mayo[23],divorcios2012mes$Junio[23],divorcios2012mes$Julio[23],divorcios2012mes$Agosto[23],
         divorcios2012mes$Septiembre[23],divorcios2012mes$Octubre[23],divorcios2012mes$Noviembre[23],divorcios2012mes$Diciembre[23],
         divorcios2013mes$Enero[23],divorcios2013mes$Febrero[23],divorcios2013mes$Marzo[23],divorcios2013mes$Abril[23],
         divorcios2013mes$Mayo[23],divorcios2013mes$Junio[23],divorcios2013mes$Julio[23],divorcios2013mes$Agosto[23],
         divorcios2013mes$Septiembre[23],divorcios2013mes$Octubre[23],divorcios2013mes$Noviembre[23],divorcios2013mes$Diciembre[23],
         divorcios2014mes$Enero[23],divorcios2014mes$Febrero[23],divorcios2014mes$Marzo[23],divorcios2014mes$Abril[23],
         divorcios2014mes$Mayo[23],divorcios2014mes$Junio[23],divorcios2014mes$Julio[23],divorcios2014mes$Agosto[23],
         divorcios2014mes$Septiembre[23],divorcios2014mes$Octubre[23],divorcios2014mes$Noviembre[23],divorcios2014mes$Diciembre[23])
X23 <- c(divorcios2010mes$Enero[24],divorcios2010mes$Febrero[24],divorcios2010mes$Marzo[24],divorcios2010mes$Abril[24],
         divorcios2010mes$Mayo[24],divorcios2010mes$Junio[24],divorcios2010mes$Julio[24],divorcios2010mes$Agosto[24],
         divorcios2010mes$Septiembre[24],divorcios2010mes$Octubre[24],divorcios2010mes$Noviembre[24],divorcios2010mes$Diciembre[24],
         divorcios2011mes$Enero[24],divorcios2011mes$Febrero[24],divorcios2011mes$Marzo[24],divorcios2011mes$Abril[24],
         divorcios2011mes$Mayo[24],divorcios2011mes$Junio[24],divorcios2011mes$Julio[24],divorcios2011mes$Agosto[24],
         divorcios2011mes$Septiembre[24],divorcios2011mes$Octubre[24],divorcios2011mes$Noviembre[24],divorcios2011mes$Diciembre[24],
         divorcios2012mes$Enero[24],divorcios2012mes$Febrero[24],divorcios2012mes$Marzo[24],divorcios2012mes$Abril[24],
         divorcios2012mes$Mayo[24],divorcios2012mes$Junio[24],divorcios2012mes$Julio[24],divorcios2012mes$Agosto[24],
         divorcios2012mes$Septiembre[24],divorcios2012mes$Octubre[24],divorcios2012mes$Noviembre[24],divorcios2012mes$Diciembre[24],
         divorcios2013mes$Enero[24],divorcios2013mes$Febrero[24],divorcios2013mes$Marzo[24],divorcios2013mes$Abril[24],
         divorcios2013mes$Mayo[24],divorcios2013mes$Junio[24],divorcios2013mes$Julio[24],divorcios2013mes$Agosto[24],
         divorcios2013mes$Septiembre[24],divorcios2013mes$Octubre[24],divorcios2013mes$Noviembre[24],divorcios2013mes$Diciembre[24],
         divorcios2014mes$Enero[24],divorcios2014mes$Febrero[24],divorcios2014mes$Marzo[24],divorcios2014mes$Abril[24],
         divorcios2014mes$Mayo[24],divorcios2014mes$Junio[24],divorcios2014mes$Julio[24],divorcios2014mes$Agosto[24],
         divorcios2014mes$Septiembre[24],divorcios2014mes$Octubre[24],divorcios2014mes$Noviembre[24],divorcios2014mes$Diciembre[24])
X24 <- c(divorcios2010mes$Enero[25],divorcios2010mes$Febrero[25],divorcios2010mes$Marzo[25],divorcios2010mes$Abril[25],
         divorcios2010mes$Mayo[25],divorcios2010mes$Junio[25],divorcios2010mes$Julio[25],divorcios2010mes$Agosto[25],
         divorcios2010mes$Septiembre[25],divorcios2010mes$Octubre[25],divorcios2010mes$Noviembre[25],divorcios2010mes$Diciembre[25],
         divorcios2011mes$Enero[25],divorcios2011mes$Febrero[25],divorcios2011mes$Marzo[25],divorcios2011mes$Abril[25],
         divorcios2011mes$Mayo[25],divorcios2011mes$Junio[25],divorcios2011mes$Julio[25],divorcios2011mes$Agosto[25],
         divorcios2011mes$Septiembre[25],divorcios2011mes$Octubre[25],divorcios2011mes$Noviembre[25],divorcios2011mes$Diciembre[25],
         divorcios2012mes$Enero[25],divorcios2012mes$Febrero[25],divorcios2012mes$Marzo[25],divorcios2012mes$Abril[25],
         divorcios2012mes$Mayo[25],divorcios2012mes$Junio[25],divorcios2012mes$Julio[25],divorcios2012mes$Agosto[25],
         divorcios2012mes$Septiembre[25],divorcios2012mes$Octubre[25],divorcios2012mes$Noviembre[25],divorcios2012mes$Diciembre[25],
         divorcios2013mes$Enero[25],divorcios2013mes$Febrero[25],divorcios2013mes$Marzo[25],divorcios2013mes$Abril[25],
         divorcios2013mes$Mayo[25],divorcios2013mes$Junio[25],divorcios2013mes$Julio[25],divorcios2013mes$Agosto[25],
         divorcios2013mes$Septiembre[25],divorcios2013mes$Octubre[25],divorcios2013mes$Noviembre[25],divorcios2013mes$Diciembre[25],
         divorcios2014mes$Enero[25],divorcios2014mes$Febrero[25],divorcios2014mes$Marzo[25],divorcios2014mes$Abril[25],
         divorcios2014mes$Mayo[25],divorcios2014mes$Junio[25],divorcios2014mes$Julio[25],divorcios2014mes$Agosto[25],
         divorcios2014mes$Septiembre[25],divorcios2014mes$Octubre[25],divorcios2014mes$Noviembre[25],divorcios2014mes$Diciembre[25])
X25 <- c(divorcios2010mes$Enero[26],divorcios2010mes$Febrero[26],divorcios2010mes$Marzo[26],divorcios2010mes$Abril[26],
         divorcios2010mes$Mayo[26],divorcios2010mes$Junio[26],divorcios2010mes$Julio[26],divorcios2010mes$Agosto[26],
         divorcios2010mes$Septiembre[26],divorcios2010mes$Octubre[26],divorcios2010mes$Noviembre[26],divorcios2010mes$Diciembre[26],
         divorcios2011mes$Enero[26],divorcios2011mes$Febrero[26],divorcios2011mes$Marzo[26],divorcios2011mes$Abril[26],
         divorcios2011mes$Mayo[26],divorcios2011mes$Junio[26],divorcios2011mes$Julio[26],divorcios2011mes$Agosto[26],
         divorcios2011mes$Septiembre[26],divorcios2011mes$Octubre[26],divorcios2011mes$Noviembre[26],divorcios2011mes$Diciembre[26],
         divorcios2012mes$Enero[26],divorcios2012mes$Febrero[26],divorcios2012mes$Marzo[26],divorcios2012mes$Abril[26],
         divorcios2012mes$Mayo[26],divorcios2012mes$Junio[26],divorcios2012mes$Julio[26],divorcios2012mes$Agosto[26],
         divorcios2012mes$Septiembre[26],divorcios2012mes$Octubre[26],divorcios2012mes$Noviembre[26],divorcios2012mes$Diciembre[26],
         divorcios2013mes$Enero[26],divorcios2013mes$Febrero[26],divorcios2013mes$Marzo[26],divorcios2013mes$Abril[26],
         divorcios2013mes$Mayo[26],divorcios2013mes$Junio[26],divorcios2013mes$Julio[26],divorcios2013mes$Agosto[26],
         divorcios2013mes$Septiembre[26],divorcios2013mes$Octubre[26],divorcios2013mes$Noviembre[26],divorcios2013mes$Diciembre[26],
         divorcios2014mes$Enero[26],divorcios2014mes$Febrero[26],divorcios2014mes$Marzo[26],divorcios2014mes$Abril[26],
         divorcios2014mes$Mayo[26],divorcios2014mes$Junio[26],divorcios2014mes$Julio[26],divorcios2014mes$Agosto[26],
         divorcios2014mes$Septiembre[26],divorcios2014mes$Octubre[26],divorcios2014mes$Noviembre[26],divorcios2014mes$Diciembre[26])
X26 <- c(divorcios2010mes$Enero[27],divorcios2010mes$Febrero[27],divorcios2010mes$Marzo[27],divorcios2010mes$Abril[27],
         divorcios2010mes$Mayo[27],divorcios2010mes$Junio[27],divorcios2010mes$Julio[27],divorcios2010mes$Agosto[27],
         divorcios2010mes$Septiembre[27],divorcios2010mes$Octubre[27],divorcios2010mes$Noviembre[27],divorcios2010mes$Diciembre[27],
         divorcios2011mes$Enero[27],divorcios2011mes$Febrero[27],divorcios2011mes$Marzo[27],divorcios2011mes$Abril[27],
         divorcios2011mes$Mayo[27],divorcios2011mes$Junio[27],divorcios2011mes$Julio[27],divorcios2011mes$Agosto[27],
         divorcios2011mes$Septiembre[27],divorcios2011mes$Octubre[27],divorcios2011mes$Noviembre[27],divorcios2011mes$Diciembre[27],
         divorcios2012mes$Enero[27],divorcios2012mes$Febrero[27],divorcios2012mes$Marzo[27],divorcios2012mes$Abril[27],
         divorcios2012mes$Mayo[27],divorcios2012mes$Junio[27],divorcios2012mes$Julio[27],divorcios2012mes$Agosto[27],
         divorcios2012mes$Septiembre[27],divorcios2012mes$Octubre[27],divorcios2012mes$Noviembre[27],divorcios2012mes$Diciembre[27],
         divorcios2013mes$Enero[27],divorcios2013mes$Febrero[27],divorcios2013mes$Marzo[27],divorcios2013mes$Abril[27],
         divorcios2013mes$Mayo[27],divorcios2013mes$Junio[27],divorcios2013mes$Julio[27],divorcios2013mes$Agosto[27],
         divorcios2013mes$Septiembre[27],divorcios2013mes$Octubre[27],divorcios2013mes$Noviembre[27],divorcios2013mes$Diciembre[27],
         divorcios2014mes$Enero[27],divorcios2014mes$Febrero[27],divorcios2014mes$Marzo[27],divorcios2014mes$Abril[27],
         divorcios2014mes$Mayo[27],divorcios2014mes$Junio[27],divorcios2014mes$Julio[27],divorcios2014mes$Agosto[27],
         divorcios2014mes$Septiembre[27],divorcios2014mes$Octubre[27],divorcios2014mes$Noviembre[27],divorcios2014mes$Diciembre[27])
X27 <- c(divorcios2010mes$Enero[28],divorcios2010mes$Febrero[28],divorcios2010mes$Marzo[28],divorcios2010mes$Abril[28],
         divorcios2010mes$Mayo[28],divorcios2010mes$Junio[28],divorcios2010mes$Julio[28],divorcios2010mes$Agosto[28],
         divorcios2010mes$Septiembre[28],divorcios2010mes$Octubre[28],divorcios2010mes$Noviembre[28],divorcios2010mes$Diciembre[28],
         divorcios2011mes$Enero[28],divorcios2011mes$Febrero[28],divorcios2011mes$Marzo[28],divorcios2011mes$Abril[28],
         divorcios2011mes$Mayo[28],divorcios2011mes$Junio[28],divorcios2011mes$Julio[28],divorcios2011mes$Agosto[28],
         divorcios2011mes$Septiembre[28],divorcios2011mes$Octubre[28],divorcios2011mes$Noviembre[28],divorcios2011mes$Diciembre[28],
         divorcios2012mes$Enero[28],divorcios2012mes$Febrero[28],divorcios2012mes$Marzo[28],divorcios2012mes$Abril[28],
         divorcios2012mes$Mayo[28],divorcios2012mes$Junio[28],divorcios2012mes$Julio[28],divorcios2012mes$Agosto[28],
         divorcios2012mes$Septiembre[28],divorcios2012mes$Octubre[28],divorcios2012mes$Noviembre[28],divorcios2012mes$Diciembre[28],
         divorcios2013mes$Enero[28],divorcios2013mes$Febrero[28],divorcios2013mes$Marzo[28],divorcios2013mes$Abril[28],
         divorcios2013mes$Mayo[28],divorcios2013mes$Junio[28],divorcios2013mes$Julio[28],divorcios2013mes$Agosto[28],
         divorcios2013mes$Septiembre[28],divorcios2013mes$Octubre[28],divorcios2013mes$Noviembre[28],divorcios2013mes$Diciembre[28],
         divorcios2014mes$Enero[28],divorcios2014mes$Febrero[28],divorcios2014mes$Marzo[28],divorcios2014mes$Abril[28],
         divorcios2014mes$Mayo[28],divorcios2014mes$Junio[28],divorcios2014mes$Julio[28],divorcios2014mes$Agosto[28],
         divorcios2014mes$Septiembre[28],divorcios2014mes$Octubre[28],divorcios2014mes$Noviembre[28],divorcios2014mes$Diciembre[28])
X28 <- c(divorcios2010mes$Enero[29],divorcios2010mes$Febrero[29],divorcios2010mes$Marzo[29],divorcios2010mes$Abril[29],
         divorcios2010mes$Mayo[29],divorcios2010mes$Junio[29],divorcios2010mes$Julio[29],divorcios2010mes$Agosto[29],
         divorcios2010mes$Septiembre[29],divorcios2010mes$Octubre[29],divorcios2010mes$Noviembre[29],divorcios2010mes$Diciembre[29],
         divorcios2011mes$Enero[29],divorcios2011mes$Febrero[29],divorcios2011mes$Marzo[29],divorcios2011mes$Abril[29],
         divorcios2011mes$Mayo[29],divorcios2011mes$Junio[29],divorcios2011mes$Julio[29],divorcios2011mes$Agosto[29],
         divorcios2011mes$Septiembre[29],divorcios2011mes$Octubre[29],divorcios2011mes$Noviembre[29],divorcios2011mes$Diciembre[29],
         divorcios2012mes$Enero[29],divorcios2012mes$Febrero[29],divorcios2012mes$Marzo[29],divorcios2012mes$Abril[29],
         divorcios2012mes$Mayo[29],divorcios2012mes$Junio[29],divorcios2012mes$Julio[29],divorcios2012mes$Agosto[29],
         divorcios2012mes$Septiembre[29],divorcios2012mes$Octubre[29],divorcios2012mes$Noviembre[29],divorcios2012mes$Diciembre[29],
         divorcios2013mes$Enero[29],divorcios2013mes$Febrero[29],divorcios2013mes$Marzo[29],divorcios2013mes$Abril[29],
         divorcios2013mes$Mayo[29],divorcios2013mes$Junio[29],divorcios2013mes$Julio[29],divorcios2013mes$Agosto[29],
         divorcios2013mes$Septiembre[29],divorcios2013mes$Octubre[29],divorcios2013mes$Noviembre[29],divorcios2013mes$Diciembre[29],
         divorcios2014mes$Enero[29],divorcios2014mes$Febrero[29],divorcios2014mes$Marzo[29],divorcios2014mes$Abril[29],
         divorcios2014mes$Mayo[29],divorcios2014mes$Junio[29],divorcios2014mes$Julio[29],divorcios2014mes$Agosto[29],
         divorcios2014mes$Septiembre[29],divorcios2014mes$Octubre[29],divorcios2014mes$Noviembre[29],divorcios2014mes$Diciembre[29])
X29 <- c(divorcios2010mes$Enero[30],divorcios2010mes$Febrero[30],divorcios2010mes$Marzo[30],divorcios2010mes$Abril[30],
         divorcios2010mes$Mayo[30],divorcios2010mes$Junio[30],divorcios2010mes$Julio[30],divorcios2010mes$Agosto[30],
         divorcios2010mes$Septiembre[30],divorcios2010mes$Octubre[30],divorcios2010mes$Noviembre[30],divorcios2010mes$Diciembre[30],
         divorcios2011mes$Enero[30],divorcios2011mes$Febrero[30],divorcios2011mes$Marzo[30],divorcios2011mes$Abril[30],
         divorcios2011mes$Mayo[30],divorcios2011mes$Junio[30],divorcios2011mes$Julio[30],divorcios2011mes$Agosto[30],
         divorcios2011mes$Septiembre[30],divorcios2011mes$Octubre[30],divorcios2011mes$Noviembre[30],divorcios2011mes$Diciembre[30],
         divorcios2012mes$Enero[30],divorcios2012mes$Febrero[30],divorcios2012mes$Marzo[30],divorcios2012mes$Abril[30],
         divorcios2012mes$Mayo[30],divorcios2012mes$Junio[30],divorcios2012mes$Julio[30],divorcios2012mes$Agosto[30],
         divorcios2012mes$Septiembre[30],divorcios2012mes$Octubre[30],divorcios2012mes$Noviembre[30],divorcios2012mes$Diciembre[30],
         divorcios2013mes$Enero[30],divorcios2013mes$Febrero[30],divorcios2013mes$Marzo[30],divorcios2013mes$Abril[30],
         divorcios2013mes$Mayo[30],divorcios2013mes$Junio[30],divorcios2013mes$Julio[30],divorcios2013mes$Agosto[30],
         divorcios2013mes$Septiembre[30],divorcios2013mes$Octubre[30],divorcios2013mes$Noviembre[30],divorcios2013mes$Diciembre[30],
         divorcios2014mes$Enero[30],divorcios2014mes$Febrero[30],divorcios2014mes$Marzo[30],divorcios2014mes$Abril[30],
         divorcios2014mes$Mayo[30],divorcios2014mes$Junio[30],divorcios2014mes$Julio[30],divorcios2014mes$Agosto[30],
         divorcios2014mes$Septiembre[30],divorcios2014mes$Octubre[30],divorcios2014mes$Noviembre[30],divorcios2014mes$Diciembre[30])
X30 <- c(divorcios2010mes$Enero[31],divorcios2010mes$Febrero[31],divorcios2010mes$Marzo[31],divorcios2010mes$Abril[31],
         divorcios2010mes$Mayo[31],divorcios2010mes$Junio[31],divorcios2010mes$Julio[31],divorcios2010mes$Agosto[31],
         divorcios2010mes$Septiembre[31],divorcios2010mes$Octubre[31],divorcios2010mes$Noviembre[31],divorcios2010mes$Diciembre[31],
         divorcios2011mes$Enero[31],divorcios2011mes$Febrero[31],divorcios2011mes$Marzo[31],divorcios2011mes$Abril[31],
         divorcios2011mes$Mayo[31],divorcios2011mes$Junio[31],divorcios2011mes$Julio[31],divorcios2011mes$Agosto[31],
         divorcios2011mes$Septiembre[31],divorcios2011mes$Octubre[31],divorcios2011mes$Noviembre[31],divorcios2011mes$Diciembre[31],
         divorcios2012mes$Enero[31],divorcios2012mes$Febrero[31],divorcios2012mes$Marzo[31],divorcios2012mes$Abril[31],
         divorcios2012mes$Mayo[31],divorcios2012mes$Junio[31],divorcios2012mes$Julio[31],divorcios2012mes$Agosto[31],
         divorcios2012mes$Septiembre[31],divorcios2012mes$Octubre[31],divorcios2012mes$Noviembre[31],divorcios2012mes$Diciembre[31],
         divorcios2013mes$Enero[31],divorcios2013mes$Febrero[31],divorcios2013mes$Marzo[31],divorcios2013mes$Abril[31],
         divorcios2013mes$Mayo[31],divorcios2013mes$Junio[31],divorcios2013mes$Julio[31],divorcios2013mes$Agosto[31],
         divorcios2013mes$Septiembre[31],divorcios2013mes$Octubre[31],divorcios2013mes$Noviembre[31],divorcios2013mes$Diciembre[31],
         divorcios2014mes$Enero[31],divorcios2014mes$Febrero[31],divorcios2014mes$Marzo[31],divorcios2014mes$Abril[31],
         divorcios2014mes$Mayo[31],divorcios2014mes$Junio[31],divorcios2014mes$Julio[31],divorcios2014mes$Agosto[31],
         divorcios2014mes$Septiembre[31],divorcios2014mes$Octubre[31],divorcios2014mes$Noviembre[31],divorcios2014mes$Diciembre[31])
X31 <- c(divorcios2010mes$Enero[32],divorcios2010mes$Febrero[32],divorcios2010mes$Marzo[32],divorcios2010mes$Abril[32],
         divorcios2010mes$Mayo[32],divorcios2010mes$Junio[32],divorcios2010mes$Julio[32],divorcios2010mes$Agosto[32],
         divorcios2010mes$Septiembre[32],divorcios2010mes$Octubre[32],divorcios2010mes$Noviembre[32],divorcios2010mes$Diciembre[32],
         divorcios2011mes$Enero[32],divorcios2011mes$Febrero[32],divorcios2011mes$Marzo[32],divorcios2011mes$Abril[32],
         divorcios2011mes$Mayo[32],divorcios2011mes$Junio[32],divorcios2011mes$Julio[32],divorcios2011mes$Agosto[32],
         divorcios2011mes$Septiembre[32],divorcios2011mes$Octubre[32],divorcios2011mes$Noviembre[32],divorcios2011mes$Diciembre[32],
         divorcios2012mes$Enero[32],divorcios2012mes$Febrero[32],divorcios2012mes$Marzo[32],divorcios2012mes$Abril[32],
         divorcios2012mes$Mayo[32],divorcios2012mes$Junio[32],divorcios2012mes$Julio[32],divorcios2012mes$Agosto[32],
         divorcios2012mes$Septiembre[32],divorcios2012mes$Octubre[32],divorcios2012mes$Noviembre[32],divorcios2012mes$Diciembre[32],
         divorcios2013mes$Enero[32],divorcios2013mes$Febrero[32],divorcios2013mes$Marzo[32],divorcios2013mes$Abril[32],
         divorcios2013mes$Mayo[32],divorcios2013mes$Junio[32],divorcios2013mes$Julio[32],divorcios2013mes$Agosto[32],
         divorcios2013mes$Septiembre[32],divorcios2013mes$Octubre[32],divorcios2013mes$Noviembre[32],divorcios2013mes$Diciembre[32],
         divorcios2014mes$Enero[32],divorcios2014mes$Febrero[32],divorcios2014mes$Marzo[32],divorcios2014mes$Abril[32],
         divorcios2014mes$Mayo[32],divorcios2014mes$Junio[32],divorcios2014mes$Julio[32],divorcios2014mes$Agosto[32],
         divorcios2014mes$Septiembre[32],divorcios2014mes$Octubre[32],divorcios2014mes$Noviembre[32],divorcios2014mes$Diciembre[32])

divorcios_anio_mes_dia <- data.frame("Mes / Año" = meses,
                                     "Total" = divorciosTotalesMes,
                                     "X01" = X01,"X02" = X02,"X03" = X03,"X04" = X04,"X05" = X05,
                                     "X06" = X06,"X07" = X07,"X08" = X08,"X09" = X09,"X10" = X10,
                                     "X11" = X11,"X12" = X12,"X13" = X13,"X14" = X14,"X15" = X15,
                                     "X16" = X16,"X17" = X17,"X18" = X18,"X19" = X19,"X20" = X20,
                                     "X21" = X21,"X22" = X22,"X23" = X23,"X24" = X24,"X25" = X25,
                                     "X26" = X26,"X27" = X27,"X28" = X28,"X29" = X29,"X30" = X30,
                                     "X31" = X31)

save(divorcios_anio_mes_dia,
     file= "dataframe.RData")






