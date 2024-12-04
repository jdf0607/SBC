;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia.ttl
;;; :Date 04/12/2024 11:36:09

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
         (temàtica  "VIda quotidiana")
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
