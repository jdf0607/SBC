;;; ---------------------------------------------------------
;;; Ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology Ontologia.ttl
;;; :Date 29/11/2024 19:35:55

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
    (multislot estil
        (type STRING)
        (create-accessor read-write))
    (multislot any_de_creació
        (type INTEGER)
        (create-accessor read-write))
    (multislot relevancia
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
    (multislot relevancia
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
    (multislot porta_a
        (type INSTANCE)
        (create-accessor read-write))
    (multislot conté
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
    ([Diego_Velazquez] of Pintor
         (crea  [Las_Meninas])
    )

    ([Grup1] of Visitant
    )

    ([La_Gioconda] of Obra_de_Arte
    )

    ([La_nit_estrellada] of Obra_de_Arte
    )

    ([Las_Meninas] of Obra_de_Arte
    )

    ([Leonardo_Da_Vinci] of Pintor
         (crea  [La_Gioconda])
    )

    ([Sala1] of Sala
         (conté  [La_Gioconda] [La_nit_estrellada] [Las_Meninas])
    )

    ([VIncent_Van_GOgh] of Pintor
         (crea  [La_nit_estrellada])
    )

)
; -----------------------------------------
; -----------------------------------------
; ----------------  CODI  -----------------
; -----------------------------------------
; -----------------------------------------

; ------------------------------------
; 				  MAIN 
; ------------------------------------

;Modul Main
(defmodule Main (export ?ALL))

;Modul recopilació d'informació visitant
(defmodule recopilacio-informacio-visitant
	(import MAIN ?ALL)
	(export ?ALL)
)

;Modul de recopilació de restriccions del visitant
(defmodule recopilacio-informacio-usuari
	(import MAIN ?ALL)
	(export ?ALL)
)

;Modul d'Abstracció de dades
(defmodule abstaccio-dades
	(import MAIN ?ALL)
	(import recopilacio-informacio-visitant ?ALL)
	(import recopilacio-informacio-usuari ?ALL)
	(export ?ALL)
)

;Modul d'abstracció d'inferència
(defmodule inferir-dades
	(import MAIN ?ALL)
	(export ?ALL)
)

;Modul d'abstracció de sintesis
(defmodule sintesis
	(import MAIN ?ALL)
	(export ?ALL)
)

;Modul per imprimir la ruta (solución)
(defmodule imprimir-rutina
	(import MAIN ?ALL)
	(import recopilacio-informacio-visitant ?ALL)
	(import recopilacio-restriccions-visitant ?ALL)
	(import abstraccio-dades ?ALL)
	(import inferir-dades ?ALL)
	(import sintesis ?ALL)
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
            (binf ?resposta (read))
         )
    ?resposta
)

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
;funcio per a preguntes amb moltes opcions i associar-les a un index
(deffunction MAIN::pregunta-opcions (?pregunta $?respostes-posibles)
    (bind ?linia (format nil "%s" ?pregunta))
    (printout t ?linia crlf)
    (progn$ (?var ?respostes-posibles)
            (bind ?linia (format nil "  %d. %s" ?index ?var))
            (printout t ?linia crlf)
    )
    (bind ?resposta (pregunta-numero "Escull una opcio:" 1 (length$ ?respostes-posibles)))
	?resposta
)

;funcio per fer preguntes multiresposta amb index
(deffunction MAIN::pregunta-multiresposta (?pregunta $?opcions)
    (bind ?linia (format nil "%s" ?pregunta))
    (printout t ?linia crlf)
    (progn$ (?var ?opcions)
            (bind ?linia (format nil "  %d. %s" ?index ?var))
            (printout t ?linia crlf)
    )
    (format t "%s" "Respon amb els nombres associats a les teves respostes separts per un espai ")
    (bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?llista (create$))
    (progn$ (?var ?numeros)
        (if (and (integerp ?var) (and (>= ?var 0) (<= ?var (length$ ?opcions))))
            then
                (if (not (member$ ?var ?llista))
                    then (bind ?llista (insert$ ?llista (+ (length$ ?llista) 1) ?var))
                )
        )
    )
    (if (or(member$ 0 ?llista)(= (length$ ?llista) 0)) then (bind ?llista (create$ )))
    ?llista
)
;funcio per a trobar els elements  amb millor puntuacio
(deffunction trobar-maxim ($?llista)
	(bind ?maxim -1)
	(bind ?element nil)
	(progn$ (?actual $?llista)
		(bind ?actual (send ?actual get-puntuacio))
		(if (> ?actual ?maxim)
			then
			(bind ?maxim ?actual)
			(bind ?element ?actual)
		)
	)
	?element
)
;funcion para ordenar sales
(deffunction ordenar-sales ($?llista)
    (bind ?minim 6)
    	(bind ?element nil)
        (progn$ (?actual $?lista)
             (bind ?QuadreActual (send ?actual get-nomQuadre))
             (bind ?SalaActual (send ?QuadreActual get-Sala))
            (if (<= ?SalaActual ?minim)
                then
                (bind ?minim ?SalaActual)
                (bind ?elemento ?actual)
             )
         )
    	?elemento
    )
; --------------------------------------------------
; 				 MODUL RECOPILACIO 
; --------------------------------------------------


(defrule determinar-familia
    ?v <- (visita (familia ?f))
    (test (= ?f FALSE))
    =>
    (bind ?familia (pregunta-opcions "El grup és una família? (1: Sí, 2: No)" (create$ "Sí" "No")))
    (if (= ?familia 1) then (modify ?v (familia TRUE)) else (modify ?v (familia FALSE)))
)

(defrule establir-num-nens
    ?v <- (visita (num_nens ?))
    (test (> (visita (num_persones ?np)) 0))
    =>
    (bind ?nens (pregunta-numero "Quants nens hi ha al grup? " 0 ?np))
    (modify ?v (num_nens ?nens))
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
    (bind ?resp (pregunta-indice "Quin pintor va ser conegut pel seu estil surrealista?" ?tria))
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
; 				MODUL ABSTRACCIO
; --------------------------------------------------

(defrule crear-visitant
    ?vis <- (visita (?np num_persones) (?nn num_nens) (?fam familia) (?nd num_dies) (?hd hores_visita) (?nc nivell_cultural))
    (not instVisitant)
    =>
    (if (eq ?fam TRUE) then (make-instance instVisitant of Familia)
    else (if (eq ?np 1) then (make-instance instVisitant of Individu)
        else (if (> ?np 9) then (make-instance instVisitant of Grup_Gran)
            else (make-instance instVisitant of Grup_Petit))))
    ?vinst <- (object (is-a Visitant))
    (if (> ?nn 0) then (send ?vinst put-nens TRUE))
    (send ?vinst put-dies ?nd)
    (send ?vinst put-hores ?hd)
    (send ?vinst put-coneixement ?nc)
)

; --------------------------------------------------
; 				MODUL Inferencia 
; --------------------------------------------------


; --------------------------------------------------
; 			MODUL SINTESIS
; --------------------------------------------------


; --------------------------------------------------
; 			  MODUL IMPRIMIR RUTA
; --------------------------------------------------
