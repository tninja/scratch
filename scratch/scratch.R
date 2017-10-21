### Example of lm function

require(graphics)

## Annette Dobson (1990) "An Introduction to Generalized Linear Models".
## Page 9: Plant Weight Data.
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
lm.D90 <- lm(weight ~ group - 1) # omitting intercept

anova(lm.D9)
summary(lm.D90)

opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))
plot(lm.D9, las = 1)      # Residuals, Fitted, ...
par(opar)

### less simple examples in "See Also" above

geom_christmas_tree()

### try plot christmas tree

### http://smarterpoland.pl/index.php/2015/12/geom_christmas_tree-a-new-geom-for-ggplot2-v2-0/

library(ggplot2)

GeomChristmasTree <- ggproto("GeomChristmasTree", Geom,
     required_aes = c("x", "y"),
     default_aes = aes(shape = 19, colour = "black", 
         fill = "green4", size = 3,
         linetype = 1, alpha = 1,
         fontsize = 1),
     draw_key = draw_key_polygon,
     
     draw_panel = function(data, panel_scales, coord) {
       coords <- coord$transform(data, panel_scales)
       
       # each tree has 4*branches + 3 points
       if (length(coords$size) == 1) {
         tsize <- rep(pmax(1, round(coords$size)), length(coords$x))
         theight <- rep(pmax(0, round(coords$size)), length(coords$x))
       } else {
         tsize <- pmax(1, round(coords$size))
         theight <- pmax(0, coords$size)
       }

       # scale factors
       r01x <- diff(range(coords$x))/100
       r01y <- diff(range(coords$y))/100
       
       # coords
       longx <- unlist(lapply(seq_along(coords$x), function(i) {
         if (tsize[i] == 1) {
           dx <- -c(0.3, 0.3, 1.2, 0, -1.2, -0.3, -0.3)
         } else {
           dx <- -c(0.3, 0.3, rep(c(1.2,0.3), tsize[i]-1), 1.2, 0, -1.2, rep(c(-0.3,-1.2), tsize[i]-1), -0.3, -0.3)
         }
         r01x*dx + coords$x[i]
       }))
       longy <- unlist(lapply(seq_along(coords$y), function(i) {
         if (tsize[i] == 1) {
           dy <- c(-0.5, 0, 0, theight[i], 0, 0, -0.5)
         } else {
           dy <- c(-0.5, 0, 0, rep(1:(tsize[i]-1), each=2), theight[i], rep((tsize[i]-1):1, each=2), 0, 0, -0.5)
         }
         r01y*dy + coords$y[i]
       }))
       longid <- unlist(sapply(seq_along(coords$y), function(i) {
         rep(i, each=4*tsize[i]+3)
       }))
       
       grid::polygonGrob(
         longx, 
         longy,
         id = longid,
         gp = grid::gpar(col = coords[,"colour"],
                         fill = coords[,"fill"],
                         fontsize = 10)
       )
     }
)

geom_christmas_tree <- function(mapping = NULL, data = NULL, stat = "identity",
                              position = "identity", na.rm = FALSE, show.legend = NA, 
                              inherit.aes = TRUE, ...) {
  layer(
    geom = GeomChristmasTree, mapping = mapping,  data = data, stat = stat, 
    position = position, show.legend = show.legend, inherit.aes = inherit.aes,
    params = list(na.rm = na.rm, ...)
  )
}

### http://smarterpoland.pl/index.php/2015/12/geom_christmas_tree-a-new-geom-for-ggplot2-v2-0/

ggplot(mpg, aes(displ, hwy, fill=manufacturer)) + geom_christmas_tree(size=3)
