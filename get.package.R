get.package=function(package.name)
  
{
  pack.list=installed.packages()
  if(!(package.name%in%pack.list))
  {
    res=try(webr::install(package.name),silent=T)
    if (class(res)=="try-error")
      stop(paste0("CRAN has no package named '",package.name,"'.  No package installed."))
  }
  library(as.character(package.name),character.only=T)
}
