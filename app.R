
library(shiny)
library(dplyr)
library(DT)
library(ggplot2)
library(shinydashboard)
library(plotly)
# library(png) # For writePNG function
setwd("C:/Users/gokhan.usta/Desktop/gustaecemapp/")

ui <- fluidPage(
  titlePanel("Image output"),
  
  fluidRow(
    
    p(tags$mark("bu bir test" ), " TEST ÇALIŞMASI"),
    p(strong("bu bir test" ), " TEST ÇALIŞMASI"),
    
    # IMAGES
    
    hr(),
    
    h2("Images"),
    
    div(
      class = "container",
      column(width = 4, 
             img(class = "image-responsive", src = "hh.png", style = "width:200px:")
      ),
      column(width = 4,
             img(class = "image-responsive", src = "6.jpg", style = "width:200px:")
      ),
      column(width = 4)
      
    ),
    
    
    div(
      
      valueBoxOutput("calories"),
      valueBoxOutput("over_nutrient"),
      valueBoxOutput("rich_nutrient")
    ),
    
    div(

      column(
        4, 
        wellPanel(
          radioButtons("picture1", "Picture:",
                       c("chainring", "face"))
        )
      ),
      column(
        4, 
        wellPanel(
          radioButtons("picture2", "Picture:",
                       c("chainring", "face"))
        )
      ),
      column(
        4, 
        wellPanel(
          radioButtons("picture3", "Picture:",
                       c("chainring", "face"))
        )
      ),
      

    ),
    
    div(
      
      
      column(
        4, 
        wellPanel(
          imageOutput("image1"),
          imageOutput("image2"),
          tags$img(src='3.jpg', width='100px',height='100px')
        )
      ),
      
      # column(
      #   4, 
      #   wellPanel(
      #     imageOutput("image3"),
      #     imageOutput("image4")
      #   )
      # ),
      # 
      # column(
      #   4, 
      #   wellPanel(
      #     imageOutput("image5"),
      #     imageOutput("image6")
      #   )
      # )
    )
    
  )
  
)

server <- function(input, output, session) {
  
  # value boxes
  output$calories <- renderValueBox({
    valueBox(paste0(2556, "kcal"), 
             "Calories", icon = icon("fire"), color = "red")
  })
  output$over_nutrient <- renderValueBox({
    valueBox(paste0(2556, "kcal"), 
             "Calories", icon = icon("fire"), color = "yellow")
  })
  output$rich_nutrient <- renderValueBox({
    valueBox(paste0(2556, "kcal"), 
             "Calories", icon = icon("exclamation-triangle"), color = "green")
  })
  
  
  
  # image2 sends pre-rendered images
  output$image1<- renderImage({
    
    if (input$picture1 == "face") {
      list(
        src = "../gustaecemapp/6.jpg",
        # contentType = "image/jpg",
        alt = "Face"
      )
    } else if (input$picture1 == "chainring") {
      list(
        src = "../gustaecemapp/2.jpg",
        # filetype = "image/jpg",
        alt = "This is a chainring"
      )
    }
    
  }, deleteFile = FALSE)
}

shinyApp(ui, server)



