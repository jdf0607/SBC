;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia.ttl
;;; :Date 02/12/2024 20:30:18

(defclass Visitant
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot visita
        (type INSTANCE)
        (create-accessor read-write))
    (multislot topObjectProperty
        (type INSTANCE)
        (create-accessor read-write))
    (multislot coneixement
        (type INTEGER)
        (create-accessor read-write))
    (multislot dies
        (type INTEGER)
        (create-accessor read-write))
    (multislot hores
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Familia
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
    (multislot nens
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Grup
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
    (multislot nens
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Grup_Gran
    (is-a Grup)
    (role concrete)
    (pattern-match reactive)
)

(defclass Grup_Petit
    (is-a Grup)
    (role concrete)
    (pattern-match reactive)
)

(defclass Individu
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
)

(defclass Obra_de_Arte
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot any_de_creació
        (type INTEGER)
        (create-accessor read-write))
    (multislot estil
        (type STRING)
        (create-accessor read-write))
    (multislot temàtica
        (type STRING)
        (create-accessor read-write))
    (multislot època
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Pintor
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot crea
        (type INSTANCE)
        (create-accessor read-write))
    (multislot estil
        (type STRING)
        (create-accessor read-write))
    (multislot nacionalitat
        (type STRING)
        (create-accessor read-write))
    (multislot temàtica
        (type STRING)
        (create-accessor read-write))
    (multislot època
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Sala
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot conté
        (type INSTANCE)
        (create-accessor read-write))
    (multislot porta_a
        (type INSTANCE)
        (create-accessor read-write))
    (multislot estil
        (type STRING)
        (create-accessor read-write))
    (multislot temàtica
        (type STRING)
        (create-accessor read-write))
    (multislot època
        (type SYMBOL)
        (create-accessor read-write))
)

(definstances instances
    ([El_dinar_campestre] of Obra_de_Arte
         (any_de_creació  1863)
         (estil  "Impressionisme")
         (temàtica  "Vida quotidiana")
         (època  "XIX")
    )

    ([El_gronxador] of Obra_de_Arte
         (any_de_creació  1767)
         (estil  "Barroc tardà")
         (temàtica  "Vida quotidiana")
         (època  "XVIII")
    )

    ([El_jurament_dels_Horacis] of Obra_de_Arte
         (any_de_creació  1784)
         (estil  "Neoclassicisme")
         (temàtica  "Cultura grecoromana")
         (època  "XVIII")
    )

    ([El_rapte_de_Prosèrpina] of Obra_de_Arte
         (any_de_creació  1636)
         (estil  "Barroc")
         (temàtica  "Cultura grecoromana")
         (època  "XVII")
    )

    ([El_tres_de_maig_de_1808] of Obra_de_Arte
         (any_de_creació  1814)
         (estil  "Romanticisme")
         (temàtica  "Esdeveniments històrics")
         (època  "XIX")
    )

    ([Eugène_Delacroix] of Pintor
         (crea  [La_Llibertat_guiant_al_poble])
         (nacionalitat  "Francesa")
    )

    ([Francisco_de_Goya] of Pintor
         (crea  [El_tres_de_maig_de_1808])
         (nacionalitat  "Espanyola")
    )

    ([Jacques-Louis_David] of Pintor
         (crea  [El_jurament_dels_Horacis] [La_mort_de_Sòcrates])
         (nacionalitat  "Francesa")
    )

    ([Jean-Honoré_Fragonard] of Pintor
         (crea  [El_gronxador])
         (nacionalitat  "Francesa")
    )

    ([La_Llibertat_guiant_al_poble] of Obra_de_Arte
         (any_de_creació  1830)
         (estil  "Romanticisme")
         (temàtica  "Esdeveniments històrics")
         (època  "XIX")
    )

    ([La_Ronda_de_Nit] of Obra_de_Arte
         (any_de_creació  1642)
         (estil  "Barroc")
         (època  "XVII")
    )

    ([La_mort_de_Sòcrates] of Obra_de_Arte
         (any_de_creació  1787)
         (estil  "Neoclassicisme")
         (època  "XVIII")
    )

    ([Les_Menines] of Obra_de_Arte
         (any_de_creació  1656)
         (estil  "Barroc")
         (temàtica  "Vida quotidiana")
         (època  "XVII")
    )

    ([Peter_Paul_Rubens] of Pintor
         (crea  [El_rapte_de_Prosèrpina])
         (nacionalitat  "Flamenca")
    )

    ([Rembrandt_van_Rijn] of Pintor
         (crea  [La_Ronda_de_Nit])
         (nacionalitat  "Holandesa")
    )

    ([Sala2] of Sala
         (conté  [El_dinar_campestre] [El_gronxador] [Les_Menines])
         (porta_a  [Sala3] [Sala4] [Sala1])
         (temàtica  "Vida quptidiana")
    )

    ([Sala3] of Sala
         (conté  [El_jurament_dels_Horacis] [El_rapte_de_Prosèrpina] [La_mort_de_Sòcrates])
         (porta_a  [Sala2] [Sala4] [Sala1])
         (temàtica  "Cultura grecoromana")
    )

    ([Sala4] of Sala
         (conté  [El_tres_de_maig_de_1808])
         (porta_a  [Sala2] [Sala3] [Sala1])
         (temàtica  "Esdeveniments històrics")
    )

    ([Vincent_Van_Gogh] of Pintor
         (crea  [La_nit_estrellada])
         (nacionalitat  "Holandesa")
    )

    ([Édouard_Manet] of Pintor
         (crea  [El_dinar_campestre])
         (nacionalitat  "Francesa")
    )

    ([Diego_Velazquez] of Pintor
         (crea  [Les_Menines])
         (nacionalitat  "Espanyola")
    )

    ([La_nit_estrellada] of Obra_de_Arte
         (any_de_creació  1889)
         (estil  "Postimpressionisme")
         (època  "XIX")
    )

    ([Sala1] of Sala
         (conté  [La_Ronda_de_Nit] [La_nit_estrellada])
         (porta_a  [Sala2] [Sala3] [Sala4])
         (temàtica  "Paisatges i emocions")
    )

)

; -----------------------------------------
; -----------------------------------------
; ----------------  CODI  -----------------
; -----------------------------------------
; -----------------------------------------

;;
;; Clases personalitzades
;;
;; PER ABSTRACCIO
(defclass VisitantAbstracte
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot aficio
        (type STRING)
        (create-accessor read-write))
    (slot gust
        (type STRING)
        (create-accessor read-write))
)
;;PER INFERÈNCIA
(defclass SolucioAbstracte
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot obresRecomenades
        (type INSTANCE)
        (create-accessor read-write))
)
;;PER REFINAMENT
(defclass SolucioConcreta
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot obresRecomenades
        (type INSTANCE)
        (create-accessor read-write))
    (slot tempsTotal
        (type INTEGER)
        (create-accessor read-write))
)
; ------------------------------------
; 				  MAIN 
; ------------------------------------

