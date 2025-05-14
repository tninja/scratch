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

## About house

### 1. calculate what kind of house we can buy

cash = 300
applestock = 300
airbnbstock = 400
stock.sell.pct = 0.50

downpay.rate = 0.25
buffer = 150

(cash + applestock * stock.sell.pct - buffer) / downpay.rate
(cash + (applestock + airbnbstock) * stock.sell.pct - buffer) / downpay.rate

### 2. calculate how many we can get from house

current rent price for the current house:
~ $4200: https://www.zillow.com/homedetails/833-Columba-Ln-Foster-City-CA-94404/15629197_zpid/
- So yearly cost is still 15K + 12K + 3K = 30K
- Will generate probably 4K per month (pre-tax) when I am 50

### install dependency

#### https://bioconductor.org/install/
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(version = "3.11")

BiocManager::install(c('ggplot2', 'plyr', 'dplyr', 'reshape2', 'lintr', 'gganimate'))

install.packages("https://cran.r-project.org/src/contrib/Archive/ascii/ascii_2.1.tar.gz")

library(ascii)

### ggplot
library(ggplot2)

biocmanager::install(c('patchwork'))

library(ggplot2)
library(patchwork)

p1 <- ggplot(mtcars) + geom_point(aes(mpg, disp))
p2 <- ggplot(mtcars) + geom_boxplot(aes(gear, disp, group = gear))

p1 + p2

p3 <- ggplot(mtcars) + geom_smooth(aes(disp, qsec))
p4 <- ggplot(mtcars) + geom_bar(aes(carb))

(p1 | p2 | p3) /
      p4

((p1 | p2) / (p3 | p4))

a <- 1

xdf = data.frame(a=1, b='a')

BiocManager::install(c('gganimate'))

BiocManager::install(c('magick'))

library(ggplot2)
library(gganimate)

anim <- ggplot(mtcars, aes(mpg, disp)) +
  transition_states(gear, transition_length = 2, state_length = 1) +
  enter_fade() +
  exit_fade()

# Explicitly animate using default (same as just printing the animation)
animate(anim)

# Change duration and framerate
animate(anim, fps = 20, duration = 15)

# Make the animation pause at the end and then rewind
animate(anim, nframes = 100, end_pause = 10, rewind = TRUE)

# Use a different renderer
animate(anim, renderer = file_renderer('~/animation/'))[1:6]

# Specify device dimensions and/or resolution
animate(anim, height = 2, width = 3, units = "in", res = 150)

library(ggplot2)
##devtools::install_github('thomasp85/gganimate')
library(gganimate)

p <- ggplot(mtcars, aes(factor(cyl), mpg)) + 
    geom_boxplot() + 
    ## Here comes the gganimate code
    transition_states(
        gear,
        transition_length = 2,
        state_length = 1
    ) +
    enter_fade() + 
    exit_shrink() +
    ease_aes('sine-in-out')

anim <- animate(p)
magick::image_write(anim, path="myanimation.gif")

## gganimate example

BiocManager::install(c('patchwork', 'gapminder', 'magick'))

library(gapminder)

ggplot(gapminder, aes(gdpPercap, lifeExp, size = pop, colour = country)) +
  geom_point(alpha = 0.7, show.legend = FALSE) +
  scale_colour_manual(values = country_colors) +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  facet_wrap(~continent) +
  # Here comes the gganimate specific bits
  labs(title = 'Year: {frame_time}', x = 'GDP per capita', y = 'life expectancy') +
  transition_time(year) +
  ease_aes('linear')

library(lintr)

ls()

BiocManager::install(c('lintr'))

BiocManager::install(c('knitr', 'bookdown'))

setwd('/Users/tninja/git/py4ds-CN')

bookdown::render_book("index.Rmd", "bookdown::epub_book")
