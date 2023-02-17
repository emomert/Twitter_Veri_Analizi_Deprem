#Gereken Kütüphanelerin İndirilmesi [Çoğu gereksiz]

install.packages("rtweet")
install.packages("tidyverse")
install.packages("rlang")
install.packages("xlxs")
library(ggplot2)
library(rlang)
library(tidyverse)
library(xlxs)

#Veri Tabanları

First_Day #Birinci gün için veri tabanı
Second_Day #İkinci gün için veri tabanı
Third_Day #Üçüncü gün için veri tabanı
Fourth_Day #Dördüncü gün için veri tabanı
Fifth_Day #Beşinci gün için veri tabanı

#Verilerdeki datetime kısmı UTC bazlı olduğu için 3 saat geriden geliyor
#Yani 2023-02-06 00:00:00+00:00 olarak verilen zaman bizim için 2023-02-06 03:00:00+00:00
#Hesaplamalar buna göre yapılacaktır

#TWEET SAYILARI İÇİN VERİ TABANI OLUŞTURMA------------------------------

#Birinci gün için zaman aralıkları

#Zaman aralığı olarak 15 dk'yı belirledim
#Her 15 dk'da bir içinde deprem geçen kelimelerin toplamı her bir integere kayıtlı

#Muhtemelen bu aşağıdaki işlem için daha kısa bir yol vardır fakat ben bulamadım bu yüzden tek tek elle
#Zaman aralığındaki veri sayısını hesapladım

