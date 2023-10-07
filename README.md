# config
Configuration files to perform processes for KH related work

# geo folder
Files inside this folder will be used by ***norgeo** package to alter geo codes
manually. This is especially relevant for splitting geo codes. The files should
be named as *geo-year.R* where *year* refers to the year of the geo codes to be
implemented. The output of the file should be row index ie. row line number, and
named as **IDX**. Input dataset will always be **DT**.

There are many ways to find row index eg. using `which()`

```r
IDX <- which(DT$oldCode == 1534 & DT$currentCode == 1508)
#or
IDX <- which(DT$oldCode %in% c(1507, 1325) & DT$currentCode == 1476)
```

or with `data.table` style

```r
IDX <- DT[oldCode == 1534 & currentCode == 1508, which = TRUE]
#or
IDX <- DT[oldCode %in% c(1507, 1325) & currentCode == 1476, which = TRUE]
```
