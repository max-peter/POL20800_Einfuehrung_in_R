# Hausaufgabe 3_1

# Aufgabe 1
# Ziel: Umgang mit Matrizen üben
# Deine erste Station ist die Personalabteilung. Dort bearbeitest du das Gehalt der Mitarbeiter.

# a) Maximale Punktzahl: 3 Punkte
# Speichere eine Matrix, die so aussieht, in der Variable gehalt. Achte auf die richtige Benennung der Zeilen und Spalten.

#       Praktikant Mitarbeiter Chef
# Jahr 1        450        2250 4050
# Jahr 2       1050        2850 4650
# Jahr 3       1650        3450 5250

a<- c(450,2250,4050)
b<- c(1050,2850,4650)
c<- c(1650,3450,5250)
gehalt<-rbind(a,b,c)

colnames(gehalt)<-c("Praktikant","Mitarbeiter","Chef")
rownames(gehalt)<-c("Jahr 1","Jahr 2","Jahr 3")
# View(gehalt)

# b) Maximale Punktzahl: 3 Punkte
# Das Gehaltssystem für die Vertriebs-Abteilung wird vereinfacht. Kopiere die Matrix gehalt in die Variable gehalt_ver, mit folgendem Befehl.

gehalt_ver<-gehalt

# Führe dann folgende Änderungen an der Matrix gehalt_ver durch.
#     Setze alle Gehälter, die kleiner sind als 1500, auf 1000.
gehalt_ver[gehalt_ver<1500]<-1000

#     Setze alle Gehälter, die zwischen 1500 (eingeschlossen) und 4000 (ausgeschlossen) liegen auf 3000.
gehalt_ver[gehalt_ver>=1500&gehalt_ver<4000]<-3000

#     Setze alle Gehälter, die größer/gleich 4000 sind, auf 5000.
gehalt_ver[gehalt_ver>=4000]<-5000
# View(gehalt_ver)


# c) Maximale Punktzahl: 1 Punkt
# Die Firma beschließt, die Gehälter im kommenden Jahr um ein Siebtel zu erhöhen. Erstelle eine Matrix, in der die Gehälter aus der Variable gehalt um ein Siebtel erhöht sind (auf 3 Nachkommastellen gerundet) und speichere sie in der Variable gehalt_7.

gehalt_7<-gehalt
gehalt_7[]+gehalt_7[]/7
gehalt_7<-gehalt_7[]+gehalt_7[]/7
gehalt_7<-round(gehalt_7, 3)
# View(gehalt_7)

# d) Maximale Punktzahl: 1 Punkt
# Speichere das Element aus Spalte 1, Zeile 3 aus der Matrix gehalt_7 in der Variable d.
d<-gehalt_7[3,1]

# e) Maximale Punktzahl: 1 Punkt
# Speichere das Gehalt von Praktikanten im zweiten Jahr aus der Matrix gehalt_7 in der Variable e.
e<-gehalt_7["Jahr 2","Praktikant"]
# View(gehalt_7)