a_1 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 00:00:00+00:00" & First_Day$Datetime <= "2023-02-06 00:15:00+00:00"])
a_2 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 00:15:00+00:00" & First_Day$Datetime <= "2023-02-06 00:30:00+00:00"])
a_3 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 00:30:00+00:00" & First_Day$Datetime <= "2023-02-06 00:45:00+00:00"])
a_4 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 00:45:00+00:00" & First_Day$Datetime <= "2023-02-06 01:00:00+00:00"])
a_5 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 01:00:00+00:00" & First_Day$Datetime <= "2023-02-06 01:15:00+00:00"])
a_6 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 01:15:00+00:00" & First_Day$Datetime <= "2023-02-06 01:30:00+00:00"])
a_7 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 01:30:00+00:00" & First_Day$Datetime <= "2023-02-06 01:45:00+00:00"])
a_8 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 01:45:00+00:00" & First_Day$Datetime <= "2023-02-06 02:00:00+00:00"])
a_9 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 02:00:00+00:00" & First_Day$Datetime <= "2023-02-06 02:15:00+00:00"])
a_10 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 02:15:00+00:00" & First_Day$Datetime <= "2023-02-06 02:30:00+00:00"])
a_11 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 02:30:00+00:00" & First_Day$Datetime <= "2023-02-06 02:45:00+00:00"])
a_12 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 02:45:00+00:00" & First_Day$Datetime <= "2023-02-06 03:00:00+00:00"])
a_13 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 03:00:00+00:00" & First_Day$Datetime <= "2023-02-06 03:15:00+00:00"])
a_14 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 03:15:00+00:00" & First_Day$Datetime <= "2023-02-06 03:30:00+00:00"])
a_15 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 03:30:00+00:00" & First_Day$Datetime <= "2023-02-06 03:45:00+00:00"])
a_16 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 03:45:00+00:00" & First_Day$Datetime <= "2023-02-06 04:00:00+00:00"])
a_17 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 04:00:00+00:00" & First_Day$Datetime <= "2023-02-06 04:15:00+00:00"])
a_18 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 04:15:00+00:00" & First_Day$Datetime <= "2023-02-06 04:30:00+00:00"])
a_19 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 04:30:00+00:00" & First_Day$Datetime <= "2023-02-06 04:45:00+00:00"])
a_20 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 04:45:00+00:00" & First_Day$Datetime <= "2023-02-06 05:00:00+00:00"])
a_21 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 05:00:00+00:00" & First_Day$Datetime <= "2023-02-06 05:15:00+00:00"])
a_22 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 05:15:00+00:00" & First_Day$Datetime <= "2023-02-06 05:30:00+00:00"])
a_23 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 05:30:00+00:00" & First_Day$Datetime <= "2023-02-06 05:45:00+00:00"])
a_24 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 05:45:00+00:00" & First_Day$Datetime <= "2023-02-06 06:00:00+00:00"])
a_25 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 06:00:00+00:00" & First_Day$Datetime <= "2023-02-06 06:15:00+00:00"])
a_26 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 06:15:00+00:00" & First_Day$Datetime <= "2023-02-06 06:30:00+00:00"])
a_27 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 06:30:00+00:00" & First_Day$Datetime <= "2023-02-06 06:45:00+00:00"])
a_28 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 06:45:00+00:00" & First_Day$Datetime <= "2023-02-06 07:00:00+00:00"])
a_29 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 07:00:00+00:00" & First_Day$Datetime <= "2023-02-06 07:15:00+00:00"])
a_30 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 07:15:00+00:00" & First_Day$Datetime <= "2023-02-06 07:30:00+00:00"])
a_31 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 07:30:00+00:00" & First_Day$Datetime <= "2023-02-06 07:45:00+00:00"])
a_32 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 07:45:00+00:00" & First_Day$Datetime <= "2023-02-06 08:00:00+00:00"])
a_33 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 08:00:00+00:00" & First_Day$Datetime <= "2023-02-06 08:15:00+00:00"])
a_34 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 08:15:00+00:00" & First_Day$Datetime <= "2023-02-06 08:30:00+00:00"])
a_35 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 08:30:00+00:00" & First_Day$Datetime <= "2023-02-06 08:45:00+00:00"])
a_36 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 08:45:00+00:00" & First_Day$Datetime <= "2023-02-06 09:00:00+00:00"])
a_37 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 09:00:00+00:00" & First_Day$Datetime <= "2023-02-06 09:15:00+00:00"])
a_38 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 09:15:00+00:00" & First_Day$Datetime <= "2023-02-06 09:30:00+00:00"])
a_39 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 09:30:00+00:00" & First_Day$Datetime <= "2023-02-06 09:45:00+00:00"])
a_40 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 09:45:00+00:00" & First_Day$Datetime <= "2023-02-06 10:00:00+00:00"])
a_41 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 10:00:00+00:00" & First_Day$Datetime <= "2023-02-06 10:15:00+00:00"])
a_42 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 10:15:00+00:00" & First_Day$Datetime <= "2023-02-06 10:30:00+00:00"])
a_43 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 10:30:00+00:00" & First_Day$Datetime <= "2023-02-06 10:45:00+00:00"])
a_44 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 10:45:00+00:00" & First_Day$Datetime <= "2023-02-06 11:00:00+00:00"])
a_45 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 11:00:00+00:00" & First_Day$Datetime <= "2023-02-06 11:15:00+00:00"])
a_46 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 11:15:00+00:00" & First_Day$Datetime <= "2023-02-06 11:30:00+00:00"])
a_47 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 11:30:00+00:00" & First_Day$Datetime <= "2023-02-06 11:45:00+00:00"])
a_48 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 11:45:00+00:00" & First_Day$Datetime <= "2023-02-06 12:00:00+00:00"])
a_49 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 12:00:00+00:00" & First_Day$Datetime <= "2023-02-06 12:15:00+00:00"])
a_51 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 12:15:00+00:00" & First_Day$Datetime <= "2023-02-06 12:30:00+00:00"])
a_52 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 12:30:00+00:00" & First_Day$Datetime <= "2023-02-06 12:45:00+00:00"])
a_53 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 12:45:00+00:00" & First_Day$Datetime <= "2023-02-06 13:00:00+00:00"])
a_54 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 13:00:00+00:00" & First_Day$Datetime <= "2023-02-06 13:15:00+00:00"])
a_55 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 13:15:00+00:00" & First_Day$Datetime <= "2023-02-06 13:30:00+00:00"])
a_56 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 13:30:00+00:00" & First_Day$Datetime <= "2023-02-06 13:45:00+00:00"])
a_57 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 13:45:00+00:00" & First_Day$Datetime <= "2023-02-06 14:00:00+00:00"])
a_58 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 14:00:00+00:00" & First_Day$Datetime <= "2023-02-06 14:15:00+00:00"])
a_59 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 14:15:00+00:00" & First_Day$Datetime <= "2023-02-06 14:30:00+00:00"])
a_60 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 14:30:00+00:00" & First_Day$Datetime <= "2023-02-06 14:45:00+00:00"])
a_61 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 14:45:00+00:00" & First_Day$Datetime <= "2023-02-06 15:00:00+00:00"])
a_62 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 15:00:00+00:00" & First_Day$Datetime <= "2023-02-06 15:15:00+00:00"])
a_63 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 15:15:00+00:00" & First_Day$Datetime <= "2023-02-06 15:30:00+00:00"])
a_64 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 15:30:00+00:00" & First_Day$Datetime <= "2023-02-06 15:45:00+00:00"])
a_65 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 15:45:00+00:00" & First_Day$Datetime <= "2023-02-06 16:00:00+00:00"])
a_66 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 16:00:00+00:00" & First_Day$Datetime <= "2023-02-06 16:15:00+00:00"])
a_67 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 16:15:00+00:00" & First_Day$Datetime <= "2023-02-06 16:30:00+00:00"])
a_68 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 16:30:00+00:00" & First_Day$Datetime <= "2023-02-06 16:45:00+00:00"])
a_69 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 16:45:00+00:00" & First_Day$Datetime <= "2023-02-06 17:00:00+00:00"])
a_70 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 17:00:00+00:00" & First_Day$Datetime <= "2023-02-06 17:15:00+00:00"])
a_71 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 17:15:00+00:00" & First_Day$Datetime <= "2023-02-06 17:30:00+00:00"])
a_72 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 17:30:00+00:00" & First_Day$Datetime <= "2023-02-06 17:45:00+00:00"])
a_73 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 17:45:00+00:00" & First_Day$Datetime <= "2023-02-06 18:00:00+00:00"])
a_74 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 18:00:00+00:00" & First_Day$Datetime <= "2023-02-06 18:15:00+00:00"])
a_75 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 18:15:00+00:00" & First_Day$Datetime <= "2023-02-06 18:30:00+00:00"])
a_76 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 18:30:00+00:00" & First_Day$Datetime <= "2023-02-06 18:45:00+00:00"])
a_77 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 18:45:00+00:00" & First_Day$Datetime <= "2023-02-06 19:00:00+00:00"])
a_78 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 19:00:00+00:00" & First_Day$Datetime <= "2023-02-06 19:15:00+00:00"])
a_79 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 19:15:00+00:00" & First_Day$Datetime <= "2023-02-06 19:30:00+00:00"])
a_80 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 19:30:00+00:00" & First_Day$Datetime <= "2023-02-06 19:45:00+00:00"])
a_81 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 19:45:00+00:00" & First_Day$Datetime <= "2023-02-06 20:00:00+00:00"])
a_82 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 20:00:00+00:00" & First_Day$Datetime <= "2023-02-06 20:15:00+00:00"])
a_83 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 20:15:00+00:00" & First_Day$Datetime <= "2023-02-06 20:30:00+00:00"])
a_84 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 20:30:00+00:00" & First_Day$Datetime <= "2023-02-06 20:45:00+00:00"])
a_85 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 20:45:00+00:00" & First_Day$Datetime <= "2023-02-06 21:00:00+00:00"])
a_86 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 21:00:00+00:00" & First_Day$Datetime <= "2023-02-06 21:15:00+00:00"])
a_87 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 21:15:00+00:00" & First_Day$Datetime <= "2023-02-06 21:30:00+00:00"])
a_88 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 21:30:00+00:00" & First_Day$Datetime <= "2023-02-06 21:45:00+00:00"])
a_89 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 21:45:00+00:00" & First_Day$Datetime <= "2023-02-06 22:00:00+00:00"])
a_90 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 22:00:00+00:00" & First_Day$Datetime <= "2023-02-06 22:15:00+00:00"])
a_91 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 22:15:00+00:00" & First_Day$Datetime <= "2023-02-06 22:30:00+00:00"])
a_92 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 22:30:00+00:00" & First_Day$Datetime <= "2023-02-06 22:45:00+00:00"])
a_93 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 22:45:00+00:00" & First_Day$Datetime <= "2023-02-06 23:00:00+00:00"])
a_94 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 23:00:00+00:00" & First_Day$Datetime <= "2023-02-06 23:15:00+00:00"])
a_95 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 23:15:00+00:00" & First_Day$Datetime <= "2023-02-06 23:30:00+00:00"])
a_96 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 23:30:00+00:00" & First_Day$Datetime <= "2023-02-06 23:45:00+00:00"])
a_97 <- length(First_Day$Datetime[First_Day$Datetime >= "2023-02-06 23:45:00+00:00" & First_Day$Datetime <= "2023-02-07 00:00:00+00:00"])

