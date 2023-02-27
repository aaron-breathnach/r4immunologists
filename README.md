# r4immunologists

This R package contains the material used in the R for Immunologists workshop delivered by Aaron Walsh at Trinity College Dublin.

## RStudio

For the today's workshop, we'll be working in RStudio.

Before we can use RStudio, we'll need to install R. To do so, click [here](https://cran.rstudio.com/).

To install RStudio, click [here](https://posit.co/download/rstudio-desktop/).

When you open RStudio, you will see a screen like this:

![](inst/tutorials/r_for_immunologists/images/rstudio_screenshot.png)

As you can see, there are four panes:

1.  The top left pane is the **Source Editor**. This is where you write your R code.
2.  The top right pane is the **Environment**. This displays all user-defined objects.
3.  The bottom right pane is **Plots**. This where plots are drawn.
4.  The bottom left pane is the **Console**. This is where you run your R code.

## Install r4immunologists

Before starting the tutorial, run the following code from the Console in RStudio to install the required packages:

```
if (!require("devtools")) install.packages("devtools")
devtools::install_github("aaron-breathnach/r4immunologists")
```

## Load the interactive tutorial

We can run the tutorial as follows:

```{r}
learnr::run_tutorial("r_for_immunologists", package = "r4immunologists")
```

## Data

For convenience, the following code will create a directory on our Desktop called `r_for_immunologists` which contains the data used for this tutorial, and it will set `r_for_immunologists` as our working directory:

```{r}
r4immunologists::copy_data()
```

The data used in this tutorial can also be downloaded from [Google Drive](https://drive.google.com/drive/folders/1CiTHFHxnXQVT8rltmoGoremlw0wVu4jD?usp=sharing).