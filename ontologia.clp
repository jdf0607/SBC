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

(defrule MAIN::initialRule "recla inicial"
	(declare (salience 10))
	=>
	(printout t crlf)
	(printout t "--------------- Sistema de Recomenació de Rutes pel nostre Museu ---------------" crlf)
	(printout t crlf)
	(focus recopilacion-informacion-usuario)
)

; -----------------------------------------
; 				 TEMPLATES 
; -----------------------------------------


; --------------------------------------------------
; 					 FUNCIONS
; --------------------------------------------------
;funcio par a preguntar dades amb rang de valors
deffunction MAIN::pregunta-puntuacio(?pregunta ?limitInferior ?limitSuperior)
    (format t "%s (De %d hasta %d) " ?pregunta ?limitInferior ?limitSuperior)
    (bind ?resposta (read))
    (while (not(and(>= ?resposta ?limitInferior)(<= ?resposta ?limitSuperior))) do
        (format t "%s (De %d hasta %d) " ?pregunta ?limitInferior ?limitSuperior)
        (bind ?resposta (read))
     )
     ?resposta
)

;funcio per a preguntes amb moltes opcions
(deffunction MAIN::pregunta-opcions (?pregunta $?respostes-posibles)
    (bind ?linia (format nil "%s" ?pregunta))
    (printout t ?linia crlf)
    (progn$ (?var ?respostes-posibles)
            (bind ?linia (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linia crlf)
    )
    (bind ?resposta (pregunta-puntuacio "Escull una opcio:" 1 (length$ ?respostes-posibles)))
	?resposta
)
;funcio per a preguntes cerradas (si/no)
;funcio per a preguntes con respuestas limitadas a opciones numeradas
;funcio per a preguntes con respuestas limitadas a opciones no numeradas
;funcio per a trobar els elements  amb millor puntuacio
(deffunction trobar-maxim ($?llista)
	(bind ?maxim -1)
	(bind ?element nil)
	(progn$ (?actual $?llista)
		(bind ?actual (send ?actualc get-puntuacio))
		(if (> ?actual ?maxim)
			then
			(bind ?maxim ?actual)
			(bind ?element ?actual)
		)
	)
	?element
)
;funcion para ordenar salas
deffunction ordre-sales
; --------------------------------------------------
; 				 MODUL RECOPILACIO 
; --------------------------------------------------

; --------------------------------------------------
; 				MODUL ABSTRACCIO
; --------------------------------------------------

; --------------------------------------------------
; 				MODUL Inferencia 
; --------------------------------------------------


; --------------------------------------------------
; 			MODUL SINTESIS
; --------------------------------------------------


; --------------------------------------------------
; 			  MODUL IMPRIMIR RUTA
; --------------------------------------------------