#96 tane olması lazımdı 50 den 51'e atlamışım, hesaplamada sıkıntı yok

#Burada tüm integerler birinci gün için tek bir integerda toplanıyor

first_day_count <- c(a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, a_10, a_11, a_12,
                     a_13, a_14, a_15, a_16, a_17, a_18, a_19, a_20, a_21, a_22, a_23,
                     a_24, a_25, a_26, a_27, a_28, a_29, a_30, a_31, a_32, a_33, a_34,
                     a_35, a_36, a_37, a_38, a_39, a_40, a_41, a_42, a_43, a_44, a_45,
                     a_46, a_47, a_48, a_49, a_51, a_52, a_53, a_54, a_55, a_56,
                     a_57, a_58, a_59, a_60, a_61, a_62, a_63, a_64, a_65, a_66, a_67,
                     a_68, a_69, a_70, a_71, a_72, a_73, a_74, a_75, a_76, a_77, a_78,
                     a_79, a_80, a_81, a_82, a_83, a_84, a_85, a_86, a_87, a_88, a_89,
                     a_90, a_91, a_92, a_93, a_94, a_95, a_96, a_97)

sum(first_day_count) #Toplamı 910850
length(First_Day$Datetime) #Toplamı 909527

#Aradaki fark aynı saniyede atılan tweetlerden kaynaklanıyor, çok az olduğu için önemsemiyorum

#İkinci gün için zaman aralıkları

b_1 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 00:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 00:15:00+00:00"])
b_2 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 00:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 00:30:00+00:00"])
b_3 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 00:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 00:45:00+00:00"])
b_4 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 00:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 01:00:00+00:00"])
b_5 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 01:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 01:15:00+00:00"])
b_6 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 01:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 01:30:00+00:00"])
b_7 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 01:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 01:45:00+00:00"])
b_8 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 01:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 02:00:00+00:00"])
b_9 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 02:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 02:15:00+00:00"])
b_10 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 02:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 02:30:00+00:00"])
b_11 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 02:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 02:45:00+00:00"])
b_12 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 02:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 03:00:00+00:00"])
b_13 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 03:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 03:15:00+00:00"])
b_14 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 03:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 03:30:00+00:00"])
b_15 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 03:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 03:45:00+00:00"])
b_16 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 03:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 04:00:00+00:00"])
b_17 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 04:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 04:15:00+00:00"])
b_18 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 04:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 04:30:00+00:00"])
b_19 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 04:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 04:45:00+00:00"])
b_20 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 04:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 05:00:00+00:00"])
b_21 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 05:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 05:15:00+00:00"])
b_22 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 05:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 05:30:00+00:00"])
b_23 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 05:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 05:45:00+00:00"])
b_24 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 05:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 06:00:00+00:00"])
b_25 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 06:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 06:15:00+00:00"])
b_26 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 06:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 06:30:00+00:00"])
b_27 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 06:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 06:45:00+00:00"])
b_28 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 06:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 07:00:00+00:00"])
b_29 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 07:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 07:15:00+00:00"])
b_30 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 07:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 07:30:00+00:00"])
b_31 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 07:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 07:45:00+00:00"])
b_32 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 07:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 08:00:00+00:00"])
b_33 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 08:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 08:15:00+00:00"])
b_34 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 08:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 08:30:00+00:00"])
b_35 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 08:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 08:45:00+00:00"])
b_36 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 08:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 09:00:00+00:00"])
b_37 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 09:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 09:15:00+00:00"])
b_38 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 09:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 09:30:00+00:00"])
b_39 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 09:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 09:45:00+00:00"])
b_40 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 09:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 10:00:00+00:00"])
b_41 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 10:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 10:15:00+00:00"])
b_42 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 10:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 10:30:00+00:00"])
b_43 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 10:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 10:45:00+00:00"])
b_44 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 10:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 11:00:00+00:00"])
b_45 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 11:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 11:15:00+00:00"])
b_46 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 11:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 11:30:00+00:00"])
b_47 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 11:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 11:45:00+00:00"])
b_48 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 11:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 12:00:00+00:00"])
b_49 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 12:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 12:15:00+00:00"])
b_51 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 12:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 12:30:00+00:00"])
b_52 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 12:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 12:45:00+00:00"])
b_53 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 12:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 13:00:00+00:00"])
b_54 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 13:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 13:15:00+00:00"])
b_55 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 13:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 13:30:00+00:00"])
b_56 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 13:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 13:45:00+00:00"])
b_57 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 13:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 14:00:00+00:00"])
b_58 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 14:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 14:15:00+00:00"])
b_59 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 14:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 14:30:00+00:00"])
b_60 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 14:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 14:45:00+00:00"])
b_61 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 14:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 15:00:00+00:00"])
b_62 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 15:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 15:15:00+00:00"])
b_63 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 15:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 15:30:00+00:00"])
b_64 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 15:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 15:45:00+00:00"])
b_65 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 15:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 16:00:00+00:00"])
b_66 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 16:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 16:15:00+00:00"])
b_67 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 16:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 16:30:00+00:00"])
b_68 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 16:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 16:45:00+00:00"])
b_69 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 16:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 17:00:00+00:00"])
b_70 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 17:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 17:15:00+00:00"])
b_71 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 17:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 17:30:00+00:00"])
b_72 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 17:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 17:45:00+00:00"])
b_73 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 17:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 18:00:00+00:00"])
b_74 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 18:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 18:15:00+00:00"])
b_75 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 18:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 18:30:00+00:00"])
b_76 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 18:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 18:45:00+00:00"])
b_77 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 18:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 19:00:00+00:00"])
b_78 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 19:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 19:15:00+00:00"])
b_79 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 19:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 19:30:00+00:00"])
b_80 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 19:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 19:45:00+00:00"])
b_81 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 19:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 20:00:00+00:00"])
b_82 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 20:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 20:15:00+00:00"])
b_83 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 20:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 20:30:00+00:00"])
b_84 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 20:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 20:45:00+00:00"])
b_85 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 20:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 21:00:00+00:00"])
b_86 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 21:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 21:15:00+00:00"])
b_87 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 21:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 21:30:00+00:00"])
b_88 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 21:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 21:45:00+00:00"])
b_89 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 21:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 22:00:00+00:00"])
b_90 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 22:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 22:15:00+00:00"])
b_91 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 22:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 22:30:00+00:00"])
b_92 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 22:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 22:45:00+00:00"])
b_93 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 22:45:00+00:00" & Second_Day$Datetime <= "2023-02-07 23:00:00+00:00"])
b_94 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 23:00:00+00:00" & Second_Day$Datetime <= "2023-02-07 23:15:00+00:00"])
b_95 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 23:15:00+00:00" & Second_Day$Datetime <= "2023-02-07 23:30:00+00:00"])
b_96 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 23:30:00+00:00" & Second_Day$Datetime <= "2023-02-07 23:45:00+00:00"])
b_97 <- length(Second_Day$Datetime[Second_Day$Datetime >= "2023-02-07 23:45:00+00:00" & Second_Day$Datetime <= "2023-02-08 00:00:00+00:00"])

