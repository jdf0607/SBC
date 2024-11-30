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

;funcio par a preguntar dades amb rang de valors (per exemple: valoració de quadre o edat)
deffunction MAIN::pregunta-numero(?pregunta ?limitInferior ?limitSuperior)
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
(deffunction MAIN::pregunta-limitada ?pregunta $?opcions)
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
deffunction ordenar-sales ($?llista)
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

; Funció per recopilar totes les obres d'art disponibles
(deffunction recopilar-obres ()
    (bind ?obres (find-all-facts ((?f Obra_de_Arte)) TRUE))
    ?obres
)

; Funció per recopilar totes les sales disponibles
(deffunction recopilar-sales ()
    (bind ?sales (find-all-facts ((?f Sala)) TRUE))
    ?sales
)


; Funció per recopilar tots els pintors disponibles
(deffunction recopilar-pintors ()
    (bind ?pintors (find-all-facts ((?f Pintor)) TRUE))
    ?pintors
)


; Regla per iniciar la recopilació de dades
(defrule iniciar-recopilacio
    =>
    (bind ?llista-pintors (recopilar-pintors))
    (bind ?llista-sales (recopilar-sales))
    (bind ?llista-obres (recopilar-obres))
    (assert (dades-recopilades (pintors $?llista-pintors) (obres $?llista-obres) (sales $?llista-sales)))
    (printout t "Recopilació completada: " 
              (fact-slot-value (find-fact ((?f dades-recopilades)) TRUE) pintors) 
              " " 
              (fact-slot-value (find-fact ((?f dades-recopilades)) TRUE) obres)
              " " 
              (fact-slot-value (find-fact ((?f dades-recopilades)) TRUE) sales) crlf)
)

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
