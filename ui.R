shinyUI(pageWithSidebar(
  headerPanel("Car weight in Pounds to predicted MPG Calculator"),
  sidebarPanel(
    textInput(inputId="weight", label = "Input Weight in lbs"),
    actionButton("goButton", "Compute MPG!")
  ),
  mainPanel(
    p('Input Weight'),
    textOutput('weight'),
    p('Prediction: "MPG" "Worst MPG" "Best MPG"'),
    textOutput('prediction')
  )
))