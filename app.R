
library(shiny)
library(dplyr)
library(DT)
library(ggplot2)
library(shinydashboard)
library(plotly)
library(shinyjs)
library(shinyWidgets)

# UI ----

ui <- fluidPage(
  titlePanel("ECEM & GÖKHAN",windowTitle = "E&G"),
  
  fluidRow(
    
    # p(tags$mark("bu bir test" ), " TEST ÇALIŞMASI"),
    
    div(
      class = "jumbotron",
      class = "text-danger",
      h1(class= "text-center", "Gökhan's Love for Ecem"),
    ),
    
    tags$audio(src = "speech.mp3", type = "audio/mp3", 
               autoplay = TRUE, controls = TRUE),
    
    
    tags$audio(src = "music.mp3", type = "audio/mp3", 
               autoplay = TRUE, controls = TRUE),
    
## METİN ----
    
    div(

        class = "jumbotron",
        style = "background:url('20.jpg'); background-size:cover",
        # class = "text-danger",
        
        div(
          
          class = "container",
          style = "background-color:#eee9e98c;",
          
          
          p(class= "text-center", strong("Gökhan") ,"feels incredibly lucky to have", strong("Ecem") ,"in his life, 
          and every moment they spend together is special to him. He can't imagine his life without her, and his love for her grows stronger every day.
            When he's with" , strong("Ecem,") , strong("Gökhan"),  "feels like he's finally found his soulmate. He loves her kind heart, her sense of humor, and her unwavering support."),
          
          p(class= "text-center", "She's always there for him, through thick and thin, and he knows he can always count on her.", 
          strong("Gökhan's love for Ecem is unlike anything he's ever felt before. She brings so much joy and happiness into his life, 
          and he can't imagine spending a single day without her. He wants to spend the rest of his life with her, 
                 building a future filled with love, laughter, and adventure.")),
          p(class= "text-center", "To", strong("Gökhan"),",", strong("Ecem") ,"is not only his partner, but his best friend. 
            They share a deep connection that goes beyond just physical attraction.",
          "They truly understand and care for each other on a deeper level.", 
          strong("Gökhan"), "feels like he's found his other half in", strong("Ecem"), "and he can't wait to spend the rest of his life by her side.",
          strong("Gökhan loves Ecem with all of his heart."), 
        "She's the most important person in his life, and he can't imagine living without her.
        He wants to spend the rest of his days making her happy and building a life filled with
        love and happiness.",
        strong("Gökhan"), "is grateful every day for the love that he shares with" , strong("Ecem,"), "and he will always
        cherish and nurture their bond."),
          # class = "bg-danger"
        )

    ),

    

    
    
    hr(),
    
    br(),

# İLKLER / RAKAMLAR ----
    
    div(
      class = "container",
      class = "text-danger",
      # h1(class= "text-center", "İlklerimiz"),
      h1(class= "text-center", "Kaç gün geçti?")
    ),
    
    div(
      class = "container",
      column(
        width = 3,
        infoBoxOutput("box1")
      ),
      column(
        width = 3,
        infoBoxOutput("box2")
      ),
      column(
        width = 3,
        infoBoxOutput("box3")
      ),
      column(
        width = 3,
        infoBoxOutput("box4")
      )
      
    ),
    
    
    hr(),
    
    br(),

## SORULAR ----

    div(
      column(
        width = 3,
        
        wellPanel(
          p(class= "text-center", strong("İlk yemek yediğimiz günü hatırlıyor musun?")),
          p(class= "text-left", "İşte bu kadar gün geçti"),
          uiOutput("aa")
        ),
        
        wellPanel(
          style = "background:#acc2dd",
          dateInput("ilkgun", label = "Tarih Gir!"),
          imageOutput("image1")
        )
      ),
      
      column(
        width = 3,
        wellPanel(
          p(class= "text-center", strong("Peki ilk elele tutuştuğumuz gün?")),
          p(class= "text-left", "Basketbol maçına gitmiştik. Yağmur yağıyordu çıkışta:)"),
          uiOutput("bb")
        ),
        
        wellPanel(
          style = "background:#FED8B1",
          dateInput("ilkelele", label = "Tarih Gir!"),
          imageOutput("image2")
        )
      ),
      
      column(
        width = 3,
        wellPanel(
          p(class= "text-center", strong("Ya first kiss?")),
          p(class= "text-left", "Bu şarap şişelerini sağlam yapamıyorlar ya... &/%:+*)"),
          uiOutput("cc")
        ),
        
        wellPanel(
          style = "background:#8D918D",
          dateInput("kiss", label = "Tarih Gir!"),
          imageOutput("image3")
        )
      ),
      
      column(
        width = 3,
        wellPanel(
          p(class= "text-center", strong("İlk seni seviyorum dediğim gün harika değil miydi?")),
          p(class= "text-left", "I am not ACTING"),
          uiOutput("dd")
        ),
        
        wellPanel(
          style = "background:#DCD0FF",
          dateInput("love", label = "Tarih Gir!"),
          imageOutput("image4")
        )
      )
    ),

## PROPOSAL
    

    div(
      class = "jumbotron",
      class = "text-primary",
      class = "bg-danger",
      h2(class= "text-center", "Biliyor musun?"),
      
      h3(class= "text-center", "6 ayda", strong("3100"),"'ün üzerinde", strong("SENİ SEVİYORUM"), "yazmışız. :))"),
      # h3(class= "text-center", "4 ayda eve dönerken arabada 75'in üzerinde video çekerek yollamışım. E eve dönerken de aklımdasınki :))"),
      h3(class= "text-center", "Şimdiye kadar 1700'e yakın fotoğraf, 170'e yakın video paylaşmışız. :))")
      
    ),


    div(
      class = "jumbotron",
      # style = "background:url('20.jpg'); background-size:cover",
      
      tags$image(src = "20.jpg", type = "image/jpg", class = "img-rounded img-responsive"),
      class = "text-danger",
      
      div(
        
        class = "container",
        style = "background-color:#E5E4E2;",
        class = "text-danger",
        h1(class= "text-center", strong("CANIM AŞKIM")),
        h1(class= "text-center", strong("SENİ ÇOK SEVİYORUM")),
        h1(class= "text-center", strong("BENİMLE EVLENİR MİSİN?")),
        
        
        class = "bg-danger"
      )
      
    ),


## AFTER ----

div(
  

  column(
    width = 3,
    wellPanel(
      style = "background:#ACC2DD",
      class = "text-danger",
      h1(class= "text-center", strong("She")),
      imageOutput("image33")
    )
  ),
  column(
    width = 3,
    wellPanel(
      style = "background:#ACC2DD",
      class = "text-danger",
      h1(class= "text-center", strong("Said")),
      imageOutput("image32")
    )
  ),
  
  column(
    width = 3,
    wellPanel(
      style = "background:#ACC2DD",
      class = "text-danger",
      h1(class= "text-center", strong("YESSS")),
      imageOutput("image30")
    )
  ),

  column(
    width = 3,
    wellPanel(
      style = "background:#ACC2DD",
      class = "text-danger",
      h1(class= "text-center", strong(":)")),
      imageOutput("image35")
    )
  )
  
) ,



    div(
      class = "jumbotron",
      
      column(
        width = 9,
        h1(class= "text-center", strong("20 NİSAN 2023"))
        
      ),
      column(
        width = 3,
        infoBoxOutput("box5")
      ),
      
      # style = "background:url('31.jpg'); background-size:cover",

      tags$image(src = "31.jpg", type = "image/jpg", class = "img-rounded img-responsive"),
      class = "text-danger"
      
    ),
  
  )
  
)

# SERVER ----
server <- function(input, output, session) {

### İLKLER / RAKAMLAR ----
  
  output$box1 <- renderInfoBox({
    valueBox(Sys.Date()-as.Date("2022-09-09"),
             "İlk Gün", icon = icon("fire"), color = "red")
  })
  output$box2 <- renderInfoBox({
    valueBox(Sys.Date()-as.Date("2022-09-28"), 
             "Elele", icon = icon("heart"), color = "red")
  })
  output$box3 <- renderValueBox({
    valueBox(Sys.Date()-as.Date("2022-10-01"), 
             "KissKiss", icon = icon("fire"), color = "red")
  })
  output$box4 <- renderValueBox({
    valueBox(Sys.Date()-as.Date("2022-10-12"),  
             "Love", icon = icon("heart"), color = "red")
  })
  

## SORULAR ----
  
### İlk Gün ----
  
  output$aa <- renderUI(Sys.Date()-as.Date("2022-09-09"))
  
  observeEvent(input$ilkgun, {
    
    if(input$ilkgun == as.Date("2022-09-09")) {
      sendSweetAlert(
        session = session,
        title = "Seni çok seviyorum",
        text = "Hem de hergün daha fazla",
        type = "success"
      )
    } 
    
  })
  

  output$image1<- renderImage({
    
    if (input$ilkgun == as.Date("2022-09-09")) {
      list(
        class = "img-rounded img-responsive",
        src = "www/23.jpg",
        # width='200px',height='400px',
        # contentType = "image/jpg",
        alt = "Face"
      )
    } else {
      list(
        class = "img-rounded img-responsive",
        src = "www/9.jpg",
        # width='200px',height='400px',
        # filetype = "image/jpg",
        alt = "This is a chainring"
      )
    }
    
  }, deleteFile = FALSE)
  
  
### İlk Elele ----
  
  output$bb <- renderUI(Sys.Date()-as.Date("2022-09-28"))
  
  observeEvent(input$ilkelele, {
    
    if(input$ilkelele == as.Date("2022-09-28")) {
      sendSweetAlert(
        session = session,
        title = "Seni çok seviyorum",
        text = "Hem de hergün daha fazla",
        type = "success"
      )
    } 
    
  })
  
  
  output$image2<- renderImage({
    
    if (input$ilkelele == as.Date("2022-09-28")) {
      list(
        class = "img-rounded img-responsive",
        src = "www/21.jpg",
        # width='200px',height='400px',
        # contentType = "image/jpg",
        alt = "Face"
      )
    } else {
      list(
        class = "img-rounded img-responsive",
        src = "www/9.jpg",
        # width='200px',height='400px',
        # filetype = "image/jpg",
        alt = "This is a chainring"
      )
    }
    
  }, deleteFile = FALSE)
  
  
### Kiss ----
  
  output$cc <- renderUI(Sys.Date()-as.Date("2022-10-01"))
  
  observeEvent(input$kiss, {
    
    if(input$kiss == as.Date("2022-10-01")) {
      sendSweetAlert(
        session = session,
        title = "Seni çok seviyorum",
        text = "Sonsuza kadar hem de",
        type = "success"
      )
    } 
    
  })
  
  
  output$image3<- renderImage({
    
    if (input$kiss == as.Date("2022-10-01")) {
      list(
        class = "img-rounded img-responsive",
        src = "www/22.jpg",
        # width='200px',height='400px',
        # contentType = "image/jpg",
        alt = "Face"
      )
    } else {
      list(
        class = "img-rounded img-responsive",
        src = "www/9.jpg",
        # width='200px',height='400px',
        # filetype = "image/jpg",
        alt = "This is a chainring"
      )
    }
    
  }, deleteFile = FALSE)
  
  
### Love ----
  
  output$dd <- renderUI(Sys.Date()-as.Date("2022-10-12"))
  
  observeEvent(input$love, {
    
    if(input$love == as.Date("2022-10-12")) {
      sendSweetAlert(
        session = session,
        title = "Seni çok seviyorum",
        text = "İyiki varsın <3",
        type = "success"
      )
    } 
    
  })
  
  
  output$image4<- renderImage({
    
    if (input$love == as.Date("2022-10-12")) {
      list(
        class = "img-rounded img-responsive",
        src = "www/10.jpg",
        # width='200px',height='400px',
        # contentType = "image/jpg",
        alt = "Face"
      )
    } else {
      list(
        class = "img-rounded img-responsive",
        src = "www/9.jpg",
        # width='200px',height='400px',
        # filetype = "image/jpg",
        alt = "This is a chainring"
      )
    }
    
  }, deleteFile = FALSE)
  
  
  # observeEvent(input$q1, {
  # 
  #   if(input$q1 == "Acting") {
  #     sendSweetAlert(
  #       session = session,
  #       title = "Success !!",
  #       text = "All in order",
  #       type = "success"
  #     )
  #   } else {
  #     sendSweetAlert(
  #       session = session,
  #       title = "Error...",
  #       text = "Oups !",
  #       type = "error"
  #     )
  #   }
  # 
  # })
  
  
  output$image30<- renderImage({
      list(
        class = "img-rounded img-responsive",
        src = "www/30.jpg",
        # width='200px',height='400px',
        # contentType = "image/jpg",
        alt = "Face"
      )
  }, deleteFile = FALSE)
  
  output$image32<- renderImage({
    list(
      class = "img-rounded img-responsive",
      src = "www/32.jpg",
      # width='200px',height='400px',
      # contentType = "image/jpg",
      alt = "Face"
    )
  }, deleteFile = FALSE)
  
  output$image33<- renderImage({
    list(
      class = "img-rounded img-responsive",
      src = "www/33.jpg",
      # width='200px',height='400px',
      # contentType = "image/jpg",
      alt = "Face"
    )
  }, deleteFile = FALSE)
  
  output$image35<- renderImage({
    list(
      class = "img-rounded img-responsive",
      src = "www/35.jpg",
      # width='200px',height='400px',
      # contentType = "image/jpg",
      alt = "Face"
    )
  }, deleteFile = FALSE)
  
  
  output$box5<- renderValueBox({
    valueBox(Sys.Date()-as.Date("2023-04-20"),  
             "days to eternity", color = "red")
  }, deleteFile = FALSE)

}

shinyApp(ui, server)



