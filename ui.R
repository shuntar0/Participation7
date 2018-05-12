# ui.R
library(shiny)
library(plotly)

select_values <- colnames(trees)

shinyUI(fluidPage(
  
  # for header
  h1("trees Dataset Exploration"),
  
  # Add a select input for the x variable
  selectInput(
    "x_var",
    label = "X Variable", 
    choices = select_values, 
    selected = "Height"
  ), 
  
  # Add a select input for the y variable
  selectInput(
    "y_var",
    label = "Y Variable", 
    choices = select_values, 
    selected = "Volume"
  ),
  
  # Add a sliderInput to set the size of each point
  sliderInput("size", label = "Size of point", min = 1, max = 20, value = 10),
  
  # Add a selectInput that allows you to select a color from a list of choices
  selectInput(
    "color",
    label = "Color", 
    choices = list("Red" = "red", "Yellow" = "yellow", "Green" = "green")
  ),
  
  
  # Plot the output with the name "scatter"
  plotOutput("scatter")
))