;Modul Main
(defmodule MAIN 
    (export ?ALL)
)

(defrule MAIN::inici 
	(declare (salience 20)) 
	=> 
	(focus recopilacio-informacio-visitant)
)
;Modul recopilació d'informació visitant
(defmodule recopilacio-informacio-visitant
	(import MAIN ?ALL)
	(export ?ALL)
)

;Modul d'Abstracció de dades
(defmodule abstraccio-dades
	(import MAIN ?ALL)
	(import recopilacio-informacio-visitant ?ALL)
	(export ?ALL)
)

(defrule abstraccio-dades::canvi-inferir-dades
	(declare (salience -1))
	=> 
	(focus inferir-dades)
)


;Modul d'abstracció d'inferència
(defmodule inferir-dades
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule inferir-dades::canvi_refinament
    (declare (salience -1))
    =>
    (focus refinament)
)

;Modul d'abstracció de sintesis
(defmodule refinament
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule refinament::canvi-imprimir-rutina
    (declare (salience -1))
    =>
    (focus imprimir-rutina)
)

;Modul per imprimir la ruta (solución)
(defmodule imprimir-rutina
	(import MAIN ?ALL)
	(import recopilacio-informacio-visitant ?ALL)
	(import abstraccio-dades ?ALL)
	(import inferir-dades ?ALL)
	(import refinament ?ALL)
	(export ?ALL)
)

(defrule MAIN::initialRule "regla inicial"
	(declare (salience 10))
	=>
	(printout t crlf)
	(printout t "--------------- Sistema de Recomanació de Rutes pel Museu ---------------" crlf)
	(printout t crlf)
	(focus recopilacion-informacion-usuario)
)

; -----------------------------------------
; 				 TEMPLATES 
; -----------------------------------------

(deftemplate visita
    (slot num_persones (type INTEGER) (default 1))
    (slot familia (type SYMBOL) (allowed-values TRUE FALSE) (default FALSE))
    (slot num_nens (type INTEGER) (default 0))
    (slot num_dies (type INTEGER) (default 1))
    (slot hores_visita (type INTEGER) (default 4))
    (multislot preferencies (type INSTANCE))
    (slot nivell_cultural (type FLOAT) (default 5.0))
)

; Potser es necessitaria una classe per definir el recorregut d'una visita.
(deftemplate recorregut_sala
    (multislot quadres (type INSTANCE))
)

(deftemplate recorregut_museu
    (multislot sales (type INSTANCE))
)

