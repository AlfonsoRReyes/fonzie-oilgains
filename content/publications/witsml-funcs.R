# witsml-show50.R

library(xml2)
library(data.table)
library(dplyr)

as_named_list <- function(...) {
    if (length(as.character( match.call()[-1])) < 1)
        stop("you must supply at least one object name")
    nl <- setNames( list(...), as.character( match.call()[-1]) )
    nl
}


get_results_xml <- function() {
    witsml_dir <- "./witsml"
    all_files_xml <- list.files(witsml_dir, recursive = TRUE,
                                full.names = TRUE,
                                include.dirs = TRUE, pattern = "*.xml")
    
    # get the file for trajectory
    traj_files <- grep(pattern = "trajectory", ignore.case = TRUE,
                       value = TRUE, x = all_files_xml)
    
    dat <- read_xml(traj_files)
    
    # strip default namespaces from the document
    xml_ns_strip(dat)
    show_all_elems <- dat %>%
        xml_find_all( '//*') %>%
        xml_path()
    
    length_all_elems <- length(show_all_elems)
    
    # name of the orphan nodes
    orphan_vars <- c(1:14)
    vars14_names <- xml_name(xml_children(xml_find_first(dat, 
                                                         "//trajectory")))[orphan_vars]
    
    children_trajectory <- xml_name(xml_children(xml_find_all(dat, "//trajectory")))
    length_children_trajectory <- length(children_trajectory)
    
    # names of the nodes for "trajectoryStation"
    names_trajectoryStation <- xml_name(xml_children(xml_find_first( dat, "//trajectory/trajectoryStation")))
    
    # how many of //trajectoryStation/dTimStn
    trajectoryStation.dTimStn <- xml_find_all(dat, "//trajectoryStation/dTimStn")
    
    # we end up finding a way to calculate the number of trajectory stations
    number_of_trajectoryStation <- length(trajectoryStation.dTimStn)   
    
    # name of the dependent nodes of "trajectoryStation"
    children_trajectoryStation <- xml_name(xml_children(xml_find_first(dat, "//trajectoryStation")))
    
    return(as_named_list(
        traj_files, 
        show_all_elems,
        length_all_elems,
        vars14_names,
        children_trajectory,
        length_children_trajectory,
        names_trajectoryStation,
        number_of_trajectoryStation,
        children_trajectoryStation
        
    ))
}





