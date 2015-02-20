shinyUI(fluidPage(
    headerPanel("Predict car's miles per galon"),
    
    verticalLayout(
   
        mainPanel(
            h2('Introduction'),
            p('This application is to predict the miles per galon for your cars. 
              It takes two inputs:horsepower and weight. The model is buit by using the mtcars dataset. 
              The code to build the model is as below.'),
            code('lm(mpg ~ hp + wt, mtcars)'),          
            p('Type your value below and submit. Then check the result. Have fun!')
            ),
        inputPanel(
            
            h4('Input your value here:'),
            numericInput(inputId="text1", label = "Gross horsepower:", value=110),
            numericInput(inputId="text2", label = "Weight (lb/1000):",value=3.1)        
        ),
        mainPanel(
            submitButton('Submit'),
            h4('Output:'),
            p('Your hp is:'),
            textOutput('text1'),
            p('Your wt is:'),
            textOutput('text2'),
            p('The prediction of your miles per gallon is:'),
            textOutput('text3')
            )
        )
    )
)