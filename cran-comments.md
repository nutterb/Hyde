This update addresses a dependency issue identified by Professor Ripley 
of which I was notified on 19 Dec. 2018.  One of my datasets was depending 
on a package that was not declared.  I have cleared the dataset of the 
dependency.

## Test environments
* win-builder (devel 2018-12-27 r75912)
* win-builder (R 3.5.2)
* Local Linux install R 3.5.2 (Ubuntu 16.05.3 LTS)
* Travis CI Linux install R 3.5.0 (Ubuntu 14.04.5 LTS)

## R CMD check results

There were no findings from the CHECK results

## Downstream dependencies

In the `wiseR` package, I receive notes regarding `Namespaces in Imports field not imported from:`. This note exists in the CRAN version of `wiseR`. I have filed an issue on the `wiseR` repository regarding the note.  

I also receive a note about the package size of `wiseR` that also exists on CRAN.  No new issue are observed.

Many thanks, and have a great day.