#Burada tüm integerler ikinci gün için tek bir integerda toplanıyor

second_day_count <- c(b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, b_10, b_11, b_12,
                     b_13, b_14, b_15, b_16, b_17, b_18, b_19, b_20, b_21, b_22, b_23,
                     b_24, b_25, b_26, b_27, b_28, b_29, b_30, b_31, b_32, b_33, b_34,
                     b_35, b_36, b_37, b_38, b_39, b_40, b_41, b_42, b_43, b_44, b_45,
                     b_46, b_47, b_48, b_49, b_51, b_52, b_53, b_54, b_55, b_56,
                     b_57, b_58, b_59, b_60, b_61, b_62, b_63, b_64, b_65, b_66, b_67,
                     b_68, b_69, b_70, b_71, b_72, b_73, b_74, b_75, b_76, b_77, b_78,
                     b_79, b_80, b_81, b_82, b_83, b_84, b_85, b_86, b_87, b_88, b_89,
                     b_90, b_91, b_92, b_93, b_94, b_95, b_96, b_97)

sum(second_day_count) #Toplamı 588746
length(Second_Day$Datetime) #Toplamı 588746

#Üçüncü gün için zaman aralıkları

c_1 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 00:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 00:15:00+00:00"])
c_2 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 00:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 00:30:00+00:00"])
c_3 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 00:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 00:45:00+00:00"])
c_4 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 00:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 01:00:00+00:00"])
c_5 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 01:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 01:15:00+00:00"])
c_6 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 01:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 01:30:00+00:00"])
c_7 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 01:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 01:45:00+00:00"])
c_8 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 01:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 02:00:00+00:00"])
c_9 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 02:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 02:15:00+00:00"])
c_10 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 02:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 02:30:00+00:00"])
c_11 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 02:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 02:45:00+00:00"])
c_12 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 02:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 03:00:00+00:00"])
c_13 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 03:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 03:15:00+00:00"])
c_14 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 03:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 03:30:00+00:00"])
c_15 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 03:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 03:45:00+00:00"])
c_16 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 03:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 04:00:00+00:00"])
c_17 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 04:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 04:15:00+00:00"])
c_18 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 04:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 04:30:00+00:00"])
c_19 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 04:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 04:45:00+00:00"])
c_20 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 04:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 05:00:00+00:00"])
c_21 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 05:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 05:15:00+00:00"])
c_22 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 05:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 05:30:00+00:00"])
c_23 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 05:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 05:45:00+00:00"])
c_24 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 05:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 06:00:00+00:00"])
c_25 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 06:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 06:15:00+00:00"])
c_26 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 06:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 06:30:00+00:00"])
c_27 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 06:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 06:45:00+00:00"])
c_28 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 06:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 07:00:00+00:00"])
c_29 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 07:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 07:15:00+00:00"])
c_30 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 07:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 07:30:00+00:00"])
c_31 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 07:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 07:45:00+00:00"])
c_32 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 07:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 08:00:00+00:00"])
c_33 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 08:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 08:15:00+00:00"])
c_34 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 08:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 08:30:00+00:00"])
c_35 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 08:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 08:45:00+00:00"])
c_36 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 08:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 09:00:00+00:00"])
c_37 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 09:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 09:15:00+00:00"])
c_38 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 09:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 09:30:00+00:00"])
c_39 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 09:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 09:45:00+00:00"])
c_40 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 09:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 10:00:00+00:00"])
c_41 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 10:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 10:15:00+00:00"])
c_42 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 10:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 10:30:00+00:00"])
c_43 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 10:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 10:45:00+00:00"])
c_44 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 10:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 11:00:00+00:00"])
c_45 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 11:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 11:15:00+00:00"])
c_46 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 11:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 11:30:00+00:00"])
c_47 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 11:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 11:45:00+00:00"])
c_48 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 11:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 12:00:00+00:00"])
c_49 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 12:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 12:15:00+00:00"])
c_51 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 12:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 12:30:00+00:00"])
c_52 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 12:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 12:45:00+00:00"])
c_53 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 12:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 13:00:00+00:00"])
c_54 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 13:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 13:15:00+00:00"])
c_55 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 13:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 13:30:00+00:00"])
c_56 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 13:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 13:45:00+00:00"])
c_57 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 13:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 14:00:00+00:00"])
c_58 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 14:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 14:15:00+00:00"])
c_59 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 14:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 14:30:00+00:00"])
c_60 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 14:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 14:45:00+00:00"])
c_61 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 14:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 15:00:00+00:00"])
c_62 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 15:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 15:15:00+00:00"])
c_63 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 15:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 15:30:00+00:00"])
c_64 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 15:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 15:45:00+00:00"])
c_65 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 15:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 16:00:00+00:00"])
c_66 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 16:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 16:15:00+00:00"])
c_67 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 16:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 16:30:00+00:00"])
c_68 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 16:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 16:45:00+00:00"])
c_69 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 16:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 17:00:00+00:00"])
c_70 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 17:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 17:15:00+00:00"])
c_71 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 17:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 17:30:00+00:00"])
c_72 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 17:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 17:45:00+00:00"])
c_73 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 17:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 18:00:00+00:00"])
c_74 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 18:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 18:15:00+00:00"])
c_75 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 18:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 18:30:00+00:00"])
c_76 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 18:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 18:45:00+00:00"])
c_77 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 18:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 19:00:00+00:00"])
c_78 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 19:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 19:15:00+00:00"])
c_79 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 19:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 19:30:00+00:00"])
c_80 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 19:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 19:45:00+00:00"])
c_81 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 19:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 20:00:00+00:00"])
c_82 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 20:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 20:15:00+00:00"])
c_83 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 20:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 20:30:00+00:00"])
c_84 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 20:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 20:45:00+00:00"])
c_85 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 20:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 21:00:00+00:00"])
c_86 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 21:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 21:15:00+00:00"])
c_87 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 21:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 21:30:00+00:00"])
c_88 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 21:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 21:45:00+00:00"])
c_89 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 21:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 22:00:00+00:00"])
c_90 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 22:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 22:15:00+00:00"])
c_91 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 22:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 22:30:00+00:00"])
c_92 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 22:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 22:45:00+00:00"])
c_93 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 22:45:00+00:00" & Third_Day$Datetime <= "2023-02-08 23:00:00+00:00"])
c_94 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 23:00:00+00:00" & Third_Day$Datetime <= "2023-02-08 23:15:00+00:00"])
c_95 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 23:15:00+00:00" & Third_Day$Datetime <= "2023-02-08 23:30:00+00:00"])
c_96 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 23:30:00+00:00" & Third_Day$Datetime <= "2023-02-08 23:45:00+00:00"])
c_97 <- length(Third_Day$Datetime[Third_Day$Datetime >= "2023-02-08 23:45:00+00:00" & Third_Day$Datetime <= "2023-02-09 00:00:00+00:00"])

