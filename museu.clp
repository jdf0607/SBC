;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia.ttl
;;; :Date 04/12/2024 11:32:21

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
    (multislot rellevància
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
    ([Diego_Velazquez] of Pintor
         (crea  [Les_Menines])
         (nacionalitat  "Espanyola")
    )

    ([El_dinar_campestre] of Obra_de_Arte
         (any_de_creació  1863)
         (estil  "Impressionisme")
         (rellevància  "Referent")
         (temàtica  "Vida quotidiana")
         (època  "XIX")
    )

    ([El_gronxador] of Obra_de_Arte
         (any_de_creació  1767)
         (estil  "Barroc tardà")
         (rellevància  "Destacat")
         (temàtica  "Vida quotidiana")
         (època  "XVIII")
    )

    ([El_jurament_dels_Horacis] of Obra_de_Arte
         (any_de_creació  1784)
         (estil  "Neoclassicisme")
         (rellevància  "Universal")
         (temàtica  "Cultura grecoromana")
         (època  "XVIII")
    )

    ([El_rapte_de_Prosèrpina] of Obra_de_Arte
         (any_de_creació  1636)
         (estil  "Barroc")
         (rellevància  "Referent")
         (temàtica  "Cultura grecoromana")
         (època  "XVII")
    )

    ([El_tres_de_maig_de_1808] of Obra_de_Arte
         (any_de_creació  1814)
         (estil  "Romanticisme")
         (rellevància  "Universal")
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
         (rellevància  "Magistral")
         (temàtica  "Esdeveniments històrics")
         (època  "XIX")
    )

    ([La_Ronda_de_Nit] of Obra_de_Arte
         (any_de_creació  1642)
         (estil  "Barroc")
         (rellevància  "Magistral")
         (temàtica  "Paisatges i Emocions")
         (època  "XVII")
    )

    ([La_mort_de_Sòcrates] of Obra_de_Arte
         (any_de_creació  1787)
         (estil  "Neoclassicisme")
         (rellevància  "Magistral")
         (temàtica  "Cultura grecoromana")
         (època  "XVIII")
    )

    ([La_nit_estrellada] of Obra_de_Arte
         (any_de_creació  1889)
         (estil  "Postimpressionisme")
         (rellevància  "Universal")
         (temàtica  "Paisatges i Emocions")
         (època  "XIX")
    )

    ([Les_Menines] of Obra_de_Arte
         (any_de_creació  1656)
         (estil  "Barroc")
         (rellevància  "Universal")
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

    ([Sala1] of Sala
         (conté  [La_Ronda_de_Nit] [La_nit_estrellada])
         (porta_a  [Sala2] [Sala3] [Sala4])
         (temàtica  "Paisatges i emocions")
    )

    ([Sala2] of Sala
         (conté  [El_dinar_campestre] [El_gronxador] [Les_Menines])
         (porta_a  [Sala1] [Sala3] [Sala4])
         (temàtica  "Vida quotidiana")
    )

    ([Sala3] of Sala
         (conté  [El_jurament_dels_Horacis] [El_rapte_de_Prosèrpina] [La_mort_de_Sòcrates])
         (porta_a  [Sala1] [Sala2] [Sala4])
         (temàtica  "Cultura grecoromana")
    )

    ([Sala4] of Sala
         (conté  [El_tres_de_maig_de_1808])
         (porta_a  [Sala1] [Sala2] [Sala3])
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

)


; -----------------------------------------
; -----------------------------------------
; ----------------  CODI  -----------------
; -----------------------------------------
; -----------------------------------------

; ------------------------------------
; 				  Classes
; ------------------------------------

(defclass quadres-recomanats
	(is-a USER)
	(role concrete)
    (slot nom-obra
		(type INSTANCE)
		(create-accessor read-write))
    (slot valoracio
        (type INTEGER)
        (create-accessor read-write))
)


(defclass ruta-per-Dia
	(is-a USER)
	(role concrete)
	(multislot quadres-recomanats
		(type INSTANCE)
		(create-accessor read-write))
    (multislot sales
        (type INSTANCE)
        (create-accessor read-write))
	(slot temps
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
    (import recopilacio-informacio-visitant ?ALL)
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
(defmodule imprimir-ruta
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
    (multislot preferencies-estil (type STRING))
    (multislot preferencies-tematica (type STRING))
    (slot nivell_cultural (type FLOAT) (default 5.0))
)

; Potser es necessitaria una classe per definir el recorregut d'una visita.
(deftemplate recorregut_sala
    (multislot quadres (type INSTANCE))
)

(deftemplate recorregut_museu
    (multislot sales (type INSTANCE))
)

(deftemplate obres-recomenades
        (multislot quadres-recomanats (type INSTANCE))
    )
(deftemplate obres-recomenades-ordenades
    (multislot quadres-recomanats (type INSTANCE))
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

(deffunction MAIN::mapa-num-estil (?num)
    (bind ?estil nil)
    (switch ?num
        (case 1 then (bind ?estil "Barroc"))
        (case 2 then (bind ?estil "Barroc tardà"))
        (case 3 then (bind ?estil "Classicisme"))
        (case 4 then (bind ?estil "Neoclassicisme"))
        (case 5 then (bind ?estil "Romanticisme"))
        (case 6 then (bind ?estil "Realisme"))
        (case 7 then (bind ?estil "Impressionisme"))
        (case 8 then (bind ?estil "Postimpressionisme"))
    )
    ?estil
)

(deffunction MAIN::mapa-num-tematica (?num)
    (bind ?estil nil)
    (switch ?num
        (case 1 then (bind ?estil "Vida Quotidiana"))
        (case 2 then (bind ?estil "Paisatges i emocions"))
        (case 3 then (bind ?estil "Cultura grecorromana"))
        (case 4 then (bind ?estil "Esdeveniment Històric"))
    )
    ?estil
)



; --------------------------------------------------
; 				 MODUL RECOPILACIO 
; --------------------------------------------------


(defrule recopilacio-informacio-visitant::determinar-familia
    ?v <- (visita (familia ?f))
    (test (or (eq ?f FALSE) (eq ?f TRUE)))
    =>
    (bind ?familia (pregunta-opcions "El grup és una família? (1: Sí, 2: No)" (create$ "Sí" "No")))
    (if (= ?familia 1) then (modify ?v (familia TRUE)) else (modify ?v (familia FALSE)))
)

(defrule recopilacio-informacio-visitant::establir-num-nens
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

(defrule recopilacio-informacio-visitant::establir-duracio-visita
    ?v <- (visita (num_dies ?d) (hores_visita ?h))
    (test (or (< ?d 1) (< ?h 1)))
    =>
    (bind ?dies (pregunta-numero "Quants dies durarà la visita? " 1 15))
    (bind ?hores (pregunta-numero "Quantes hores per dia dedicarà a la visita? " 1 8))
    (modify ?v (num_dies ?dies) (hores_visita ?hores))
)

(defrule recopilacio-informacio-visitant::calcular-nivell-cultural
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

(defrule recopilacio-informacio-visitant::consultar-preferencies-estil
    ?v <- (visita (preferencies-estil ?p))
    =>
    (bind ?estils (create$ "Barroc" "Barroc tardà" "Classicisme" "Neoclassicisme" "Romanticisme" "Realisme" "Impressionisme" "Postimpressionisme"))
    (bind $?pref-indexs (pregunta-multiresposta "Seleccioneu els vostres estils artístics preferits:" ?estils))
    (bind ?i 0)
    (foreach ?pref-i $?pref-indexs
        (modify ?v (preferencies-estil (insert$ ?p ?i (mapa-num-estil ?pref-i))))
        (bind ?i (+ ?i 1))
    )
)

(defrule recopilacio-informacio-visitant::consultar-preferencies-tematica
    ?v <- (visita (preferencies-tematica ?p))
    =>
    (bind ?temes (create$ "Vida Quotidiana" "Paisatges i emocions" "Cultura grecorromana" "Esdeveniment històric"))
    (bind $?pref-indexs (pregunta-multiresposta "Seleccioneu les vostres temàtiques preferides:" ?temes))
    (bind ?i 0)
    (foreach ?pref-i $?pref-indexs
        (modify ?v (preferencies-tematica (insert$ ?p ?i (mapa-num-tematica ?pref-i))))
        (bind ?i (+ ?i 1))
    )
)

(defrule recopilacio-informacio-visitant::get-totes-les-obres
   (declare (salience 15))
   =>
   (bind $?llista (find-all-instances ((?inst Obra_de_Arte)) TRUE))
   (progn$ (?actual ?llista)
            (make-instance(gensym) of quadres-recomanats(nom-obra ?actual)
                        (valoracio 0))
                        )
    (printout t "..." crlf)
)


; --------------------------------------------------
; 				MODUL ABSTRACCIO - Ramóm
; --------------------------------------------------

(defrule abstraccio-dades::crear-visitant
    (visita (num_persones ?np) (num_nens ?nn) (familia ?fam) (num_dies ?nd) (hores_visita ?hd) (nivell_cultural ?nc))
    (not (object(name [instVisitant])))
    =>
    (if (eq ?fam TRUE) then (make-instance instVisitant of Familia)
    else (if (eq ?np 1) then (make-instance instVisitant of Individu)
        else (if (> ?np 9) then (make-instance instVisitant of Grup_Gran)
            else (make-instance instVisitant of Grup_Petit))))
    (if (> ?nn 0) then (send [instVisitant] put-nens TRUE))
    (send [instVisitant] put-dies ?nd)
    (send [instVisitant] put-hores ?hd)
    (send [instVisitant] put-coneixement ?nc)
)

(defrule abstraccio-dades::valorar-coneixement
    (visita (nivell_cultural ?nc))
    =>
    (if (< ?nc 20.0) then (send [instVisitant] put-coneixement 0)) ; Nivell cultural novell
    (if (and (>= ?nc 20.0) (< ?nc 50.0)) then (send [instVisitant] put-coneixement 1)) ; Nivell cultural aficionat
    (if (and (>= ?nc 50.0) (< ?nc 80.0)) then (send [instVisitant] put-coneixement 2)) ; Nivell cultural entès
    (if (>= ?nc 80.0) then (send [instVisitant] put-coneixement 3)) ; Nivell cultural expert
)

;

; --------------------------------------------------
; 				MODUL Inferencia - José
; --------------------------------------------------

(defrule inferir-dades::crear-solucio
    (not (obres-recomenades))
    =>
    (assert(obres-recomenades))
)

(defrule inferir-dades::ordenar-solucio
    (not (obres-recomenades-ordenades))
    (obres-recomenades (quadres-recomanats $?llista))
    =>
    (bind ?recorregut (create$)) ; 
    (while (> (length$ $?llista) 0) ;
        (progn
            (bind ?actual (trobar-maxim $?llista))
            (bind $?llista (delete-member$ $?llista ?actual)) 
             (bind $?recorregut (insert$ $?recorregut 
                (+(length$ $?recorregut) 1) ?actual))
        )
        )
    (assert (obres-recomenades-ordenades (quadres-recomanats $?recorregut))) ; Afegeix el fet ordenat
    (printout t "Calculant recorregut..." crlf)
)


;ordenem els quadres per puntuació, falta tenir en compte les sales i els dies
    

    
       

; --------------------------------------------------
; 			MODUL SINTESIS - Aleix
; --------------------------------------------------


; --------------------------------------------------
; 			  MODUL IMPRIMIR RUTA - Ramón
; --------------------------------------------------

