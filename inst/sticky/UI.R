library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("sticky!"),
  sidebarPanel(
      selectInput("gender", "Gender:", c("Female", "Male")),
      selectInput("face", "Expression:", c("Happy", "Sad", "Annoyed",
                                           "Surprised")),
      selectInput("arms", "Arms:", c("Down", "Neutral", "Up", "Hip", "Wave")),
      selectInput("hat", "Hat:", c(FALSE,TRUE))
  ),
  mainPanel(
      plotOutput("stick", width="400px")
  )
))
