usa.df<-map_data("state")
str(usa.df)
colnames(usa.df)[5]<-"state"
usa.df$state<-as.factor(usa.df$state)
str(usa.df)
usa.dat <- read.table("/home/div/Documents/Frank_top_2012.csv", header = T, sep = ",")
str(usa.dat)
usa.df <- join(usa.df, usa.dat, by = "state", type = "inner")
str(usa.df)
usa.df = usa.df[usa.df$year==1999,]
str(usa.df)
range(usa.df$top1)
brks<-c(0.184, 0.210, 0.220, 0.250,  0.270, 0.312, 0.376, 0.44, 0.5)
p <- ggplot() +
  geom_polygon(data = usa.df, aes(x = long, y = lat, group = group, fill = top1),color = "black", size = 0.15) +	
  scale_fill_distiller(palette = "Reds", breaks = brks, trans = "reverse") +
  theme_nothing(legend = TRUE) +
  labs(title = "Top 1% earners in USA in 1999 ", fill = "")
#+
#geom_text(aes(x = lat_c, y = lon_c, group = group, label = state),
#                             data = centers,
#                            alpha = 1,
#                           color = "black")
ggsave(p, file = "/home/div/Documents/usa_top1_1999.pdf")
#--------------------------------------------OR----------------------------------------
#q <- ggplot() +
#  geom_polygon(data = usa.df, aes(x = long, y = lat, group = group, fill = top1), 
#                     +                  color = "black", size = 0.15) +	
#    scale_color_brewer(palette="Set1") +
#     theme_nothing(legend = TRUE) +
#     labs(title = "Top 1% earners in USA in 2012 ", fill = "")	
#ggsave(q, file = "usa_top1_2012C.pdf")  
