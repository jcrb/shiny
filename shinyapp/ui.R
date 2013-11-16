library(shiny)

# exercice 1
# ----------
# # Define UI for miles per gallon application
# shinyUI(pageWithSidebar(
#   
#   # titre de l'application
#   headerPanel("Nombre de miles par Gallon"),
# 
#   sidebarPanel(),
#   
#   mainPanel()
# ))

# exercice 2
# ----------
  # Define UI for miles per gallon application
  shinyUI(pageWithSidebar(
    
    # titre de l'application
    headerPanel("Nombre de miles par Gallon"),
    
    # Sidebar avec des controles pour sélectionner les variables a afficher contre mpg
    # et pour spécifier si les valeurs aberrantes doivent être incluses
    sidebarPanel(
      selectInput("variable", "Variable:",
                  list("Cylindres" = "cyl", 
                       "Transmission" = "am", 
                       "Engrenages" = "gear")),
      
      checkboxInput("outliers", "Données aberrantes", FALSE)
    ),
    
    # Show the caption and plot of the requested variable against mpg
    mainPanel(
      h3(textOutput("caption")),
      
      plotOutput("mpgPlot")
    )
  ))
