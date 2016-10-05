#' Help start conversations
#'
#' This function generates some helpful text that can be used to start
#' conversations in all kinds of awkward social situtations.
#'
#' @param who character(1) The name of a person you wish to start a
#' conversation with
#'
#' @return character(1) Line of text to be used when starting conversations
#'
#' @examples
#' hi("Lori Shepherd")
#'
#' @export
hi <- function(who){
    stopifnot(
        is.character(who),
        length(who) == 1,
        !is.na(who)
    )
    paste("Hello", shout(who), "You have", nchar(who), "letters in your name!")
}

shout <- function(who){
    toupper(who)
}
