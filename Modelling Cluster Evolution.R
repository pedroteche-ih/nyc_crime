library(depmixS4)
library(arrow)
library(ggplot2)
library(moveHMM)

tb_clu <- read_parquet("data_output/tb_clu_138.parquet")
for (i in 2:5) {
    hmm_mod <- depmix(
        response = list(lat_meters ~ 1, long_meters ~ 1),
        data = tb_clu,
        nstates = i,
        family = list(gaussian(), gaussian()),
        instart = runif(i)
    )
    fm <- fit(hmm_mod, verbose = FALSE, emc = em.control(rand = TRUE), ntimes = 10)
    print(BIC(fm))
}
post_vit <- posterior(fm, type = "viterbi")
tb_clu$state <- post_vit$state
tb_clu$p1 <- post_vit$S1
ggplot(tb_clu, aes(x = long_meters, y = lat_meters, color = state, group = state)) +
    geom_point() +
    geom_density2d() +
    theme_bw() +
    coord_equal()

tb_ts_clu <- read_parquet("data_output/tb_ts_clu_138.parquet")
tb_ts_clu$Easting <- tb_ts_clu$long_meters_30
tb_ts_clu$Northing <- tb_ts_clu$lat_meters_30
tb_ts_clu$long_meters_30 <- NULL
tb_ts_clu$lat_meters_30 <- NULL
tb_ts_clu$date <- NULL
tb_ts_clu$num_crimes_30 <- scale(tb_ts_clu$num_crimes_30)
prep_ts_clu <- prepData(
    tb_ts_clu,
    type = "UTM",
    coordNames = c("Easting", "Northing")
)
# Indices of steps of length zero
whichzero <- which(prep_ts_clu$step == 0)
ggplot(prep_ts_clu, aes(x = step)) +
    geom_histogram(bins = 100) +
    theme_bw()
ggplot(prep_ts_clu, aes(x = angle)) +
    geom_histogram(bins = 100) +
    theme_bw()
ggplot(prep_ts_clu, aes(x = step, y = angle)) +
    geom_bin2d() +
    theme_bw()
# Proportion of steps of length zero in the data set
length(whichzero) / nrow(prep_ts_clu)
summary(prep_ts_clu)
pdf(file = "output/data_138.pdf")
plot(prep_ts_clu, compact = TRUE, ask = FALSE)
dev.off()
mu0 <- c(0.5, 7, 20) # step mean (two parameters: one for each state)
sigma0 <- c(0.5, 7, 20) # step SD
zeromass0 <- c(0.9, 0.1, 0.01) # step zero-mass
step_par0 <- c(mu0, sigma0, zeromass0)

angle_mean0 <- c(pi / 2, pi / 2, pi / 2) # angle mean
kappa0 <- c(0.1, 0.1, 0.1) # angle concentration
angle_par0 <- c(angle_mean0, kappa0)
m <- fitHMM(
    data = prep_ts_clu, nbStates = 3, stepPar0 = step_par0,
    anglePar0 = angle_par0
)
m
pdf(file = "output/hmm_138.pdf")
plot(m, ask = FALSE)
dev.off()
