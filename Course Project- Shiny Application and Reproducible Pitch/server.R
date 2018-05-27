library(shiny)


shinyServer(function(input, output) {
        
        values <- reactiveValues()
        
        observe({
                input$Predict_BMI
                values$bmi <- isolate({
                        input$sliderweight/((input$sliderheight/100)*(input$sliderheight/100)) })
               
        })

        # Display your current values
        output$current_height <- renderText({
                input$Predict_BMI
                paste(isolate(input$sliderheight))
        })
        
        output$current_weight <- renderText({
                input$Predict_BMI
                paste(isolate(input$sliderweight))
        })
        
        output$current_gender <- renderText({
                input$Predict_BMI
                paste(isolate(input$genderselect))
        })
        
        output$current_age <- renderText({
                input$Predict_BMI
                paste(isolate(input$age_child))
        })
        
        
        output$indicator <- renderText({
                
                
                if(input$Predict_BMI == 0) ""
                else {
                        if (values$bmi < 15.13 && input$genderselect == "Male" && input$age_child == 2){values$indicator = "Underweight"}
                        else if (values$bmi < 14.73 && input$genderselect == "Male" && input$age_child == 3){values$indicator = "Underweight"}
                        else if (values$bmi < 14.42 && input$genderselect == "Male" && input$age_child == 4){values$indicator = "Underweight"}
                        else if (values$bmi < 14.20 && input$genderselect == "Male" && input$age_child == 5){values$indicator = "Underweight"}
                        else if (values$bmi < 14.06 && input$genderselect == "Male" && input$age_child == 6){values$indicator = "Underweight"}
                        else if (values$bmi < 14.03 && input$genderselect == "Male" && input$age_child == 7){values$indicator = "Underweight"}
                        else if (values$bmi < 14.14 && input$genderselect == "Male" && input$age_child == 8){values$indicator = "Underweight"}
                        else if (values$bmi < 14.34 && input$genderselect == "Male" && input$age_child == 9){values$indicator = "Underweight"}
                        else if (values$bmi < 14.63 && input$genderselect == "Male" && input$age_child == 10){values$indicator = "Underweight"}
                        else if (values$bmi < 14.96 && input$genderselect == "Male" && input$age_child == 11){values$indicator = "Underweight"}
                        else if (values$bmi < 15.34 && input$genderselect == "Male" && input$age_child == 12){values$indicator = "Underweight"}
                        else if (values$bmi < 15.83 && input$genderselect == "Male" && input$age_child == 13){values$indicator = "Underweight"}
                        else if (values$bmi < 16.40 && input$genderselect == "Male" && input$age_child == 14){values$indicator = "Underweight"}
                        else if (values$bmi < 16.97 && input$genderselect == "Male" && input$age_child == 15){values$indicator = "Underweight"}
                        else if (values$bmi < 17.53 && input$genderselect == "Male" && input$age_child == 16){values$indicator = "Underweight"}
                        else if (values$bmi < 18.04 && input$genderselect == "Male" && input$age_child == 17){values$indicator = "Underweight"}
                        else if (values$bmi < 18.49 && input$genderselect == "Male" && input$age_child == 18){values$indicator = "Underweight"}
                        
                        else if (values$bmi < 18.40 && input$genderselect == "Male" && input$age_child == 2){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.88 && input$genderselect == "Male" && input$age_child == 3){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.54 && input$genderselect == "Male" && input$age_child == 4){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.41 && input$genderselect == "Male" && input$age_child == 5){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.54 && input$genderselect == "Male" && input$age_child == 6){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.91 && input$genderselect == "Male" && input$age_child == 7){values$indicator = "Normal weight"}
                        else if (values$bmi < 18.43 && input$genderselect == "Male" && input$age_child == 8){values$indicator = "Normal weight"}
                        else if (values$bmi < 19.09 && input$genderselect == "Male" && input$age_child == 9){values$indicator = "Normal weight"}
                        else if (values$bmi < 19.83 && input$genderselect == "Male" && input$age_child == 10){values$indicator = "Normal weight"}
                        else if (values$bmi < 20.54 && input$genderselect == "Male" && input$age_child == 11){values$indicator = "Normal weight"}
                        else if (values$bmi < 21.21 && input$genderselect == "Male" && input$age_child == 12){values$indicator = "Normal weight"}
                        else if (values$bmi < 21.90 && input$genderselect == "Male" && input$age_child == 13){values$indicator = "Normal weight"}
                        else if (values$bmi < 22.61 && input$genderselect == "Male" && input$age_child == 14){values$indicator = "Normal weight"}
                        else if (values$bmi < 23.28 && input$genderselect == "Male" && input$age_child == 15){values$indicator = "Normal weight"}
                        else if (values$bmi < 23.89 && input$genderselect == "Male" && input$age_child == 16){values$indicator = "Normal weight"}
                        else if (values$bmi < 24.45 && input$genderselect == "Male" && input$age_child == 17){values$indicator = "Normal weight"}
                        else if (values$bmi < 24.99 && input$genderselect == "Male" && input$age_child == 18){values$indicator = "Normal weight"}
                        
                        else if (values$bmi < 20.09 && input$genderselect == "Male" && input$age_child == 2){values$indicator = "Overweight"}
                        else if (values$bmi < 19.57 && input$genderselect == "Male" && input$age_child == 3){values$indicator = "Overweight"}
                        else if (values$bmi < 19.29 && input$genderselect == "Male" && input$age_child == 4){values$indicator = "Overweight"}
                        else if (values$bmi < 19.30 && input$genderselect == "Male" && input$age_child == 5){values$indicator = "Overweight"}
                        else if (values$bmi < 19.78 && input$genderselect == "Male" && input$age_child == 6){values$indicator = "Overweight"}
                        else if (values$bmi < 20.63 && input$genderselect == "Male" && input$age_child == 7){values$indicator = "Overweight"}
                        else if (values$bmi < 21.60 && input$genderselect == "Male" && input$age_child == 8){values$indicator = "Overweight"}
                        else if (values$bmi < 22.77 && input$genderselect == "Male" && input$age_child == 9){values$indicator = "Overweight"}
                        else if (values$bmi < 24 && input$genderselect == "Male" && input$age_child == 10){values$indicator = "Overweight"}
                        else if (values$bmi < 25.10 && input$genderselect == "Male" && input$age_child == 11){values$indicator = "Overweight"}
                        else if (values$bmi < 26.02 && input$genderselect == "Male" && input$age_child == 12){values$indicator = "Overweight"}
                        else if (values$bmi < 26.84 && input$genderselect == "Male" && input$age_child == 13){values$indicator = "Overweight"}
                        else if (values$bmi < 27.63 && input$genderselect == "Male" && input$age_child == 14){values$indicator = "Overweight"}
                        else if (values$bmi < 28.30 && input$genderselect == "Male" && input$age_child == 15){values$indicator = "Overweight"}
                        else if (values$bmi < 28.88 && input$genderselect == "Male" && input$age_child == 16){values$indicator = "Overweight"}
                        else if (values$bmi < 29.41 && input$genderselect == "Male" && input$age_child == 17){values$indicator = "Overweight"}
                        else if (values$bmi < 30 && input$genderselect == "Male" && input$age_child == 18){values$indicator = "Overweight"}
                        
                        else if (values$bmi < 14.82 && input$genderselect == "Female" && input$age_child == 2){values$indicator = "Underweight"}
                        else if (values$bmi < 14.46 && input$genderselect == "Female" && input$age_child == 3){values$indicator = "Underweight"}
                        else if (values$bmi < 14.18 && input$genderselect == "Female" && input$age_child == 4){values$indicator = "Underweight"}
                        else if (values$bmi < 13.93 && input$genderselect == "Female" && input$age_child == 5){values$indicator = "Underweight"}
                        else if (values$bmi < 13.81 && input$genderselect == "Female" && input$age_child == 6){values$indicator = "Underweight"}
                        else if (values$bmi < 13.85 && input$genderselect == "Female" && input$age_child == 7){values$indicator = "Underweight"}
                        else if (values$bmi < 14.01 && input$genderselect == "Female" && input$age_child == 8){values$indicator = "Underweight"}
                        else if (values$bmi < 14.27 && input$genderselect == "Female" && input$age_child == 9){values$indicator = "Underweight"}
                        else if (values$bmi < 14.60 && input$genderselect == "Female" && input$age_child == 10){values$indicator = "Underweight"}
                        else if (values$bmi < 15.04 && input$genderselect == "Female" && input$age_child == 11){values$indicator = "Underweight"}
                        else if (values$bmi < 15.61 && input$genderselect == "Female" && input$age_child == 12){values$indicator = "Underweight"}
                        else if (values$bmi < 16.25 && input$genderselect == "Female" && input$age_child == 13){values$indicator = "Underweight"}
                        else if (values$bmi < 16.87 && input$genderselect == "Female" && input$age_child == 14){values$indicator = "Underweight"}
                        else if (values$bmi < 17.44 && input$genderselect == "Female" && input$age_child == 15){values$indicator = "Underweight"}
                        else if (values$bmi < 17.90 && input$genderselect == "Female" && input$age_child == 16){values$indicator = "Underweight"}
                        else if (values$bmi < 18.24 && input$genderselect == "Female" && input$age_child == 17){values$indicator = "Underweight"}
                        else if (values$bmi < 18.49 && input$genderselect == "Female" && input$age_child == 18){values$indicator = "Underweight"}
                        
                        else if (values$bmi < 18.01 && input$genderselect == "Female" && input$age_child == 2){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.55 && input$genderselect == "Female" && input$age_child == 3){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.27 && input$genderselect == "Female" && input$age_child == 4){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.14 && input$genderselect == "Female" && input$age_child == 5){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.33 && input$genderselect == "Female" && input$age_child == 6){values$indicator = "Normal weight"}
                        else if (values$bmi < 17.74 && input$genderselect == "Female" && input$age_child == 7){values$indicator = "Normal weight"}
                        else if (values$bmi < 18.34 && input$genderselect == "Female" && input$age_child == 8){values$indicator = "Normal weight"}
                        else if (values$bmi < 19.06 && input$genderselect == "Female" && input$age_child == 9){values$indicator = "Normal weight"}
                        else if (values$bmi < 19.85 && input$genderselect == "Female" && input$age_child == 10){values$indicator = "Normal weight"}
                        else if (values$bmi < 20.73 && input$genderselect == "Female" && input$age_child == 11){values$indicator = "Normal weight"}
                        else if (values$bmi < 21.67 && input$genderselect == "Female" && input$age_child == 12){values$indicator = "Normal weight"}
                        else if (values$bmi < 22.57 && input$genderselect == "Female" && input$age_child == 13){values$indicator = "Normal weight"}
                        else if (values$bmi < 23.33 && input$genderselect == "Female" && input$age_child == 14){values$indicator = "Normal weight"}
                        else if (values$bmi < 23.93 && input$genderselect == "Female" && input$age_child == 15){values$indicator = "Normal weight"}
                        else if (values$bmi < 24.36 && input$genderselect == "Female" && input$age_child == 16){values$indicator = "Normal weight"}
                        else if (values$bmi < 24.69 && input$genderselect == "Female" && input$age_child == 17){values$indicator = "Normal weight"}
                        else if (values$bmi < 24.99 && input$genderselect == "Female" && input$age_child == 18){values$indicator = "Normal weight"}
                        
                        else if (values$bmi < 19.81 && input$genderselect == "Female" && input$age_child == 2){values$indicator = "Overweight"}
                        else if (values$bmi < 19.36 && input$genderselect == "Female" && input$age_child == 3){values$indicator = "Overweight"}
                        else if (values$bmi < 19.15 && input$genderselect == "Female" && input$age_child == 4){values$indicator = "Overweight"}
                        else if (values$bmi < 19.17 && input$genderselect == "Female" && input$age_child == 5){values$indicator = "Overweight"}
                        else if (values$bmi < 19.65 && input$genderselect == "Female" && input$age_child == 6){values$indicator = "Overweight"}
                        else if (values$bmi < 20.51 && input$genderselect == "Female" && input$age_child == 7){values$indicator = "Overweight"}
                        else if (values$bmi < 21.57 && input$genderselect == "Female" && input$age_child == 8){values$indicator = "Overweight"}
                        else if (values$bmi < 22.81 && input$genderselect == "Female" && input$age_child == 9){values$indicator = "Overweight"}
                        else if (values$bmi < 24.11 && input$genderselect == "Female" && input$age_child == 10){values$indicator = "Overweight"}
                        else if (values$bmi < 25.42 && input$genderselect == "Female" && input$age_child == 11){values$indicator = "Overweight"}
                        else if (values$bmi < 26.76 && input$genderselect == "Female" && input$age_child == 12){values$indicator = "Overweight"}
                        else if (values$bmi < 27.76 && input$genderselect == "Female" && input$age_child == 13){values$indicator = "Overweight"}
                        else if (values$bmi < 28.57 && input$genderselect == "Female" && input$age_child == 14){values$indicator = "Overweight"}
                        else if (values$bmi < 29.11 && input$genderselect == "Female" && input$age_child == 15){values$indicator = "Overweight"}
                        else if (values$bmi < 29.43 && input$genderselect == "Female" && input$age_child == 16){values$indicator = "Overweight"}
                        else if (values$bmi < 29.69 && input$genderselect == "Female" && input$age_child == 17){values$indicator = "Overweight"}
                        else if (values$bmi < 30 && input$genderselect == "Female" && input$age_child == 18){values$indicator = "Overweight"}
                        
                        else  {values$indicator="Obese"}
                        
                        paste(values$indicator)
                }
        })
        
        
        # Display your BMI
        
        output$BMI_outcome <- renderText({
                if(input$Predict_BMI == 0) ""
                else
                        paste(values$bmi)
        })
        
        
        
        
        
        
})