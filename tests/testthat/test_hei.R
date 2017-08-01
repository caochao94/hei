context("HEI calculation")

test_that("HEI score is same as original validation data", {

    diet <- get_diet("2009/2010")
    fped <- get_fped("2009/2010")
    demog <- get_demo("2009/2010")

    alldat <- combo(fped,diet,demog)

    heires <- hei(alldat)

    expect_equal_to_reference(heires$heitotal, file = "rds/valid.rds")

})