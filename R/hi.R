#' Help start conversations

#' This function generates some helpful text that can be used to start
#' conversations in all kinds of awkward social situtations.
#'
#' @param who character(1) The name of a person you wish to start a
#' conversation with
#'
#' @param how character(1) Either shout or whisper to determine intensity of
#' output
#'
#' @return character(1) Line of text to be used when starting conversations
#'
#' @examples
#' hi("Lori Shepherd")
#' hi("MiniMe", "whisper")
#'
#' @export
hi <- function(who, how=c("shout", "whisper")){
    stopifnot(
        is.character(who),
        length(who) == 1,
        !is.na(who)
    )
    how <- match.arg(how)
    fun = switch(how, shout=shout, whisper=whisper)
    paste("Hello", fun(who), "You have", nchar(who), "letters in your name!")
}

shout <- function(who){
    toupper(who)
}

whisper <- function(who){
    tolower(who)
}
