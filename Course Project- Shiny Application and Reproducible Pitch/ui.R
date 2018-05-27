library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        titlePanel("BMI calculator for children"),
        
        sidebarLayout(
                sidebarPanel(
                        helpText("The BMI is an indicator which gives you the possibility to keep track of your weight to heigt ratio"),            
                        helpText("This calculator tells you if your child is being overweigth or not."),  
                        sliderInput("sliderweight",label = h4("What is your childs weight in KG?"),min = 5, max = 150,25),
                       
                        sliderInput("sliderheight",label = h4("What is your childs height in cm"),min = 50, max = 200,100),
                       
                        radioButtons("genderselect", label=h4("Gender:"),
                                     list("Male", "Female")),
                        
                        numericInput("age_child",label = h4("How old is your child"),min = 2, max = 18,2),
                        actionButton("Predict_BMI", label = "Click here to calculate your childs BMI")
                ),
                mainPanel
                (
                        tabsetPanel
                        (
                                tabPanel("This is your childs BMI and classification",
                                         h4("Weight:"),
                                         textOutput("current_weight"),
                                         h4("Height"),
                                         textOutput("current_height"),
                                         h4("Gender:"),
                                         textOutput("current_gender"),
                                         h4("Age:"),
                                         textOutput("current_age"),
                                         h4("This is your childs BMI"),
                                         textOutput("BMI_outcome"),
                                         h4("Your child is classified as follows:"),
                                         textOutput("indicator")
                                         
                                ),
                                tabPanel(
                                        "Information",
                                        h4("Body Mass Index Application for children"),
                                       
                                        helpText("This application calculates a childs BMI"),
                                        h3("Why is BMI important?"),
                                        helpText("The BMI tells you status of your weight to height ratio is; are you underweight or obese?")
                                )
                                
                                
                        )
                )
        )
))