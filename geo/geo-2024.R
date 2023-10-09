## There are geo splitt for 2024
## See norgeo issue 84
## Input dataset is DT and output row index must be IDX

## Find row index to be deleted from dataset
x1 <- DT[oldCode == 1534 & currentCode == 1508, which = TRUE]
x2 <- DT[oldCode %in% c(1504, 1523, 1529, 1546, 1507) & currentCode == 1580, which = TRUE]

IDX <- c(x1, x2)
