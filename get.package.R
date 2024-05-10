get.package<- function(package.name)  {   
pack.list = installed.packages()
   if(!(package.name%in%pack.list))
  {
 res=tryCatch(webr::install(package.name),  warning = function(w){structure(w, class = "warning") })
    if (class(res)=="warning"){
    stop(paste0("CRAN has no package named '",package.name,"'.  No package installed."))}
 }

   eval(bquote(library(.(package.name))))
}