; --------------------------------------------------
; 					 FUNCIONS
; --------------------------------------------------
;funcio per a preguntar dades obertes (per exemple: el nom)
(deffunction preguntar_dades (?pregunta)
    (format t "%s" ?pregunta)
        (bind ?resposta (read))
        (while (not (lexemep ?resposta)) do
            (format t "%s " ?pregunta)
            (bind ?resposta (read))
         )
    ?resposta
)

(deffunction member
   (?element $?list)
   (if (member$ ?element ?list) then TRUE else FALSE))


;funcio par a preguntar dades amb rang de valors per exemple: valoracio de quadre o edat
(deffunction MAIN::pregunta-numero(?pregunta ?limitInferior ?limitSuperior)
    (format t "%s (De %d hasta %d) " ?pregunta ?limitInferior ?limitSuperior)
    (bind ?resposta (read))
    (while (not(and(>= ?resposta ?limitInferior)(<= ?resposta ?limitSuperior))) do
        (format t "%s (De %d hasta %d) " ?pregunta ?limitInferior ?limitSuperior)
        (bind ?resposta (read))
     )
     ?resposta
)
;funcio per a preguntes amb moltes opcions i associar-les a un index
(deffunction MAIN::pregunta-opcions (?pregunta $?respostes-posibles)
    (bind ?linia (format nil "%s" ?pregunta))
    (printout t ?linia crlf)
    (bind ?index 1) 
    (progn$ (?var ?respostes-posibles)
            (bind ?linia (format nil "  %d. %s" ?index ?var))
            (printout t ?linia crlf)
            (bind ?index (+ ?index 1))
    )
    (bind ?resposta (pregunta-numero "Escull una opcio:" 1 (length$ ?respostes-posibles)))
	?resposta
)
;funcio per a preguntes tancades (si/no)
(deffunction MAIN::pregunta-tancada (?pregunta)
   (bind ?response (pregunta-opcions ?pregunta si no))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)
;funcio per a preguntes amb opcions textuals limitades
(deffunction MAIN::pregunta-limitada (?pregunta $?opcions)
   (format t "%s "?pregunta)
   (progn$ (?actual $?opcions)
       (format t "[%s]" ?actual)
   )
   (printout t ": ")
   (bind ?answer (read))
   (if (lexemep ?resposta)
       then (bind ?resposta (lowcase ?answer)))
   (while (not (member ?resposta ?opcions)) do
      (format t "%s "?pregunta)
     (progn$ (?actual $?opcions)
       (format t "[%s]" ?actual)
     )
     (printout t ": ")
     (bind ?resposta (read))
     (if (lexemep ?answer)
         then (bind ?answer (lowcase ?resposta))))
  ?resposta
)


;funcio per fer preguntes multiresposta amb index
(deffunction MAIN::pregunta-multiresposta (?pregunta $?opcions)
  
   (bind ?linia (format nil "%s" ?pregunta))
   (printout t ?linia crlf)

   (bind ?index 1) 
   (foreach ?opcio $?opcions
      (bind ?linia (format nil "  %d. %s" ?index ?opcio))
      (printout t ?linia crlf)
      (bind ?index (+ ?index 1)) 
   )

   (format t "%s" "Respon amb els nombres associats a les teves respostes separats per un espai: ")
   (bind ?resp (readline)) 

   (bind ?numeros (explode$ ?resp))  
   ?numeros
)


;funcio per a trobar els elements  amb millor puntuacio
(deffunction trobar-maxim ($?llista)
	(bind ?maxim -1)
	(bind ?element nil)
	(foreach ?actual $?llista
      (bind ?puntuacio (send ?actual get-puntuacio))
      (if (> ?puntuacio ?maxim)
         then
            (bind ?maxim ?puntuacio)
            (bind ?element ?actual)
      )
   )
   ?element
)



;funcion para ordenar sales
(deffunction MAIN::ordenar-sales ($?llista)
   (bind ?minim 4) 
   (bind ?element nil)

   (foreach ?actual $?llista
      (bind ?QuadreActual (send ?actual get-nomQuadre))
      (bind ?SalaValor (send ?QuadreActual get-Sala))

      (if (<= ?SalaValor ?minim)  
         then
            (bind ?minim ?SalaValor) 
            (bind ?element ?actual)))  

   ?element)




; --------------------------------------------------
; 				 MODUL RECOPILACIO 
; --------------------------------------------------


(defrule determinar-familia
    ?v <- (visita (familia ?f))
    (test (or (eq ?f FALSE) (eq ?f TRUE)))
    =>
    (bind ?familia (pregunta-opcions "El grup és una família? (1: Sí, 2: No)" (create$ "Sí" "No")))
    (if (= ?familia 1) then (modify ?v (familia TRUE)) else (modify ?v (familia FALSE)))
)

