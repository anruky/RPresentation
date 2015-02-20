library(shiny)
library(datasets); require(stats); require(graphics);

fit <- lm(mpg ~ hp + wt, mtcars)

#y=predict(fit,newdata=data.frame(hp=110,wt=3))
#predict(fit,newdata=data.frame(hp=input$text1,wt=input$text2))
prt <- function(hp,wt) predict(fit,newdata=data.frame(hp=hp,wt=wt))
shinyServer(
    function(input, output) {
        output$text1 <- renderText({input$text1})
        output$text2 <- renderText({input$text2})
        output$text3 <- renderText({prt(input$text1,input$text2)})
    }
)



#setwd("/Users/gzhu/Desktop/Johns_Hopkins_Data_Science/9_Developing_data_products")
#library(shiny)
#runApp(display.mode='showcase')