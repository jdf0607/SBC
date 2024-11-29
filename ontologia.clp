;;; ---------------------------------------------------------
;;; ontologia3.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia3.ttl
;;; :Date 27/11/2024 18:39:12

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
)

(defclass Familia
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
)

(defclass Grup
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
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
)

(defclass Pintor
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot crea
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sala
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot conté
        (type INSTANCE)
        (create-accessor read-write))
    (multislot prop_de
        (type INSTANCE)
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

