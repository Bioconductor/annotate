.First.lib <- function(libname, pkgname, where) {
    require(Biobase)

  if(missing(where)) {
        where <- match(paste("package:", pkgname, sep=""), search())
        if(is.na(where)) {
            warning(paste("Not a package name: ",pkgname))
            return()
        }
        where <- pos.to.env(where)
    }

    .initChromLoc(where)
    .initChromLocation(where)
}