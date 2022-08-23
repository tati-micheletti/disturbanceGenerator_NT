## Everything in this file and any files in the R directory are sourced during `simInit()`;
## all functions and objects are put into the `simList`.
## To use objects, use `sim$xxx` (they are globally available to all modules).
## Functions can be used inside any function that was sourced in this module;
## they are namespaced to the module, just like functions in R packages.
## If exact location is required, functions will be: `sim$.mods$<moduleName>$FunctionName`.
defineModule(sim, list(
  name = "disturbanceGenerator_NT",
  description = paste0("This parent module uses together three modules: ",
                       "anthroDisturbance_DataPrep, potentialResourcesNT_DataPrep", 
                       " and anthroDisturbance_Generator, the second being ",
                       "idiosyncratic to Northwest Territories data. The other ",
                       "two modules are, however generic and can be applied in ",
                       "other contexts. For specific module descriptions, please ",
                       "see the accompanying .Rmd or .pdf files and individual ",
                       "modules' documentation"),
  keywords = c("anthropogenic disturbance", "simulation"),
  authors = structure(list(list(given = "Tati", 
                                family = "Micheletti", 
                                role = c("aut", "cre"), 
                                email = "tati.micheletti@gmail.com", 
                                comment = NULL)), 
                      class = "person"),
  childModules = c("anthroDisturbance_DataPrep", 
                   "potentialResourcesNT_DataPrep", 
                   "anthroDisturbance_Generator"),
  version = list(disturbanceGenerator_NT = "0.0.1", 
                 anthroDisturbance_DataPrep = "0.0.1", 
                 potentialResourcesNT_DataPrep = "0.0.1", 
                 anthroDisturbance_Generator = "0.0.1"),
  timeframe = as.POSIXlt(c(NA, NA)),
  timeunit = "year",
  citation = list("citation.bib"),
  documentation = list("README.md", "disturbanceGenerator_NT.Rmd"), ## same file
## this is a parent module and as such does not have any reqdPkgs, parameters, inputObjects, nor outputObjects.
))

## this is a parent module and as such does not have any events.
