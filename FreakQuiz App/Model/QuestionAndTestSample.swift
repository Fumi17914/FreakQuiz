//
//  QuestionAndTestSample.swift
//  FreakQuiz App
//
//  Created by Jose Fumanal Quintana on 22/7/21.
//

import Foundation

class QuestionsAndTestSample {
    
    var questions: [Question] = [
     
        Question(id: 0, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuándo salió el primer juego de The Last of Us?", options: ["2010", "2013", "2011", "2012"], answer: 1),
     
        Question(id: 1, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Qué fenómeno hace que los enemigos caídos vuelvan de entre los muertos más fuertes en The Legend of Zelda: Breath of the Wild?", options: ["Luna carmesí","Eclipse de los muertos","Luna de sangre","Resurrección lunar"], answer: 0),
     
        Question(id: 2, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cómo se llama el hijo de Kratos?", options: ["Baldur", "Floki", "Atreus", "Brok"], answer: 2),
     
        Question(id: 3, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Quién escribió El Código Da Vinci?", options: ["Ridley Scott", "Michael Connelly", "Dan Brown", "Jo Nesbo"], answer: 2),
     
        Question(id: 4, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Qué famoso escritor afirmó no acordarse de haber escrito muchas de sus obras debido a las drogas?", options: ["Juri Adler Olsen", "Stephen King", "Neil Gaiman", "Edgar Allan Poe"], answer: 1),
     
        Question(id: 5, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cómo se llama la última parte de la Saga Crepúsculo que es narrada desde el punto de vista de Edward?", options: ["Sol de Media Noche", "Amanecer", "Eclipse", "Antes de la Tormenta"], answer: 0),
     
        Question(id: 6, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cómo le llama Ramsay a Theon?", options: ["Hodor", "Harapiento", "Eunuco", "Hediondo"], answer: 3),
     
        Question(id: 7, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuál fue la primera película de Disney?", options: ["Pinocho", "El Rey León", "La Cenicienta", "Blancanieves"], answer: 3),
     
        Question(id: 8, mode: Question.Mode(rawValue: 0) ?? .easy, question: "Cómo se llama el director de la trilogía de El Señor de los Anillos?", options: ["Alfonso Cuarón", "George Lucas", "Peter Jackson", "Guillermo del Toro"], answer: 2),
     
        Question(id: 9, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cómo se llama la hermana gemela de Phoebe en Friends?", options: ["Ursula","Janice","Monica","Rachel"], answer: 0),
     
        Question(id: 10, mode: Question.Mode(rawValue: 0) ?? .easy, question: "Cuenta con mi espada, y con mi arco...", options: ["y con mi lealtad", "y con mi lanza", "y con mi hacha", "y con mi vara"], answer: 2),
     
        Question(id: 11, mode: Question.Mode(rawValue: 0) ?? .easy, question: "En el Universo DC, ¿cuál es el nombre de pila del Dr. Strange?", options: ["Hugo", "Stephen", "Steve", "Bruce"], answer: 0),
     
        Question(id: 12, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cómo se llama el segundo hijo adoptivo de Bruce Wayne?", options: ["Dick Grayson", "Damian Al Ghul", "Jason Todd", "Tim Drake"], answer: 2),
     
        Question(id: 13, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Qué famoso escritor creó al Detective Harry Bosch?", options: ["John Verdon", "Michael Connelly", "Dan Brown", "Jo Nesbo"], answer: 1),
     
        Question(id: 14, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuál fue la primera novela publicada de la saga de Robert Langdon?", options: ["Fortaleza Digital", "El Código Da Vinci", "El Símbolo Perdido", "Ángeles y Demonios"], answer: 3),
     
        Question(id: 15, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿En qué momento se transforma Goku en Super Saiyan 3?", options: ["Contra Freezer", "Contra Celula", "Contra los Androides", "Contra Buu"], answer: 3),
     
        Question(id: 16, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Quién es El Príncipe Mestizo?", options: ["Severus Snape", "Harry Potter", "Draco Malfoy", "Neville Longbottom"], answer: 0),
     
        Question(id: 17, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuánto suman los horrocruxes más als reliquias de la muerte?", options: ["11","10","9","8"], answer: 1),
     
        Question(id: 18, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuál es el nombre de la espada antes conocida como Narsil?", options: ["Glamdring", "Dardo", "Anduril", "Tauriel"], answer: 2),
     
        Question(id: 19, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuántas gemas del infinito hay?", options: ["5", "6", "4", "7"], answer: 1),
     
        Question(id: 20, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Qué representa la Trifuerza en The Legend of Zelda?", options: ["Poder, Honor, Valor", "Honor, Respeto, Determianción", "Poder, Sabiduría, Valor", "Valentía, Coraje, Valor"], answer: 2),
     
        Question(id: 21, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cómo se llama el primer juego en el que sale Mario?", options: ["Super Mario Bros", "Super Mario 64", "The Legend of Zelda", "Donkey Kong"], answer: 3),
     
        Question(id: 22, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cómo se llama el personaje de Metroid Prime?", options: ["Samus Aran", "Metroid Hero", "Coronel Orpheon", "Ridley"], answer: 0),
     
        Question(id: 23, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cómo se llama el profesor/a de Artes Oscuras en Harry Potter: La Cámara Secreta?", options: ["Minerva McGonagall", "Gilderoy Lockhart", "Severus Snape", "Remus Lupin"], answer: 1),
     
        Question(id: 24, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuántos personajes componen La Compañía/Comunidad del Anillo?", options: ["6", "7", "8", "9"], answer: 2),
     
        Question(id: 25, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿De qué raza es Trancos, personaje de El Señor de los Anillos?", options: ["Hombre", "Elfo de los Bosques", "Enano", "Dunedain"], answer: 3),
     
        Question(id: 26, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Quién enciende las almenaras de Minas Tirith?", options: ["Pippin", "Merry", "Gandalf", "Faramir"], answer: 0),
     
        Question(id: 27, mode: Question.Mode(rawValue: 0) ?? .easy, question: "Las almenaras de Minas Tirth, las almenaras arden; Gondor pide auxilio...", options: ["Preparaos para la batalla!", "Y Rohan responderá!", "Rohirrim, a la guerra!", "Al combate, Rohirrim!"], answer: 1),
     
        Question(id: 28, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Qué personaje de DC Comics cambió el nombre de Captain Marvel debido a conflictos con Marvel Comics?", options: ["Green Lantern", "Capitán ATOM", "Shazam", "Blue Beetle"], answer: 2),
     
        Question(id: 29, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿A qué año viaja McFly y Doc en Regreso al Futuro II?", options: ["2010", "2009", "2012", "2015"], answer: 3),
     
        Question(id: 30, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuál es el nombre real de Darth Vader?", options: ["Anakin Skywalker", "Luke Skywalker", "Sheev Palpatine", "Django Fett"], answer: 0),
     
        Question(id: 31, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuál es el nombre real de Darth Sidious?", options: ["Anakin Skywalker", "Luke Skywalker", "Sheev Palpatine", "Django Fett"], answer: 2),
     
        Question(id: 32, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuál es el verdadero nombre del Pingüino (Personaje de DC Comics)?", options: ["Edward Nashton", "Oswald Cobblepot", "Jack Napier", "Joe Chill"], answer: 1),
     
        Question(id: 33, mode: Question.Mode(rawValue: 0) ?? .easy, question: "¿Cuál/es de estos cómics son de Frank Miller?", options: ["Batman: Noel", "Batman: Victoria Oscura", "Batman: El Regreso del Caballero Oscuro", "Todas son correctas"], answer: 2),
     
        Question(id: 34, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Qué historia de Los Cuentos de Beedle el bardo se narra en Harry Potter: Las Reliquias de la Muerte?", options: ["La Fábula de los Tres Hermanos", "La Fuente de la Buena Fortuna", "Animales Fantásticos", "Quidditch a través de los Tiempos"], answer: 0),
     
        Question(id: 35, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Qué estudiante de Hogwarts murió por mirar fijamente al Basilisco?", options: ["Cedric", "Myrtel", "Grab", "Goyle"], answer: 1),
     
        Question(id: 36, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cómo se llama el padre de Eowyn?", options: ["Theoden", "Eomer", "Eomund", "Elrond"], answer: 2),
     
        Question(id: 37, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cuántos magos hay en la Tierra Media?", options: ["3", "4", "2", "5"], answer: 3),
     
        Question(id: 38, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Qué palabra abre las puertas de Moria?", options: ["Amigo", "Mellon", "Narsil", "Rohan"], answer: 1),
     
        Question(id: 39, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿De qué color fue el primer Hulk?", options: ["Amarillo", "Rojo", "Verde", "Gris"], answer: 3),
     
        Question(id: 40, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cada cuántos minutos tenían que pulsar la tecla en LOST?", options: ["48", "190", "108", "41"], answer: 2),
     
        Question(id: 41, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cuál es el planeta de Luke Skywalker?", options: ["Tatooine", "Naboo", "Alderaan", "Coruscant"], answer: 0),
     
        Question(id: 42, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cómo se llama la madre de Simba?", options: ["Nala", "Sarabi", "Minerva", "Miena"], answer: 1),
     
        Question(id: 43, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cuál es el verdadero nombre de Magneto?", options: ["John Logan", "Erik Magnium", "Charles Xavier", "Erik Lehnsherr"], answer: 3),
     
        Question(id: 44, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿En qué parte del castillo estaba la Rosa de La Bella y la Bestia?", options: ["Ala Norte", "Ala Este", "Ala Oeste", "Ala Sur"], answer: 2),
     
        Question(id: 45, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cuántos años está atrapado el genio en la lámpara en Aladín?", options: ["10.000", "1.000", "100.000", "1.000.000"], answer: 0),
     
        Question(id: 46, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿De qué Reino es princesa Giselle?", options: ["Corona", "Andalasia", "Arendelle", "Inglaterra"], answer: 1),
     
        Question(id: 47, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cómo se llama el caballo de Mérida?", options: ["Fergus", "Raudo", "Angus", "Maximus"], answer: 2),
     
        Question(id: 48, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿A qué trama de qué película se parece más Civil War II?", options: ["Efecto Mariposa", "La Máquina del Tiempo", "Terminator 2", "Minority Report"], answer: 3),
     
        Question(id: 49, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cuál es la obra más conocida de Lee Bermejo?", options: ["Batman: Noel", "Batman: Año Uno", "Batman: Largo Halloween", "Simon Dark"], answer: 0),
     
        Question(id: 50, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cuál es el nombre original del ángel caído?", options: ["Amenadiel", "Samael", "Uriel", "Gabriel"], answer: 1),
     
        Question(id: 51, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cuál es el verdadero nombre de Nathan Drake?", options: ["Nathan Sullivan", "Nathan Morris", "Nathan Morgan", "Nunca se dice"], answer: 2),
     
        Question(id: 52, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿En qué año se hundió el Titanic?", options: ["1911", "1910", "1908", "1912"], answer: 3),
     
        Question(id: 53, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿De que ciudad inglesa zarpa el Titanic hacia América", options: ["Southampton", "Liverpool", "Manchester", "Brighton"], answer: 0),
     
        Question(id: 54, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Dónde tuvo lugar la escena más romántica de Titanic, donde los protagonistas se aman por primera vez?", options: ["En el restaurante", "En un coche de época", "En la habitación de Rose", "En popa"], answer: 1),
     
        Question(id: 55, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cuántos años está por cumplir Rose cuando cuenta la historia?", options: ["100", "99", "101", "107"], answer: 2),
     
        Question(id: 56, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cómo se llama la marca de cigarrillos que siempre aparece en las películas de Tarantino?", options: ["Blue Jasper", "Green Acre", "Yellow Mist", "Red Apple"], answer: 3),
     
        Question(id: 57, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Cómo se llamaba el cine de Shosanna Dreyfus, donde quema a los nazis en Malditos Bastardos?", options: ["Le Gamaar", "Le Figaro", "Le Parisien", "Les Mièles"], answer: 0),
     
        Question(id: 58, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿En qué año salió Action Comics?", options: ["1939", "1938", "1941", "1940"], answer: 1),
     
        Question(id: 59, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿En qué año salió Detective Comics?", options: ["1938", "1940", "1937", "1941"], answer: 2),
     
        Question(id: 60, mode: Question.Mode(rawValue: 1) ?? .hard, question: "Cuál es el verdadero nombre de Once", options: ["Millie", "Dana", "Mary", "Jane"], answer: 3),
     
        Question(id: 61, mode: Question.Mode(rawValue: 1) ?? .hard, question: "En Flashpoint, ¿quiénes son Batman y Joker?", options: ["Thomas Wayne y Martha Wayne", "Jason Todd y Edward Nashton", "Comisario Gordon y Jack Napier", "Comisario Gordon y Barbara Gordon"], answer: 0),
     
        Question(id: 62, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Quién fue el primer Batman de la historia?", options: ["Cesar Romero", "Lewis Wilson", "Adam West", "Burt Ward"], answer: 1),
     
        Question(id: 63, mode: Question.Mode(rawValue: 1) ?? .hard, question: "¿Qué escritor/es creó al personaje de Harley Quinn?", options: ["Paul Dini", "Frank Miller", "Jeph Loeb y Tim Sale", "Paul Dini y Bruce Timm"], answer: 3),
        
        Question(id: 34, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Qué historia de Los Cuentos de Beedle el bardo se narra en Harry Potter: Las Reliquias de la Muerte?", options: ["La Fábula de los Tres Hermanos", "La Fuente de la Buena Fortuna", "Animales Fantásticos", "Quidditch a través de los Tiempos"], answer: 0),
     
        Question(id: 35, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Qué estudiante de Hogwarts murió por mirar fijamente al Basilisco?", options: ["Cedric", "Myrtel", "Grab", "Goyle"], answer: 1),
     
        Question(id: 36, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cómo se llama el padre de Eowyn?", options: ["Theoden", "Eomer", "Eomund", "Elrond"], answer: 2),
     
        Question(id: 37, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cuántos magos hay en la Tierra Media?", options: ["3", "4", "2", "5"], answer: 3),
     
        Question(id: 38, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Qué palabra abre las puertas de Moria?", options: ["Amigo", "Mellon", "Narsil", "Rohan"], answer: 1),
     
        Question(id: 39, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿De qué color fue el primer Hulk?", options: ["Amarillo", "Rojo", "Verde", "Gris"], answer: 3),
     
        Question(id: 40, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cada cuántos minutos tenían que pulsar la tecla en LOST?", options: ["48", "190", "108", "41"], answer: 2),
     
        Question(id: 41, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cuál es el planeta de Luke Skywalker?", options: ["Tatooine", "Naboo", "Alderaan", "Coruscant"], answer: 0),
     
        Question(id: 42, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cómo se llama la madre de Simba?", options: ["Nala", "Sarabi", "Minerva", "Miena"], answer: 1),
     
        Question(id: 43, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cuál es el verdadero nombre de Magneto?", options: ["John Logan", "Erik Magnium", "Charles Xavier", "Erik Lehnsherr"], answer: 3),
     
        Question(id: 44, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿En qué parte del castillo estaba la Rosa de La Bella y la Bestia?", options: ["Ala Norte", "Ala Este", "Ala Oeste", "Ala Sur"], answer: 2),
     
        Question(id: 45, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cuántos años está atrapado el genio en la lámpara en Aladín?", options: ["10.000", "1.000", "100.000", "1.000.000"], answer: 0),
     
        Question(id: 46, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿De qué Reino es princesa Giselle?", options: ["Corona", "Andalasia", "Arendelle", "Inglaterra"], answer: 1),
     
        Question(id: 47, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cómo se llama el caballo de Mérida?", options: ["Fergus", "Raudo", "Angus", "Maximus"], answer: 2),
     
        Question(id: 48, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿A qué trama de qué película se parece más Civil War II?", options: ["Efecto Mariposa", "La Máquina del Tiempo", "Terminator 2", "Minority Report"], answer: 3),
     
        Question(id: 49, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cuál es la obra más conocida de Lee Bermejo?", options: ["Batman: Noel", "Batman: Año Uno", "Batman: Largo Halloween", "Simon Dark"], answer: 0),
     
        Question(id: 50, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cuál es el nombre original del ángel caído?", options: ["Amenadiel", "Samael", "Uriel", "Gabriel"], answer: 1),
     
        Question(id: 51, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Cuál es el verdadero nombre de Nathan Drake?", options: ["Nathan Sullivan", "Nathan Morris", "Nathan Morgan", "Nunca se dice"], answer: 2),
     
        Question(id: 52, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿En qué año se hundió el Titanic?", options: ["1911", "1910", "1908", "1912"], answer: 3),
     
        Question(id: 53, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿De que ciudad inglesa zarpa el Titanic hacia América", options: ["Southampton", "Liverpool", "Manchester", "Brighton"], answer: 0),
     
        Question(id: 54, mode: Question.Mode(rawValue: 2) ?? .fast, question: "¿Dónde tuvo lugar la escena más romántica de Titanic, donde los protagonistas se aman por primera vez?", options: ["En el restaurante", "En un coche de época", "En la habitación de Rose", "En popa"], answer: 1),
     
        Question(id: 55, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "¿Cuántos años está por cumplir Rose cuando cuenta la historia?", options: ["100", "99", "101", "107"], answer: 2),
     
        Question(id: 56, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "¿Cómo se llama la marca de cigarrillos que siempre aparece en las películas de Tarantino?", options: ["Blue Jasper", "Green Acre", "Yellow Mist", "Red Apple"], answer: 3),
     
        Question(id: 57, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "¿Cómo se llamaba el cine de Shosanna Dreyfus, donde quema a los nazis en Malditos Bastardos?", options: ["Le Gamaar", "Le Figaro", "Le Parisien", "Les Mièles"], answer: 0),
     
        Question(id: 58, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "¿En qué año salió Action Comics?", options: ["1939", "1938", "1941", "1940"], answer: 1),
     
        Question(id: 59, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "¿En qué año salió Detective Comics?", options: ["1938", "1940", "1937", "1941"], answer: 2),
     
        Question(id: 60, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "Cuál es el verdadero nombre de Once", options: ["Millie", "Dana", "Mary", "Jane"], answer: 3),
     
        Question(id: 61, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "En Flashpoint, ¿quiénes son Batman y Joker?", options: ["Thomas Wayne y Martha Wayne", "Jason Todd y Edward Nashton", "Comisario Gordon y Jack Napier", "Comisario Gordon y Barbara Gordon"], answer: 0),
     
        Question(id: 62, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "¿Quién fue el primer Batman de la historia?", options: ["Cesar Romero", "Lewis Wilson", "Adam West", "Burt Ward"], answer: 1),
     
        Question(id: 63, mode: Question.Mode(rawValue: 3) ?? .thanos, question: "¿Qué escritor/es creó al personaje de Harley Quinn?", options: ["Paul Dini", "Frank Miller", "Jeph Loeb y Tim Sale", "Paul Dini y Bruce Timm"], answer: 3)
     
    ]
    
    var test: [String] = [
        
        "Quédate en ropa interior y haz 10 flexiones",
        "Intenta tocarte codo derecho con mano derecha, codo izquierdo con mano izquierda y morderte la oreja. Deja que te saquen una foto",
        "Acábate la copa",
        "Da un trago por cada persona con la que hayas tenido sexo",
        "Ponle la manos en la cara a cualquier jugador o jugadora, mírale a los ojos y dile que es repugnante",
        "Bebe dos tragos",
        "Dale un beso en la boca a la persona que tengas a la izquierda",
        "Bebe un trago por cada punto que tengas. Un máximo de 10 tragos",
        "Pega un trago por cada persona que haya en la sala",
        "Dale un beso a la persona más atractiva de la sala. Tú mismo no vales"
        
    ]
    
}