#Burada tüm integerler üçüncü gün için tek bir integerda toplanıyor

third_day_count <- c(c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_10, c_11, c_12,
                      c_13, c_14, c_15, c_16, c_17, c_18, c_19, c_20, c_21, c_22, c_23,
                      c_24, c_25, c_26, c_27, c_28, c_29, c_30, c_31, c_32, c_33, c_34,
                      c_35, c_36, c_37, c_38, c_39, c_40, c_41, c_42, c_43, c_44, c_45,
                      c_46, c_47, c_48, c_49, c_51, c_52, c_53, c_54, c_55, c_56,
                      c_57, c_58, c_59, c_60, c_61, c_62, c_63, c_64, c_65, c_66, c_67,
                      c_68, c_69, c_70, c_71, c_72, c_73, c_74, c_75, c_76, c_77, c_78,
                      c_79, c_80, c_81, c_82, c_83, c_84, c_85, c_86, c_87, c_88, c_89,
                      c_90, c_91, c_92, c_93, c_94, c_95, c_96, c_97)


sum(third_day_count) #Toplamı 357945
length(Third_Day$Datetime) #Toplamı 357297


#Dördüncü gün için zaman aralıkları

d_1 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 00:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 00:15:00+00:00"])
d_2 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 00:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 00:30:00+00:00"])
d_3 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 00:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 00:45:00+00:00"])
d_4 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 00:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 01:00:00+00:00"])
d_5 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 01:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 01:15:00+00:00"])
d_6 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 01:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 01:30:00+00:00"])
d_7 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 01:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 01:45:00+00:00"])
d_8 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 01:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 02:00:00+00:00"])
d_9 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 02:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 02:15:00+00:00"])
d_10 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 02:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 02:30:00+00:00"])
d_11 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 02:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 02:45:00+00:00"])
d_12 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 02:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 03:00:00+00:00"])
d_13 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 03:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 03:15:00+00:00"])
d_14 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 03:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 03:30:00+00:00"])
d_15 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 03:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 03:45:00+00:00"])
d_16 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 03:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 04:00:00+00:00"])
d_17 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 04:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 04:15:00+00:00"])
d_18 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 04:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 04:30:00+00:00"])
d_19 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 04:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 04:45:00+00:00"])
d_20 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 04:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 05:00:00+00:00"])
d_21 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 05:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 05:15:00+00:00"])
d_22 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 05:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 05:30:00+00:00"])
d_23 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 05:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 05:45:00+00:00"])
d_24 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 05:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 06:00:00+00:00"])
d_25 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 06:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 06:15:00+00:00"])
d_26 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 06:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 06:30:00+00:00"])
d_27 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 06:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 06:45:00+00:00"])
d_28 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 06:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 07:00:00+00:00"])
d_29 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 07:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 07:15:00+00:00"])
d_30 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 07:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 07:30:00+00:00"])
d_31 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 07:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 07:45:00+00:00"])
d_32 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 07:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 08:00:00+00:00"])
d_33 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 08:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 08:15:00+00:00"])
d_34 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 08:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 08:30:00+00:00"])
d_35 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 08:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 08:45:00+00:00"])
d_36 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 08:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 09:00:00+00:00"])
d_37 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 09:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 09:15:00+00:00"])
d_38 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 09:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 09:30:00+00:00"])
d_39 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 09:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 09:45:00+00:00"])
d_40 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 09:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 10:00:00+00:00"])
d_41 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 10:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 10:15:00+00:00"])
d_42 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 10:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 10:30:00+00:00"])
d_43 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 10:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 10:45:00+00:00"])
d_44 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 10:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 11:00:00+00:00"])
d_45 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 11:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 11:15:00+00:00"])
d_46 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 11:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 11:30:00+00:00"])
d_47 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 11:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 11:45:00+00:00"])
d_48 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 11:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 12:00:00+00:00"])
d_49 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 12:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 12:15:00+00:00"])
d_51 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 12:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 12:30:00+00:00"])
d_52 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 12:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 12:45:00+00:00"])
d_53 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 12:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 13:00:00+00:00"])
d_54 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 13:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 13:15:00+00:00"])
d_55 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 13:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 13:30:00+00:00"])
d_56 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 13:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 13:45:00+00:00"])
d_57 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 13:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 14:00:00+00:00"])
d_58 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 14:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 14:15:00+00:00"])
d_59 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 14:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 14:30:00+00:00"])
d_60 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 14:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 14:45:00+00:00"])
d_61 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 14:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 15:00:00+00:00"])
d_62 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 15:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 15:15:00+00:00"])
d_63 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 15:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 15:30:00+00:00"])
d_64 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 15:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 15:45:00+00:00"])
d_65 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 15:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 16:00:00+00:00"])
d_66 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 16:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 16:15:00+00:00"])
d_67 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 16:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 16:30:00+00:00"])
d_68 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 16:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 16:45:00+00:00"])
d_69 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 16:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 17:00:00+00:00"])
d_70 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 17:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 17:15:00+00:00"])
d_71 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 17:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 17:30:00+00:00"])
d_72 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 17:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 17:45:00+00:00"])
d_73 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 17:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 18:00:00+00:00"])
d_74 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 18:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 18:15:00+00:00"])
d_75 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 18:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 18:30:00+00:00"])
d_76 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 18:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 18:45:00+00:00"])
d_77 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 18:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 19:00:00+00:00"])
d_78 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 19:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 19:15:00+00:00"])
d_79 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 19:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 19:30:00+00:00"])
d_80 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 19:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 19:45:00+00:00"])
d_81 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 19:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 20:00:00+00:00"])
d_82 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 20:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 20:15:00+00:00"])
d_83 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 20:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 20:30:00+00:00"])
d_84 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 20:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 20:45:00+00:00"])
d_85 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 20:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 21:00:00+00:00"])
d_86 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 21:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 21:15:00+00:00"])
d_87 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 21:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 21:30:00+00:00"])
d_88 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 21:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 21:45:00+00:00"])
d_89 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 21:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 22:00:00+00:00"])
d_90 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 22:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 22:15:00+00:00"])
d_91 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 22:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 22:30:00+00:00"])
d_92 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 22:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 22:45:00+00:00"])
d_93 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 22:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 23:00:00+00:00"])
d_94 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 23:00:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 23:15:00+00:00"])
d_95 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 23:15:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 23:30:00+00:00"])
d_96 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 23:30:00+00:00" & Fourth_Day$Datetime <= "2023-02-09 23:45:00+00:00"])
d_97 <- length(Fourth_Day$Datetime[Fourth_Day$Datetime >= "2023-02-09 23:45:00+00:00" & Fourth_Day$Datetime <= "2023-02-10 00:00:00+00:00"])

