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
    (slot dies
        (type INTEGER)
        (create-accessor read-write))
    (slot hores
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
    (slot type (create-accessor read-write) (default Familia))
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
    (slot type (create-accessor read-write) (default Grup_Gran))
)

(defclass Grup_Petit
    (is-a Grup)
    (role concrete)
    (pattern-match reactive)
    (slot type (create-accessor read-write) (default Grup_Petit))
)

(defclass Individu
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
    (slot type (create-accessor read-write) (default Individu))
)

(defclass Obra_de_Arte
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot any_de_creació
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
         (temàtica  "Cultura grecorromana")
         (època  "XVIII")
    )

    ([El_rapte_de_Prosèrpina] of Obra_de_Arte
         (any_de_creació  1636)
         (estil  "Barroc")
         (rellevància  "Referent")
         (temàtica  "Cultura grecorromana")
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
         (temàtica  "Cultura grecorromana")
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
         (temàtica  "Cultura grecorromana")
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

(defmessage-handler MAIN::Obra_de_Arte imprimir primary ()
	(format t "Any: %d" ?self:any_de_creació)
	(printout t crlf)
    (format t "Època: %s" ?self:època)
	(printout t crlf)
    (format t "Temàtica: %s" ?self:temàtica)
	(printout t crlf)
    (format t "Rellevància: %s" ?self:rellevància)
	(printout t crlf)
    (format t "Estil: %s" ?self:estil get-estil)
	(printout t crlf)
)

(defmessage-handler MAIN::quadres-recomanats imprimir primary ()
    (printout t ?self:nom-obra)
	(printout t crlf)
	(format t "Valoracio: %d" ?self:valoracio)
	(printout t crlf "Justificació de la tria: " crlf)
	(printout t crlf)
)

(defmessage-handler MAIN::ruta-per-Dia imprimir primary ()
    (printout t "Quadres recomanats: " crlf)
    (foreach ?quadre ?self:quadres-recomanats
        (printout t (send ?quadre imprimir))  
        (printout t crlf)
    )
)

; ------------------------------------
; 				  MAIN 
; ------------------------------------

;Modul Main
(defmodule MAIN 
    (export ?ALL)
)

;Modul recopilació d'informació visitant
(defmodule recopilacio-informacio-visitant
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule recopilacio-informacio-visitant::canvi-abstraccio-dades
    (declare (salience -1))
    =>
    (focus abstraccio-dades)
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
    (import abstraccio-dades ?ALL)
	(export ?ALL)
)

(defrule inferir-dades::canvi_sintesis
    (declare (salience -1))
    =>
    (focus sintesis)
)

;Modul d'abstracció de sintesis
(defmodule sintesis
	(import MAIN ?ALL)
    (import recopilacio-informacio-visitant ?ALL)
    (import abstraccio-dades ?ALL)
    (import inferir-dades ?ALL)
	(export ?ALL)
)

(defrule sintesis::canvi-imprimir-ruta
    (declare (salience -1))
    =>
    (focus imprimir-ruta)
)

;Modul per imprimir la ruta (solución)
(defmodule imprimir-ruta
	(import MAIN ?ALL)
	(import recopilacio-informacio-visitant ?ALL)
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
	(focus recopilacio-informacio-visitant)
)

; -----------------------------------------
; 				 TEMPLATES 
; -----------------------------------------

(deftemplate visita
    (slot num_persones (type INTEGER) (default 1))
    (slot familia (type SYMBOL) (allowed-values TRUE FALSE) (default FALSE))
    (slot num_nens (type INTEGER) (default 0))
    (slot num_dies (type INTEGER) (default 0))
    (slot hores_visita (type INTEGER) (default 0))
    (multislot preferencies-estil (type STRING))
    (multislot preferencies-temàtica (type STRING))
    (slot nivell_cultural (type FLOAT) (default 0.0))
)

(deftemplate dia
    (multislot quadres-recomanats (type INSTANCE))
)

(deftemplate ruta
    (multislot dia (type INSTANCE))
)


(deftemplate obres-valorades
    (multislot quadres-recomanats (type INSTANCE))
)


(deftemplate obres-valorades-ordenades
    (multislot quadres-recomanats (type INSTANCE))
)

(deftemplate ruta-desordenada
    (multislot quadres-recomanats (type INSTANCE))
    (multislot temps(type INTEGER) (default 0))
)

(deftemplate ruta-ordenada
    (multislot quadres-recomanats (type INSTANCE))
    (multislot temps(type INTEGER) (default 0))
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
    (format t "%s (De %d fins a %d) " ?pregunta ?limitInferior ?limitSuperior)
    (bind ?resposta (read))
    (while (not(and(>= ?resposta ?limitInferior)(<= ?resposta ?limitSuperior))) do
        (format t "%s (De %d fins a %d) " ?pregunta ?limitInferior ?limitSuperior)
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
    (bind ?resposta (pregunta-numero "Trieu una opcio:" 1 (length$ ?respostes-posibles)))
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

   (format t "%s" "Respon amb els nombres (numeros) associats a les teves respostes separats per un espai: ")
   (bind ?resp (readline)) 

   (bind ?numeros (explode$ ?resp))  
   ?numeros
)

;funcio per a trobar els elements  amb millor valoracio
(deffunction trobar-maxim ($?llista)
	(bind ?maxim -1)
	(bind ?element nil)
	(foreach ?actual $?llista
      (bind ?valoracio (send ?actual get-valoracio))
      (if (> ?valoracio ?maxim)
         then
            (bind ?maxim ?valoracio)
            (bind ?element ?actual)
      )
   )
   ?element
)

;funcion para ordenar sales
(deffunction MAIN::ordenar-sales ($?llista)
   (bind ?minim 999999)      ; Un valor inicial suficientemente alto para comparar
   (bind ?element nil)       ; Inicializar el elemento mínimo como nil
   (bind ?time 0)            ; Inicializar el tiempo como 0

   ; Recorrer cada elemento de la lista
   (foreach ?actual $?llista
      (bind ?QuadreActual (send ?actual get-nomQuadre)) 
      (bind ?SalaValor (send ?QuadreActual get-Sala))   
      (bind ?QuadreTime (send ?actual get-temps)) ; Obtener el tiempo de la obra actual
      
      (if (<= ?SalaValor ?minim) then
         (bind ?minim ?SalaValor)    
         (bind ?element ?actual)
         (bind ?time ?QuadreTime) ; Actualizar el tiempo
      )
   )

   (create$ ?element ?time) ; Devolver una lista con la obra y el tiempo
)

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

(deffunction MAIN::mapa-num-temàtica (?num)
    (bind ?estil nil)
    (switch ?num
        (case 1 then (bind ?estil "Vida quotidiana"))
        (case 2 then (bind ?estil "Paisatges i emocions"))
        (case 3 then (bind ?estil "Cultura grecorromana"))
        (case 4 then (bind ?estil "Esdeveniments històrics"))
    )
    ?estil
)



; --------------------------------------------------
; 				 MODUL RECOPILACIO 
; --------------------------------------------------

(defrule recopilacio-informacio-visitant::determinar-num-persones
    (not (visita))
    =>
    (bind ?num (pregunta-numero "Quantes persones sou al vostre grup?" 1 50))
    (assert (visita (num_persones ?num)))
)

(defrule recopilacio-informacio-visitant::establir-num-nens
    ?v <- (visita (num_persones ?np))
    (test (> ?np 1))
    (not (preguntat-nens))
    =>
    (bind ?nens (pregunta-numero "Quants nens hi ha al grup? " 0 (- ?np 1)))
    (modify ?v (num_nens ?nens))
    (assert (preguntat-nens))
)

(defrule recopilacio-informacio-visitant::determinar-familia
    ?v <- (visita (num_nens ?nn))
    (test (> ?nn 0))
    (not (preguntat-familia))
    =>
    (bind ?familia (pregunta-opcions "El grup és una família? (1: Sí, 2: No)" (create$ "Sí" "No")))
    (if (= ?familia 1) then (modify ?v (familia TRUE)) else (modify ?v (familia FALSE)))
    (assert (preguntat-familia))
)

(defrule recopilacio-informacio-visitant::establir-duracio-visita
    ?v <- (visita (num_dies ?d) (hores_visita ?h))
    (test (and (eq ?d 0) (eq ?h 0)))
    =>
    (bind ?dies (pregunta-numero "Quants dies durarà la visita? " 1 15))
    (bind ?hores (pregunta-numero "Quantes hores per dia dedicarà a la visita? " 1 8))
    (modify ?v (num_dies ?dies) (hores_visita ?hores))
)

(defrule recopilacio-informacio-visitant::calcular-nivell-cultural
    ?v <- (visita (nivell_cultural ?nc))
    (test (eq ?nc 0.0))
    =>
    (bind ?valoracio 0.0)
    (bind ?format (create$ "Sí" "No"))

    (bind ?resp (pregunta-opcions "Coneixes 'El Grito' de Munch?" ?format))
    (if (= ?resp 1) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?resp (pregunta-opcions "Coneixes 'Las Meninas' de Velázquez?" ?format))
    (if (= ?resp 1) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?resp (pregunta-opcions "Coneixes 'El Greco' de Goya?" ?format))
    (if (= ?resp 1) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?resp (pregunta-opcions "Coneixes 'La Gioconda' de Da Vinci?" ?format))
    (if (= ?resp 1) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?resp (pregunta-opcions "Coneixes 'La Nit Estrellada' de Van Gogh?" ?format))
    (if (= ?resp 1) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?tria (create$ "Klimt" "Tiziano" "Yanyez" "El Greco"))
	(bind ?resp (pregunta-opcions "Qui va pintar el quadre 'El Beso'?" ?tria))
	(if (= ?resp 1) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?tria (create$ "El Greco." "Francisco de Goya." "Diego Velazquez."))
	(bind ?resp (pregunta-opcions "¿Qui va pintar el quadre 'Las Hilanderas'?" ?tria))
	(if (= ?resp 3) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?tria (create$ "La Pietà" "David" "El Moisès" "Venus de Milo"))
    (bind ?resp (pregunta-opcions "Quina obra és de Miquel Àngel?" ?tria))
    (if (= ?resp 2) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?tria (create$ "Pablo Picasso" "Salvador Dalí" "Marc Chagall" "Henri Matisse"))
    (bind ?resp (pregunta-opcions "Qui va pintar 'Gernika'?" ?tria))
    (if (= ?resp 1) then (bind ?valoracio (+ 10.0 ?valoracio)))

    (bind ?tria (create$ "Salvador Dalí" "Vincent van Gogh" "Claude Monet" "Frida Kahlo"))
    (bind ?resp (pregunta-opcions "Quin pintor va ser conegut pel seu estil surrealista?" ?tria))
    (if (= ?resp 1) then (bind ?valoracio (+ 10.0 ?valoracio)))

    ;; Afegegir més preguntes si fa falta

    (modify ?v (nivell_cultural (/ ?valoracio 10.0)))
    (assert (estils preguntar))
    (assert (tematiques preguntar))
)

(defrule recopilacio-informacio-visitant::consultar-preferencies-estil
    ?v <- (visita)
    ?f <- (estils preguntar)
    =>
    (bind ?estils (create$ "Barroc" "Barroc tardà" "Classicisme" "Neoclassicisme" "Romanticisme" "Realisme" "Impressionisme" "Postimpressionisme"))
    (bind $?pref-indexs (pregunta-multiresposta "Seleccioneu els vostres estils artístics preferits:" ?estils))
    (bind ?prefs (create$))
    (foreach ?pref-i $?pref-indexs
        (bind ?prefs (create$ ?prefs (mapa-num-estil ?pref-i)))
    )
    (modify ?v (preferencies-estil ?prefs))
    (retract ?f)
)

(defrule recopilacio-informacio-visitant::consultar-preferencies-temàtica
    ?v <- (visita)
    ?f <- (tematiques preguntar)
    =>
    (bind ?temes (create$ "Vida quotidiana" "Paisatges i emocions" "Cultura grecorromana" "Esdeveniments històrics"))
    (bind $?pref-indexs (pregunta-multiresposta "Seleccioneu les vostres temàtiques preferides:" ?temes))
    (bind ?prefs (create$))
    (foreach ?pref-i $?pref-indexs
        (bind ?prefs (create$ ?prefs (mapa-num-temàtica ?pref-i)))
    )
    (modify ?v (preferencies-temàtica ?prefs))
    (retract ?f)
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
    (if (< ?nc 2.0) then (send [instVisitant] put-coneixement 0)) ; Nivell cultural novell
    (if (and (>= ?nc 2.0) (< ?nc 5.0)) then (send [instVisitant] put-coneixement 1)) ; Nivell cultural aficionat
    (if (and (>= ?nc 5.0) (< ?nc 8.0)) then (send [instVisitant] put-coneixement 2)) ; Nivell cultural entès
    (if (>= ?nc 8.0) then (send [instVisitant] put-coneixement 3)) ; Nivell cultural expert
)


; --------------------------------------------------
; 				MODUL Inferencia - José
; --------------------------------------------------
;en la primera versió farem la visita només segons el expertise del visitant
(defrule inferir-dades::valorar-nivell
    (declare (salience 2))
    (object (is-a Visitant) (name [instVisitant]) (coneixement ?coneixement)) 
    ?rec <- (object (is-a quadres-recomanats) (nom-obra ?obra) (valoracio ?val))
    ?cont <- (object (is-a Obra_de_Arte) (rellevància ?rel))
    (test (eq (instance-name ?cont) (instance-name ?obra)))
    (not (valorat ?cont ?coneixement))  ; Verifica que no se haya valorado previamente
    (obres-valorades (quadres-recomanats $?llista))
    =>
    ; Establecer la prioridad según el nivell_cultural del visitante
     (bind ?rel-num 
      (if (eq ?rel "Universal") then 0
      else (if (eq ?rel "Magistral") then 1
      else (if (eq ?rel "Referent") then 2
      else (if (eq ?rel "Destacat") then 3
      else -1)))))

    (bind ?prioritat ?coneixement) 


    (if (<= ?rel-num ?prioritat) then
        (if (< ?rel-num 4) then
            (bind ?val (+ ?val 40))  ; Si la obra es relevante, sumar 40 a la valoración
        )
    )

    ; Actualizar la valoración de la obra recomendada
    (send ?rec put-valoracio ?val)
    (assert (valorat ?cont ?coneixement))

    ;(retract (obres-valorades (quadres-recomanats $?llista)))
    (assert (obres-valorades (quadres-recomanats $?llista ?rec)))
)


;a los cuadros se les da una puntuación por visitante y los añadimos al recorrido según esta
(defrule inferir-dades::crear-solucio
    ; (declare (salience 10))
    (not (obres-valorades))
    =>
    (assert(obres-valorades))
)
;ara tindrem primer els quadres que volem visitar
(defrule inferir-dades::ordenar-solucio

    (not (obres-valorades-ordenades))
    (obres-valorades (quadres-recomanats $?llista))
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
    (assert (obres-valorades-ordenades (quadres-recomanats $?recorregut)))

    ; Afegeix el fet ordenat
    (printout t "Calculant recorregut..." crlf)
)
       

; --------------------------------------------------
; 			MODUL SINTESIS - Aleix
; --------------------------------------------------

(defrule sintesis::crea-ruta-desordenada "Crea ruta desordenada"
    (not (ruta-desordenada)) ; Asegurarse de que no exista una ruta-desordenada previamente definida
    (obres-valorades-ordenades (quadres-recomanats $?recorregut)) ; Lista de obras ordenadas
    ?visitant <- (object (is-a Visitant))
    =>
    (bind ?numDies (send ?visitant get-dies))
    (bind ?hores (send ?visitant get-hores))
    (bind ?mins (* ?hores 60)) ; Convertir horas a minutos
    (bind ?t-max (* ?numDies ?mins)) ; Tiempo máximo total
    (bind ?t-ocu 0) ; Tiempo inicial ocupado
    (bind $?recs-final (create$)) ; Crear una lista vacía para las obras finales
    (bind $?temps-final (create$)) ; Crear una lista vacía para el tiempo de cada obra
    ; Asignación de obras a la lista final
    (foreach ?rec $?recorregut
        (bind ?obra (send ?rec get-nom-obra)) ; Obtener la instancia de la obra
        (bind ?ac (send ?obra get-època)) ; Año de creación de la obra
        ; Determinar el tiempo requerido para la obra según el tipo de visitante
        (bind ?tobra
            (if (eq (class ?visitant) Familia) then
            (if (eq ?ac "XIX") then 13
            else (if (eq ?ac "XVIII") then 10
            else 6))
            else (if (eq (class ?visitant) Individu) then
            (if (eq ?ac "XIX") then 16
            else (if (eq ?ac "XVIII") then 12
            else 8))
            else (if (eq (class ?visitant) Grup_Petit) then
            (if (eq ?ac "XIX") then 18
            else (if (eq ?ac "XVIII") then 14
            else 10))
            else (if (eq (class ?visitant) Grup_Gran) then
            (if (eq ?ac "XIX") then 20
            else (if (eq ?ac "XVIII") then 15
            else 12)))))))
        ; Verificar si hay tiempo suficiente para la obra
        (if (<= (+ ?t-ocu ?tobra) ?t-max) then
            (progn
                (bind ?t-ocu (+ ?t-ocu ?tobra)) ; Incrementar tiempo ocupado
                (bind $?recs-final 
                    (insert$ $?recs-final (+ (length$ $?recs-final) 1) ?obra)) ; Añadir obra 
                (bind $?temps-final
                    (insert$ $?temps-final (+ (length$ $?temps-final) 1) ?tobra)) ; Añadir tiempo
            )
        )
    )
    ; Crear y asertar la ruta-desordenada final
    (printout t "recs-final: " $?recs-final crlf)
    (printout t "temps-final: " $?temps-final crlf)
    (assert (ruta-desordenada (quadres-recomanats $?recs-final) (temps $?temps-final)))
    (printout t "Computant una llista òptima basada en instVisitant..." crlf)
)

(defrule sintesis::ordenar-ruta "Ordena la ruta"
    (not (ruta-ordenada))
    (ruta-desordenada (quadres-recomanats $?recs-final) (temps $?temps-final))
    =>
    (bind $?recs $?recs-final)        ; Inicializar ?recs con la lista de obras
    (bind $?temps $?temps-final)      ; Inicializar ?temps con la lista de tiempos
    (bind $?recs-ordenades (create$)) ; Lista vacía para las obras ordenadas
    (bind $?temps-ordenats (create$)) ; Lista vacía para los tiempos ordenados
    (> (length$ $?recs) 0)
    (while (> (length$ $?recs) 0) do
        ; Obtener el siguiente elemento ordenado (obra y tiempo)
        (bind ?actual (ordenar-sales $?recs))
        (bind ?obra (nth$ 1 ?actual)) ; Extraer la obra de ?actual
        (bind ?t (nth$ 2 ?actual))    ; Extraer el tiempo de ?actual

        ; Encontrar el índice de la obra en la lista original
        (bind ?idx (member ?obra $?recs))
        (if ?idx then
            ; Eliminar la obra y su tiempo de las listas originales
            

            ; Añadir la obra y su tiempo a las listas ordenadas
            (bind $?recs-ordenades (insert$ $?recs-ordenades (+ (length$ $?recs-ordenades) 1) ?obra))
            (bind $?temps-ordenats (insert$ $?temps-ordenats (+ (length$ $?temps-ordenats) 1) ?t))
        )
    )

    ; Asertar la ruta ordenada con obras y tiempos
    (assert (ruta-ordenada (quadres-recomanats $?recs-ordenades) (temps $?temps-ordenats)))
)

(defrule sintesis::asigna-ruta "Assigna la ruta-ordenada als dies corresponents"
    (not (ruta))
    (ruta-ordenada (quadres-recomanats $?recs) (temps $?temps))
    =>
    ; Obtener los datos del visitante
    (bind ?iv [instVisitant])    ; Instancia del visitante
    (bind ?hores (send [instVisitant] get-hores)) ; Número de horas por día
    (bind ?mins (* ?hores 60))                    ; Convertir horas a minutos

    ; Crear una lista vacía para los días
    (bind $?dies-llista (create$))

    ; Crear instancias de ruta-per-Dia con el tiempo disponible por día
    (bind ?i 1)
    (while (<= ?i (send ?iv get-dies)) do
        (bind $?dies-llista
            (insert$ $?dies-llista (+ (length$ $?dies-llista) 1)
                     (make-instance (gensym) of ruta-per-Dia (temps ?mins))))
        (bind ?i (+ ?i 1)))

    ; Asignación de obras a días
    (bind ?i 1)
    (bind ?t-max (* ?hores 60)) ; Tiempo máximo por día
    (while (and (> (length$ $?recs) 0) (<= ?i (length$ $?dies-llista))) do
        (bind ?dia (nth$ ?i $?dies-llista))    ; Obtener el día actual
        (bind $?recs-dia (create$))            ; Lista para las obras del día
        (bind ?t-max (send ?dia get-temps))    ; Tiempo máximo por día
        (bind ?t-ocu 0)                        ; Tiempo ocupado inicializado a 0

        ; Iterar sobre las obras hasta llenar el día
        (bind ?j 1)
        (while (and (< ?t-ocu ?t-max) (> (length$ $?recs) 0) (<= ?j (length$ $?recs))) do
            (bind ?obra (nth$ ?j $?recs))       ; Obtener la obra actual
            (bind ?t (nth$ ?j $?temps))         ; Obtener el tiempo de la obra actual

            ; Verificar si hay tiempo suficiente para asignar la obra al día actual
            (if (<= (+ ?t-ocu ?t) ?t-max) then
                (progn
                    (bind ?t-ocu (+ ?t-ocu ?t))        ; Incrementar tiempo ocupado
                    (bind $?recs-dia (insert$ $?recs-dia (+ (length$ $?recs-dia) 1) ?obra)) ; Añadir obra al día
                )
            )
            (bind ?j (+ ?j 1)) ; Pasar a la siguiente obra
        )

        ; Asignar las obras del día actual al slot `quadres-recomanats`
        (send ?dia put-quadres-recomanats $?recs-dia)
        (bind ?i (+ ?i 1)) ; Pasar al siguiente día
    )

    ; Asertar la ruta final con los días creados
    (assert (ruta (dia $?dies-llista)))
    (printout t "Ruta calculada correctament." crlf)
)



; --------------------------------------------------
; 			  MODUL IMPRIMIR RUTA - Ramón
; --------------------------------------------------

(defrule imprimir-ruta::sortida "Imprimeix les rutes recomanades"
    (ruta (dia $?llista))  ; Asegura que hay una ruta con días asignados
    (not (final))  ; Asegura que no se haya alcanzado el estado final
    =>
    (printout t crlf)
    (printout t "Aquesta és la planificació de les visites que us recomanem:" crlf)
    (printout t "===========================================================" crlf)
    
    ;; Iterar sobre cada día en la lista de rutas
    (bind ?i 1)  ; Inicializa el contador de días
    (while (<= ?i (length$ $?llista)) do
        (bind ?dia (nth$ ?i $?llista))  ; Obté el dia corresponent
        (format t "Dia %d:" ?i)  ; Imprime el número del día
        (printout t crlf)
        
        ;; Obtiene los cuadros recomendados para ese día
        (bind ?recs-dia (send ?dia get-quadres-recomanats))  ; Obtiene las obras recomendadas para ese día
        
        ;; Imprime cada obra recomendada
        (if (eq (length$ ?recs-dia) 0)
            then
                (printout t "  No hi ha obres recomanades per a aquest dia." crlf)
            else
                (foreach ?rec ?recs-dia
                    (printout t (send ?rec get-nom-obra) crlf)
                    (printout t "\t- " (send ?rec imprimir))  ; Imprime los detalles de la obra
                    (printout t crlf)
                )
        )
        (bind ?i (+ ?i 1))  ; Pasa al siguiente día
    )
    (assert (final))  ; Marca que la ruta ha sido finalizada
)
