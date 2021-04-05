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