#Burada tüm integerler dördüncü gün için tek bir integerda toplanıyor

fourth_day_count <- c(d_1, d_2, d_3, d_4, d_5, d_6, d_7, d_8, d_9, d_10, d_11, d_12,
                     d_13, d_14, d_15, d_16, d_17, d_18, d_19, d_20, d_21, d_22, d_23,
                     d_24, d_25, d_26, d_27, d_28, d_29, d_30, d_31, d_32, d_33, d_34,
                     d_35, d_36, d_37, d_38, d_39, d_40, d_41, d_42, d_43, d_44, d_45,
                     d_46, d_47, d_48, d_49, d_51, d_52, d_53, d_54, d_55, d_56,
                     d_57, d_58, d_59, d_60, d_61, d_62, d_63, d_64, d_65, d_66, d_67,
                     d_68, d_69, d_70, d_71, d_72, d_73, d_74, d_75, d_76, d_77, d_78,
                     d_79, d_80, d_81, d_82, d_83, d_84, d_85, d_86, d_87, d_88, d_89,
                     d_90, d_91, d_92, d_93, d_94, d_95, d_96, d_97)

sum(fourth_day_count) #Toplamı 318778
length(Fourth_Day$Datetime) #Toplamı 318115

#Beşinci gün için zaman aralıkları