(defrule establir-num-nens
    ?v <- (visita (num_nens ?))
    ;(test (> (visita (num_persones ?np)) 0))
    =>
    (bind ?np (fact-slot-value ?v num_persones))
    (if (> ?np 0) then
        (bind ?nens (pregunta-numero "Quants nens hi ha al grup? " 0 ?np))
        (modify ?v (num_nens ?nens))
    else
        (printout t "Error: El número de persones ha de ser més gran que 0." crlf)
    )
)

(defrule establir-duracio-visita
    ?v <- (visita (num_dies ?d) (hores_visita ?h))
    (test (or (< ?d 1) (< ?h 1)))
    =>
    (bind ?dies (pregunta-numero "Quants dies durarà la visita? " 1 15))
    (bind ?hores (pregunta-numero "Quantes hores per dia dedicarà a la visita? " 1 8))
    (modify ?v (num_dies ?dies) (hores_visita ?hores))
)

(defrule calcular-nivell-cultural
    ?v <- (visita (nivell_cultural ?n))
    (test (< ?n 0))
    =>
    (bind ?puntuacio 0.0)
    (bind ?format (create$ "Sí" "No"))

    (bind ?resp (pregunta-opcions "Coneixes 'El Grito' de Munch?" ?format))
    (if (= ?resp 1) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?resp (pregunta-opcions "Coneixes 'Las Meninas' de Velázquez?" ?format))
    (if (= ?resp 1) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?resp (pregunta-opcions "Coneixes 'El Greco' de Goya?" ?format))
    (if (= ?resp 1) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?resp (pregunta-opcions "Coneixes 'La Gioconda' de Da Vinci?" ?format))
    (if (= ?resp 1) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?resp (pregunta-opcions "Coneixes 'La Nit Estrellada' de Van Gogh?" ?format))
    (if (= ?resp 1) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?tria (create$ "Klimt" "Tiziano" "Yanyez" "El Greco"))
	(bind ?resp (pregunta-opcions "Qui va pintar el quadre 'El Beso'?" ?tria))
	(if (= ?resp 1) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?tria (create$ "El Greco." "Francisco de Goya." "Diego Velazquez."))
	(bind ?resp (pregunta-opcions "¿Qui va pintar el quadre 'Las Hilanderas'?" ?tria))
	(if (= ?resp 3) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?tria (create$ "La Pietà" "David" "El Moisès" "Venus de Milo"))
    (bind ?resp (pregunta-opcions "Quina obra és de Miquel Àngel?" ?tria))
    (if (= ?resp 2) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?tria (create$ "Pablo Picasso" "Salvador Dalí" "Marc Chagall" "Henri Matisse"))
    (bind ?resp (pregunta-opcions "Qui va pintar 'Gernika'?" ?tria))
    (if (= ?resp 1) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    (bind ?tria (create$ "Salvador Dalí" "Vincent van Gogh" "Claude Monet" "Frida Kahlo"))
    (bind ?resp (pregunta-opcions "Quin pintor va ser conegut pel seu estil surrealista?" ?tria))
    (if (= ?resp 1) then (bind ?puntuacio (+ 10.0 ?puntuacio)))

    ;; Afegegir més preguntes si fa falta


    (modify ?v (nivell_cultural (/ ?puntuacio 10.0)))
)


(defrule passar-a-preferencies
    ?v <- (visita (num_persones ?np) (nivell_cultural ?nc) (num_dies ?d) (hores_visita ?h))
    (test (and (> ?np 0) (> ?nc 0) (> ?d 0) (> ?h 0)))
    =>
    (printout t "Passant al mòdul de preferències..." crlf)
    (focus preferencies)
)



; --------------------------------------------------
; 				MODUL ABSTRACCIO - Ramóm
; --------------------------------------------------

; (defrule crear-visitant
;     ?vis <- (visita (?np num_persones) (?nn num_nens) (?fam familia) (?nd num_dies) (?hd hores_visita) (?nc nivell_cultural))
;     (not instVisitant)
;     =>
;     (if (eq ?fam TRUE) then (make-instance instVisitant of Familia)
;     else (if (eq ?np 1) then (make-instance instVisitant of Individu)
;         else (if (> ?np 9) then (make-instance instVisitant of Grup_Gran)
;             else (make-instance instVisitant of Grup_Petit))))
;     ?vinst <- (object (is-a Visitant))
;     (if (> ?nn 0) then (send ?vinst put-nens TRUE))
;     (send ?vinst put-dies ?nd)
;     (send ?vinst put-hores ?hd)
;     (send ?vinst put-coneixement ?nc)
; )

; --------------------------------------------------
; 				MODUL Inferencia - José
; --------------------------------------------------


; --------------------------------------------------
; 			MODUL SINTESIS - Aleix
; --------------------------------------------------


; --------------------------------------------------
; 			  MODUL IMPRIMIR RUTA - Ramón
; --------------------------------------------------

