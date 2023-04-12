library(shiny)
library(shinyjs)

ui <- fluidPage(
  useShinyjs(),
  titlePanel("Photo and Video Player"),
  
  sidebarLayout(
    sidebarPanel(
      h4("Select a number:"),
      radioButtons("num_select", "Number:",
                   choices = c(1, 2, 3, 4, 5),
                   selected = 1),
      
    ),
    
    mainPanel(
      img(src = "", id = "photo", height = 600, width = 800),
      tags$video(id = "video", type = "video/mp4", controls = "controls", height = 300, width = 400)
    )
  )
)

server <- function(input, output, session) {
  
  observe({
    if (input$num_select == 1) {
      shinyjs::show("photo")
      shinyjs::hide("video")
      output$photo <- renderImage({
        list(src = "../gustaecemapp/www/gg.jpg",
             height = "600",
             width = "800")
      }, deleteFile = FALSE)
    } else {
      shinyjs::hide("photo")
      shinyjs::show("video")
      output$video <- renderUI({
        tags$source(src = "../gustaecemapp/www/Yeni video1.mp4", type = "video/mp4")
      })
    }
    
    if (input$num_select == 2) {
      shinyjs::show("photo")
      shinyjs::hide("video")
      output$photo <- renderImage({
        list(src = "../gustaecemapp/www/gg.jpg",
             height = "300",
             width = "400")
      }, deleteFile = FALSE)
    } else {
      shinyjs::hide("photo")
      shinyjs::show("video")
      output$video <- renderUI({
        tags$source(src = "../gustaecemapp/www/Yeni video1.mp4", type = "video/mp4")
      })
    }
    
    # Repeat the above if-else blocks for the other radio button selections (3-5).
    # Make sure to replace the URLs with your own photo and video URLs.
    
  })
}

shinyApp(ui, server)