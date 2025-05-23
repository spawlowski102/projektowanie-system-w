text <- "And so even though we face the difficulties of today and tomorrow, I still have a dream."
text
"And so even though we face the difficulties of today and tomorrow, I still have a dream."
freq_terms(text)

   frequent_terms <- freq_terms(text)
 frequent_terms
  plot(frequent_terms)
library(ggplot2)

  
  ggplot(frequent_terms, aes(x = WORD, y = FREQ)) +
       geom_bar(stat = "identity", fill = "skyblue")+ 
     labs(x = "S³owo", y = "Czêstoœæ") +
+      theme(axis.text.x = element_text(angle = 45, hjust = 1)) 
 +     ggtitle("Wykres czêstoœci s³ów")
 ggplot(frequent_terms, aes(y = WORD, x = FREQ))
  +  geom_bar(stat = "identity", fill = "skyblue") 
   + labs(x = "S³owo", y = "Czêstoœæ") 
    +  theme(axis.text.x = element_text(angle = 0, hjust = 1)) 
     + ggtitle("Wykres czêstoœci s³ów")
 ggplot(frequent_terms, aes(x = FREQ, y = reorder(WORD, FREQ))) 
     +geom_bar(stat = "identity", fill = "skyblue", color = "darkblue", alpha = 0.8) 
     +labs(x = "Czêstoœæ", y = "S³owo") 
     +ggtitle("Wykres czêstoœci s³ów")
      +theme_minimal() +
      theme(axis.text.y = element_text(size = 10), # Dostosowanie rozmiaru czcionki etykiet na osi Y
                       plot.title = element_text(hjust = 0.5, size = 16, face = "bold"), # Wyœrodkowanie i stylizacja tytu³u wykresu
                       panel.grid.major.y = element_blank(), # Usuniêcie g³ównych linii siatki poziomej
                       panel.grid.minor.y = element_blank(), # Usuniêcie mniejszych linii siatki poziomej
                   axis.line = element_line(color = "black")) # Dostosowanie linii osi

frequent_terms2 <- freq_terms(text, stopwords = Top25Words)
frequent_terms4 <- freq_terms(text, stopwords = Top200Words)
 plot(frequent_terms4)