e_1 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 00:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 00:15:00+00:00"])
e_2 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 00:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 00:30:00+00:00"])
e_3 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 00:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 00:45:00+00:00"])
e_4 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 00:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 01:00:00+00:00"])
e_5 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 01:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 01:15:00+00:00"])
e_6 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 01:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 01:30:00+00:00"])
e_7 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 01:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 01:45:00+00:00"])
e_8 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 01:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 02:00:00+00:00"])
e_9 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 02:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 02:15:00+00:00"])
e_10 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 02:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 02:30:00+00:00"])
e_11 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 02:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 02:45:00+00:00"])
e_12 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 02:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 03:00:00+00:00"])
e_13 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 03:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 03:15:00+00:00"])
e_14 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 03:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 03:30:00+00:00"])
e_15 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 03:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 03:45:00+00:00"])
e_16 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 03:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 04:00:00+00:00"])
e_17 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 04:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 04:15:00+00:00"])
e_18 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 04:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 04:30:00+00:00"])
e_19 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 04:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 04:45:00+00:00"])
e_20 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 04:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 05:00:00+00:00"])
e_21 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 05:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 05:15:00+00:00"])
e_22 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 05:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 05:30:00+00:00"])
e_23 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 05:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 05:45:00+00:00"])
e_24 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 05:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 06:00:00+00:00"])
e_25 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 06:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 06:15:00+00:00"])
e_26 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 06:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 06:30:00+00:00"])
e_27 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 06:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 06:45:00+00:00"])
e_28 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 06:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 07:00:00+00:00"])
e_29 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 07:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 07:15:00+00:00"])
e_30 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 07:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 07:30:00+00:00"])
e_31 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 07:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 07:45:00+00:00"])
e_32 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 07:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 08:00:00+00:00"])
e_33 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 08:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 08:15:00+00:00"])
e_34 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 08:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 08:30:00+00:00"])
e_35 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 08:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 08:45:00+00:00"])
e_36 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 08:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 09:00:00+00:00"])
e_37 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 09:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 09:15:00+00:00"])
e_38 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 09:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 09:30:00+00:00"])
e_39 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 09:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 09:45:00+00:00"])
e_40 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 09:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 10:00:00+00:00"])
e_41 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 10:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 10:15:00+00:00"])
e_42 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 10:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 10:30:00+00:00"])
e_43 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 10:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 10:45:00+00:00"])
e_44 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 10:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 11:00:00+00:00"])
e_45 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 11:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 11:15:00+00:00"])
e_46 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 11:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 11:30:00+00:00"])
e_47 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 11:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 11:45:00+00:00"])
e_48 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 11:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 12:00:00+00:00"])
e_49 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 12:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 12:15:00+00:00"])
e_51 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 12:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 12:30:00+00:00"])
e_52 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 12:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 12:45:00+00:00"])
e_53 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 12:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 13:00:00+00:00"])
e_54 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 13:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 13:15:00+00:00"])
e_55 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 13:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 13:30:00+00:00"])
e_56 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 13:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 13:45:00+00:00"])
e_57 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 13:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 14:00:00+00:00"])
e_58 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 14:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 14:15:00+00:00"])
e_59 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 14:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 14:30:00+00:00"])
e_60 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 14:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 14:45:00+00:00"])
e_61 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 14:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 15:00:00+00:00"])
e_62 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 15:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 15:15:00+00:00"])
e_63 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 15:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 15:30:00+00:00"])
e_64 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 15:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 15:45:00+00:00"])
e_65 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 15:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 16:00:00+00:00"])
e_66 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 16:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 16:15:00+00:00"])
e_67 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 16:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 16:30:00+00:00"])
e_68 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 16:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 16:45:00+00:00"])
e_69 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 16:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 17:00:00+00:00"])
e_70 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 17:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 17:15:00+00:00"])
e_71 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 17:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 17:30:00+00:00"])
e_72 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 17:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 17:45:00+00:00"])
e_73 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 17:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 18:00:00+00:00"])
e_74 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 18:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 18:15:00+00:00"])
e_75 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 18:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 18:30:00+00:00"])
e_76 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 18:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 18:45:00+00:00"])
e_77 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 18:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 19:00:00+00:00"])
e_78 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 19:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 19:15:00+00:00"])
e_79 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 19:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 19:30:00+00:00"])
e_80 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 19:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 19:45:00+00:00"])
e_81 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 19:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 20:00:00+00:00"])
e_82 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 20:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 20:15:00+00:00"])
e_83 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 20:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 20:30:00+00:00"])
e_84 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 20:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 20:45:00+00:00"])
e_85 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 20:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 21:00:00+00:00"])
e_86 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 21:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 21:15:00+00:00"])
e_87 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 21:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 21:30:00+00:00"])
e_88 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 21:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 21:45:00+00:00"])
e_89 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 21:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 22:00:00+00:00"])
e_90 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 22:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 22:15:00+00:00"])
e_91 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 22:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 22:30:00+00:00"])
e_92 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 22:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 22:45:00+00:00"])
e_93 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 22:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 23:00:00+00:00"])
e_94 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 23:00:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 23:15:00+00:00"])
e_95 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 23:15:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 23:30:00+00:00"])
e_96 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 23:30:00+00:00" & Fifth_Day$Datetime <= "2023-02-10 23:45:00+00:00"])
e_97 <- length(Fifth_Day$Datetime[Fifth_Day$Datetime >= "2023-02-10 23:45:00+00:00" & Fifth_Day$Datetime <= "2023-02-11 00:00:00+00:00"])

#Burada tüm integerler beşinci gün için tek bir integerda toplanıyor

fifth_day_count <- c(e_1, e_2, e_3, e_4, e_5, e_6, e_7, e_8, e_9, e_10, e_11, e_12,
                      e_13, e_14, e_15, e_16, e_17, e_18, e_19, e_20, e_21, e_22, e_23,
                      e_24, e_25, e_26, e_27, e_28, e_29, e_30, e_31, e_32, e_33, e_34,
                      e_35, e_36, e_37, e_38, e_39, e_40, e_41, e_42, e_43, e_44, e_45,
                      e_46, e_47, e_48, e_49, e_51, e_52, e_53, e_54, e_55, e_56,
                      e_57, e_58, e_59, e_60, e_61, e_62, e_63, e_64, e_65, e_66, e_67,
                      e_68, e_69, e_70, e_71, e_72, e_73, e_74, e_75, e_76, e_77, e_78,
                      e_79, e_80, e_81, e_82, e_83, e_84, e_85, e_86, e_87, e_88, e_89,
                      e_90, e_91, e_92, e_93, e_94, e_95, e_96, e_97)



