# config
Configuration files to perform processes for KH related work

# geo folder
Files inside the folder will be used by ***norgeo** package to alter geo codes
manually. This is especially relevant for splitting codes. The files should be
named as *geo-year.R* where *year* refers to the year of the geo codes. The
output of the file should be row index ie. row line number.

There are many ways to find row index eg. using `which`

```r
which(dd$oldCode == 1534 & dd$currentCode == 1508)
```

or with `data.table` style

```r
dd[oldCode == 1534 & currentCode == 1508, which = TRUE ]
```