sum(fifth_day_count) #Toplamı 248818
length(Fifth_Day$Datetime) #Toplamı 248247


#Buradan sonrası grafikler için
#Grafikleri oluştururken ggplot2 kütüphanesinden yararlandım

#GENEL GRAFİK-------------------------------------

#Tüm günleri tek bir integerda toplama

total_day_count <- c(first_day_count, second_day_count, third_day_count, fourth_day_count, fifth_day_count)

#Zaman aralığı için veri oluşturma, 06.02.2023 03:00 - 11.02.2023 03:00 arası 15 dk'lık bölmeler

timestamps <- seq(from = as.POSIXct("2023-02-06 03:00:00"), 
                  to = as.POSIXct("2023-02-11 03:00:00"), 
                  by = "15 min")

timestamps_1 <- timestamps[-481] #Başlangıç ve son zaman aralığı bir fazla çıktı veriyor, 11.02.2023 03:00 kaldırıldı

ggplot_verisi <- data.frame(zaman = timestamps_1, tweetler = total_day_count)
grafik_1 <- ggplot(data = ggplot_verisi, aes(x = zaman, y = tweetler)) +
  geom_line(size = 0.5) +
  scale_x_datetime(date_breaks = "2 hour", date_labels = "%H:%M") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 90, vjust=0.5), 
       panel.grid.minor = element_blank()) +
  labs(title = "İçinde Deprem Geçen Tweet Sayısı",
       subtitle = "15'er Dakikalık Aralıklarla Hesaplanmıştır",
       y ="Atılan Tweet Sayısı",
       x = "Zaman Aralığı", 
       caption = "Verilere kendi hesaplamalarım sonucu ulaşıldı,
       GitHub linkinden bulabilirsiniz.")

grafik_1



#GÜN ORTALAMALI GRAFİK------------------------------------

#Günler için ortalama hesabı

first_mean <- mean(first_day_count)
second_mean <- mean(second_day_count)
third_mean <- mean(third_day_count)
fourth_mean <- mean(fourth_day_count)
fifth_mean <- mean(fifth_day_count)

general_mean <- c(rep(c(first_mean, 0), 43), rep(c(second_mean, 0), 48), rep(c(third_mean, 0), 48),
              rep(c(fourth_mean, 0), 48), rep(c(fifth_mean, 0), 48), rep(0, 10))

#Ortalama eklenmiş data.frame oluşturmak için

ggplot_verisi_2 <- data.frame(time = timestamps_1, all_tweet = total_day_count, means = general_mean)
ggplot_verisi_2

grafik_2 <- ggplot(data = ggplot_verisi_2) +
  geom_line(aes(x = time, y= all_tweet), size = 1) +
  geom_bar(aes(x = time, y = means), stat="identity", alpha = 1/10) +
  scale_fill_brewer(palette = "Set1") +
  scale_x_datetime(date_breaks = "2 hour", date_labels = "%H:%M") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 90, vjust=0.5), 
        panel.grid.minor = element_blank()) +
  labs(title = "Twitter ve Deprem",
       subtitle = "15'er Dakikalık Aralıklarla Hesaplanmıştır",
       y ="Atılan Tweet Sayısı",
       x = "Zaman Aralığı", 
       caption = "Verilere kendi hesaplamalarım sonucu ulaşıldı,
       GitHub linkinden bulabilirsiniz.")

grafik_2

#TWİTTER KAPANIŞ ARASI ÖZEL GRAFİK------------

#Twitter'ın kapandığı zaman aralığı 08.02.2023 16:00 civarı - 09.02.2023 03.02.2023 civarı

#Özel olarak incelemek için seçtiğim aralık 08.02.2023 12:00 - 09.02.2023 12:00 arası

#Genel veriden zaman aralığını çekip yeni veri oluşturma

close_special <- c(c_37, c_38, c_39, c_40, c_41, c_42, c_43, c_44, c_45,
                   c_46, c_47, c_48, c_49, c_51, c_52, c_53, c_54, c_55, c_56,
                   c_57, c_58, c_59, c_60, c_61, c_62, c_63, c_64, c_65, c_66, c_67,
                   c_68, c_69, c_70, c_71, c_72, c_73, c_74, c_75, c_76, c_77, c_78,
                   c_79, c_80, c_81, c_82, c_83, c_84, c_85, c_86, c_87, c_88, c_89,
                   c_90, c_91, c_92, c_93, c_94, c_95, c_96, c_97, d_1, d_2, d_3, d_4, d_5, d_6, d_7, d_8, d_9, d_10, d_11, d_12,
                   d_13, d_14, d_15, d_16, d_17, d_18, d_19, d_20, d_21, d_22, d_23,
                   d_24, d_25, d_26, d_27, d_28, d_29, d_30, d_31, d_32, d_33, d_34,
                   d_35, d_36)

timestamps_special <- seq(from = as.POSIXct("2023-02-08 12:00:00"), 
                  to = as.POSIXct("2023-02-9 11:45:00"), 
                  by = "15 min")

ggplot_twitter_special_verisi <- data.frame(twitter_time = timestamps_special, 
                                            tweets_special = close_special)

grafik_3 <- ggplot(data = ggplot_twitter_special_verisi) +
  geom_line(aes(x = twitter_time, y = tweets_special), size = 1) +
  scale_x_datetime(date_breaks = "1 hour", date_labels = "%H:%M") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 90, vjust=0.5), 
        panel.grid.minor = element_blank()) +
  labs(title = "Twitter'ın Kapatıldığı Aralık",
       subtitle = "15'er Dakikalık Aralıklarla Hesaplanmıştır",
       y ="Atılan Tweet Sayısı",
       x = "Zaman Aralığı", 
       caption = "Verilere kendi hesaplamalarım sonucu ulaşıldı,
       GitHub linkinden bulabilirsiniz.")

grafik_3
