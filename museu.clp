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
    (multislot preferencies_estil 
        (type STRING)
        (create-accessor read-write))
    (multislot preferencies_temàtica 
        (type STRING)
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
    (slot estil
        (type STRING)
        (create-accessor read-write))
    (slot rellevància
        (type STRING)
        (create-accessor read-write))
    (slot temàtica
        (type STRING)
        (create-accessor read-write))
    (slot època
        (type SYMBOL)
        (create-accessor read-write))
    (slot  pintor
        (type STRING)
        (create-accessor read-write))
    (slot sala 
        (type STRING)
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
    (slot nacionalitat
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

    ;; Obras de arte con slots de pintor y sala añadidos
    ([El_dinar_campestre] of Obra_de_Arte
         (any_de_creació  1863)
         (estil  "Impressionisme")
         (rellevància  "Referent")
         (temàtica  "Vida quotidiana")
         (època  "XIX")
         (pintor  Édouard_Manet)
         (sala  Sala2)
    )

    ([El_gronxador] of Obra_de_Arte
         (any_de_creació  1767)
         (estil  "Barroc tardà")
         (rellevància  "Destacat")
         (temàtica  "Vida quotidiana")
         (època  "XVIII")
         (pintor  Jean-Honoré_Fragonard)
         (sala  Sala2)
    )

    ([El_jurament_dels_Horacis] of Obra_de_Arte
         (any_de_creació  1784)
         (estil  "Neoclassicisme")
         (rellevància  "Universal")
         (temàtica  "Cultura grecorromana")
         (època  "XVIII")
         (pintor  Jacques-Louis_David)
         (sala  Sala3)
    )

    ([El_rapte_de_Prosèrpina] of Obra_de_Arte
         (any_de_creació  1636)
         (estil  "Barroc")
         (rellevància  "Referent")
         (temàtica  "Cultura grecorromana")
         (època  "XVII")
         (pintor  Peter_Paul_Rubens)
         (sala  Sala3)
    )

    ([El_tres_de_maig_de_1808] of Obra_de_Arte
         (any_de_creació  1814)
         (estil  "Romanticisme")
         (rellevància  "Universal")
         (temàtica  "Història militar")
         (època  "XIX")
         (pintor  Francisco_de_Goya)
         (sala  Sala4)
    )

    ([La_Llibertat_guiant_al_poble] of Obra_de_Arte
         (any_de_creació  1830)
         (estil  "Romanticisme")
         (rellevància  "Magistral")
         (temàtica  "Història política")
         (època  "XIX")
         (pintor  Eugène_Delacroix)
         (sala  Sala4)
    )

    ([La_Ronda_de_Nit] of Obra_de_Arte
         (any_de_creació  1642)
         (estil  "Barroc")
         (rellevància  "Magistral")
         (temàtica  "Paisatges i Emocions")
         (època  "XVII")
         (pintor  Rembrandt_van_Rijn)
         (sala  Sala1)
    )

    ([La_mort_de_Sòcrates] of Obra_de_Arte
         (any_de_creació  1787)
         (estil  "Neoclassicisme")
         (rellevància  "Magistral")
         (temàtica  "Cultura grecorromana")
         (època  "XVIII")
         (pintor  Jacques-Louis_David)
         (sala  Sala3)
    )

    ([La_nit_estrellada] of Obra_de_Arte
         (any_de_creació  1889)
         (estil  "Postimpressionisme")
         (rellevància  "Universal")
         (temàtica  "Paisatges i Emocions")
         (època  "XIX")
         (pintor  Vincent_Van_Gogh)
         (sala  Sala1)
    )

    ([Les_Menines] of Obra_de_Arte
         (any_de_creació  1656)
         (estil  "Barroc")
         (rellevància  "Universal")
         (temàtica  "Vida quotidiana")
         (època  "XVII")
         (pintor  Diego_Velazquez)
         (sala  Sala2)
    )

    ([El_Mercat] of Obra_de_Arte
         (any_de_creació  1670)
         (estil  "Barroc")
         (rellevància  "Referent")
         (temàtica  "Vida quotidiana")
         (època  "XVII")
         (pintor  Pieter_de_Hooch)
         (sala  Sala2)
    )

    ([La_Tempesta] of Obra_de_Arte
         (any_de_creació  1849)
         (estil  "Romanticisme")
         (rellevància  "Destacat")
         (temàtica  "Paisatges i Emocions")
         (època  "XIX")
         (pintor  Caspar_David_Friedrich)
         (sala  Sala1)
    )

    ([La_Gran_Bouffée] of Obra_de_Arte
         (any_de_creació  1855)
         (estil  "Realisme")
         (rellevància  "Magistral")
         (temàtica  "Vida quotidiana")
         (època  "XIX")
         (pintor  Gustave_Courbet)
         (sala  Sala2)
    )

    ([A_Dos_passes_de_La_Guerra] of Obra_de_Arte
         (any_de_creació  1805)
         (estil  "Romanticisme")
         (rellevància  "Universal")
         (temàtica  "Història política")
         (època  "XIX")
         (pintor  Théodore_Géricault)
         (sala  Sala4)
    )

    ([El_Fill_de_La_Cultura] of Obra_de_Arte
         (any_de_creació  1782)
         (estil  "Classicisme")
         (rellevància  "Destacat")
         (temàtica  "Cultura grecorromana")
         (època  "XVIII")
         (pintor  Angelica_Kauffmann)
         (sala  Sala3)
    )

    ([El_Brindis_dels_Patriotes] of Obra_de_Arte
         (any_de_creació  1811)
         (estil  "Realisme")
         (rellevància  "Destacat")
         (temàtica  "Història política")
         (època  "XIX")
         (pintor  Francisco_de_Goya)
         (sala  Sala4)
    )

    ([El_Somni_dels_Déus] of Obra_de_Arte
         (any_de_creació  1775)
         (estil  "Neoclassicisme")
         (rellevància  "Referent")
         (temàtica  "Cultura grecorromana")
         (època  "XVIII")
         (pintor  Antonio_Canova)
         (sala  Sala3)
    )

    ([Les_Carretas_d'Alba] of Obra_de_Arte
         (any_de_creació  1689)
         (estil  "Barroc tardà")
         (rellevància  "Destacat")
         (temàtica  "Vida quotidiana")
         (època  "XVII")
         (pintor  Luca_Giordano)
         (sala  Sala2)
    )

    ([L'Horitzó_d'Argent] of Obra_de_Arte
         (any_de_creació  1867)
         (estil  "Postimpressionisme")
         (rellevància  "Magistral")
         (temàtica  "Paisatges i Emocions")
         (època  "XIX")
         (pintor  Claude_Monet)
         (sala  Sala1)
    )

    ([El_Triomf_d'Aquiles] of Obra_de_Arte
         (any_de_creació  1791)
         (estil  "Neoclassicisme")
         (rellevància  "Universal")
         (temàtica  "Cultura grecorromana")
         (època  "XVIII")
         (pintor  Jacques-Louis_David)
         (sala  Sala3)
    )

        ([El_Cant_dels_Angels] of Obra_de_Arte
         (any_de_creació  1687)
         (estil  "Barroc")
         (rellevància  "Referent")
         (temàtica  "Espiritualitat")
         (pintor  Bartolomé_Esteban_Murillo)
         (sala  Sala5)
    )

    ([L'Escena_del_Bosc] of Obra_de_Arte
         (any_de_creació  1752)
         (estil  "Barroc tardà")
         (rellevància  "Destacat")
         (temàtica  "Vida quotidiana")
         (pintor  Jean-Baptiste_Pater)
         (sala  Sala2)
    )

    ([La_Batalla_de_Waterloo] of Obra_de_Arte
         (any_de_creació  1815)
         (estil  "Realisme")
         (rellevància  "Universal")
         (temàtica  "Història militar")
         (pintor  William_Sadler)
         (sala  Sala4)
    )

    ([El_Tempteig_de_Sant_Antoni] of Obra_de_Arte
         (any_de_creació  1645)
         (estil  "Barroc")
         (rellevància  "Magistral")
         (temàtica  "Espiritualitat")
         (pintor  Matthias_Stom)
         (sala  Sala5)
    )

    ([El_Port_d'Alba] of Obra_de_Arte
         (any_de_creació  1845)
         (estil  "Romanticisme")
         (rellevància  "Magistral")
         (temàtica  "Paisatges i Emocions")
         (pintor  Ivan_Aivazovsky)
         (sala  Sala1)
    )

    ([L'Alé_dels_Camps] of Obra_de_Arte
         (any_de_creació  1838)
         (estil  "Impressionisme")
         (rellevància  "Referent")
         (temàtica  "Vida quotidiana")
         (pintor  Camille_Corot)
         (sala  Sala2)
    )

    ([El_Triomf_de_la_Virtut] of Obra_de_Arte
         (any_de_creació  1786)
         (estil  "Neoclassicisme")
         (rellevància  "Universal")
         (temàtica  "Cultura grecorromana")
         (pintor Andrea_Mantegna)
         (sala  Sala3)
    )

    ([El_Déu_del_Mar] of Obra_de_Arte
         (any_de_creació  1693)
         (estil  "Barroc tardà")
         (rellevància  "Destacat")
         (temàtica  "Espiritualitat")
         (pintor  Sebastiano_Ricci)
         (sala  Sala5)
    )

    ([El_Riu_en_Flames] of Obra_de_Arte
         (any_de_creació  1856)
         (estil  "Realisme")
         (rellevància  "Referent")
         (temàtica  "Història política")
         (pintor  Gustave_Courbet)
         (sala  Sala4)
    )

    ([La_Posta_de_Sol] of Obra_de_Arte
         (any_de_creació  1887)
         (estil  "Postimpressionisme")
         (rellevància  "Universal")
         (temàtica  "Paisatges i Emocions")
         (pintor  Paul_Cézanne)
         (sala  Sala1)
    )
    ([El_Somni_dels_Justos] of Obra_de_Arte
         (any_de_creació  1701)
         (estil  "Barroc")
         (rellevància  "Referent")
         (temàtica  "Espiritualitat")
         (pintor  Bartolomé_Esteban_Murillo)
         (sala  Sala5)
    )

    ([La_Dansa_dels_Serfs] of Obra_de_Arte
         (any_de_creació  1764)
         (estil  "Barroc tardà")
         (rellevància  "Destacat")
         (temàtica  "Vida quotidiana")
         (pintor  Jean-Baptiste_Pater)
         (sala  Sala2)
    )

    ([El_Llamp_del_Destí] of Obra_de_Arte
         (any_de_creació  1819)
         (estil  "Romanticisme")
         (rellevància  "Universal")
         (temàtica  "Història política")
         (pintor  William_Sadler)
         (sala  Sala4)
    )

    ([La_Contemplació_Divina] of Obra_de_Arte
         (any_de_creació  1649)
         (estil  "Barroc")
         (rellevància  "Magistral")
         (temàtica  "Espiritualitat")
         (pintor  Matthias_Stom)
         (sala  Sala5)
    )

    ([L'Aurora_de_l'Oceà] of Obra_de_Arte
         (any_de_creació  1851)
         (estil  "Romanticisme")
         (rellevància  "Magistral")
         (temàtica  "Paisatges i Emocions")
         (pintor  Ivan_Aivazovsky)
         (sala  Sala1)
    )

    ([Els_Camps_de_Primavera] of Obra_de_Arte
         (any_de_creació  1832)
         (estil  "Impressionisme")
         (rellevància  "Referent")
         (temàtica  "Vida quotidiana")
         (pintor  Camille_Corot)
         (sala  Sala2)
    )

    ([L'Educació_d'Aquil·les] of Obra_de_Arte
         (any_de_creació  1783)
         (estil  "Neoclassicisme")
         (rellevància  "Universal")
         (temàtica  "Cultura grecorromana")
         (pintor  Eugène_Delacroix)
         (sala  Sala3)
    )

    ([La_Visió_del_Sant] of Obra_de_Arte
         (any_de_creació  1695)
         (estil  "Barroc tardà")
         (rellevància  "Destacat")
         (temàtica  "Espiritualitat")
         (pintor  Sebastiano_Ricci)
         (sala  Sala5)
    )

    ([La_Promesa_de_Llibertat] of Obra_de_Arte
         (any_de_creació  1860)
         (estil  "Realisme")
         (rellevància  "Referent")
         (temàtica  "Història política")
         (pintor  Gustave_Courbet)
         (sala  Sala4)
    )

    ([El_Jardí_Seren] of Obra_de_Arte
         (any_de_creació  1890)
         (estil  "Postimpressionisme")
         (rellevància  "Universal")
         (temàtica  "Paisatges i Emocions")
         (pintor  Paul_Cézanne)
         (sala  Sala1)
    )

    ([El_Gran_Consell] of Obra_de_Arte
     (any_de_creació  1650)
     (estil  "Barroc")
     (rellevància  "Magistral")
     (temàtica  "Història política")
     (època  "XVII")
     (pintor  Diego_Velazquez)
     (sala  Sala4)
    )

    ([La_Coronació_de_Carlomagne] of Obra_de_Arte
        (any_de_creació  1807)
        (estil  "Neoclassicisme")
        (rellevància  "Universal")
        (temàtica  "Història militar")
        (època  "XIX")
        (pintor  Jacques-Louis_David)
        (sala  Sala4)
    )

    ([El_Somni_d'un_Rei] of Obra_de_Arte
        (any_de_creació  1682)
        (estil  "Barroc tardà")
        (rellevància  "Referent")
        (temàtica  "Història política")
        (època  "XVII")
        (pintor  Luca_Giordano)
        (sala  Sala4)
    )

    ([La_Tragedia_d'Hamlet] of Obra_de_Arte
        (any_de_creació  1834)
        (estil  "Romanticisme")
        (rellevància  "Magistral")
        (temàtica  "Història militar")
        (època  "XIX")
        (pintor  Eugène_Delacroix)
        (sala  Sala4)
    )

    ([La_Declaració_d'Independència] of Obra_de_Arte
        (any_de_creació  1776)
        (estil  "Classicisme")
        (rellevància  "Universal")
        (temàtica  "Història política")
        (època  "XVIII")
        (pintor  John_Trumbull)
        (sala  Sala4)
    )

    ([L'Últim_Ressò_d'Àtila] of Obra_de_Arte
        (any_de_creació  1862)
        (estil  "Realisme")
        (rellevància  "Destacat")
        (temàtica  "Història militar")
        (època  "XIX")
        (pintor  Gustave_Courbet)
        (sala  Sala4)
    )

    ([El_Rei_del_Nord] of Obra_de_Arte
        (any_de_creació  1725)
        (estil  "Barroc tardà")
        (rellevància  "Magistral")
        (temàtica  "Història militar")
        (època  "XVIII")
        (pintor  Sebastiano_Ricci)
        (sala  Sala4)
    )

    ([La_Victòria_de_Zama] of Obra_de_Arte
        (any_de_creació  1817)
        (estil  "Romanticisme")
        (rellevància  "Universal")
        (temàtica  "Història militar")
        (època  "XIX")
        (pintor  Théodore_Géricault)
        (sala  Sala4)
    )

    ([El_Pacte_dels_Herois] of Obra_de_Arte
        (any_de_creació  1673)
        (estil  "Barroc")
        (rellevància  "Referent")
        (temàtica "Història política")
        (època  "XVII")
        (pintor  Peter_Paul_Rubens)
        (sala  Sala4)
    )

    ([La_Flamma_de_la_Llibertat] of Obra_de_Arte
        (any_de_creació  1793)
        (estil  "Neoclassicisme")
        (rellevància  "Destacat")
        (temàtica  "Història política")
        (època  "XVIII")
        (pintor  Antonio_Canova)
        (sala  Sala4)
    )

    ([La_Batalla_de_Ragnarök] of Obra_de_Arte
         (any_de_creació  1872)
         (estil  "Romanticisme")
         (rellevància  "Magistral")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  Peter_Nicolai_Arbo)
         (sala  Sala7)
    )

    ([El_Viatge_d'Odin] of Obra_de_Arte
         (any_de_creació  1843)
         (estil  "Romanticisme")
         (rellevància  "Referent")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  Carl_Loewe)
         (sala  Sala7)
    )

    ([Thor_i_la_Serp] of Obra_de_Arte
         (any_de_creació  1864)
         (estil  "Romanticisme")
         (rellevància  "Universal")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  Henry_Fuseli)
         (sala  Sala7)
    )

    ([El_Cant_dels_Víking] of Obra_de_Arte
         (any_de_creació  1859)
         (estil  "Realisme")
         (rellevància  "Destacat")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  Johan_Fredrik_Eckersberg)
         (sala  Sala7)
    )

    ([La_Creació_dels_Mons] of Obra_de_Arte
         (any_de_creació  1830)
         (estil  "Classicisme")
         (rellevància  "Referent")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  Constantin_Hansen)
         (sala  Sala7)
    )

    ([El_Sacrifici_d'Odin] of Obra_de_Arte
         (any_de_creació  1755)
         (estil  "Barroc tardà")
         (rellevància  "Referent")
         (temàtica  "Mitologia nórdica")
         (època  "XVIII")
         (pintor  Jens_Juel)
         (sala  Sala7)
    )

    ([Freya_i_els_Gats] of Obra_de_Arte
         (any_de_creació  1895)
         (estil  "Postimpressionisme")
         (rellevància  "Destacat")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  August_Malmström)
         (sala  Sala7)
    )

    ([Els_Déus_d'Asgard] of Obra_de_Arte
         (any_de_creació  1802)
         (estil  "Neoclassicisme")
         (rellevància  "Magistral")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  Nicolai_Abildgaard)
         (sala  Sala7)
    )

    ([El_Baladreig_de_Loki] of Obra_de_Arte
         (any_de_creació  1878)
         (estil  "Romanticisme")
         (rellevància  "Magistral")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  Peter_Nicolai_Arbo)
         (sala  Sala7)
    )

    ([Els_Nans_d'Alviss] of Obra_de_Arte
         (any_de_creació  1812)
         (estil  "Realisme")
         (rellevància  "Destacat")
         (temàtica  "Mitologia nórdica")
         (època  "XIX")
         (pintor  Johan_Fredrik_Eckersberg)
         (sala  Sala7)
    )
    ([La_Travessia_de_l'Ànima] of Obra_de_Arte
         (any_de_creació  1889)
         (estil  "Simbolisme")
         (rellevància  "Universal")
         (temàtica  "Espiritualitat")
         (època  "XIX")
         (pintor  Odilon_Redon)
         (sala  Sala5)
    )

    ([La_Pau_dels_Justos] of Obra_de_Arte
         (any_de_creació  1917)
         (estil  "Modernisme")
         (rellevància  "Destacat")
         (temàtica  "Espiritualitat")
         (època  "XX")
         (pintor  Joaquim_Mir)
         (sala  Sala5)
    )

    ([El_Ball_de_la_Vida] of Obra_de_Arte
         (any_de_creació  1899)
         (estil  "Postimpressionisme")
         (rellevància  "Universal")
         (temàtica  "Vida quotidiana")
         (època  "XIX")
         (pintor  Edvard_Munch)
         (sala  Sala2)
    )

    ([La_Festa_del_Poble] of Obra_de_Arte
         (any_de_creació  1788)
         (estil  "Neoclassicisme")
         (rellevància  "Magistral")
         (temàtica  "Vida quotidiana")
         (època  "XVIII")
         (pintor  Hubert_Robert)
         (sala  Sala2)
    )

    ([El_Cicle_dels_Herois] of Obra_de_Arte
         (any_de_creació  1794)
         (estil  "Neoclassicisme")
         (rellevància  "Referent")
         (temàtica  "Cultura grecorromana")
         (època  "XVIII")
         (pintor  Angelica_Kauffmann)
         (sala  Sala3)
    )

    ([La_Meditació_d'Hèrcules] of Obra_de_Arte
         (any_de_creació  1822)
         (estil  "Classicisme")
         (rellevància  "Destacat")
         (temàtica  "Cultura grecorromana")
         (època  "XIX")
         (pintor  Jean-Auguste-Dominique_Ingres)
         (sala  Sala3)
    )

    ([L'Alè_de_la_Revolució] of Obra_de_Arte
         (any_de_creació  1830)
         (estil  "Romanticisme")
         (rellevància  "Universal")
         (temàtica  "Història política")
         (època  "XIX")
         (pintor  Eugène_Delacroix)
         (sala  Sala4)
    )

    ([El_Consell_dels_Patriotes] of Obra_de_Arte
         (any_de_creació  1775)
         (estil  "Barroc tardà")
         (rellevància  "Referent")
         (temàtica  "Història política")
         (època  "XVIII")
         (pintor  Benjamin_West)
         (sala  Sala4)
    )

    ([Els_Dracs_de_la_Batalla] of Obra_de_Arte
         (any_de_creació  1861)
         (estil  "Romanticisme")
         (rellevància  "Destacat")
         (temàtica  "Història militar")
         (època  "XIX")
         (pintor  Franz_Russ)
         (sala  Sala6)
    )

    ([La_Mà_del_Destí] of Obra_de_Arte
         (any_de_creació  1890)
         (estil  "Postimpressionisme")
         (rellevància  "Magistral")
         (temàtica  "Història militar")
         (època  "XIX")
         (pintor  Franz_von_Lenbach)
         (sala  Sala6)
    )



    ;; Pintores
    ([Diego_Velazquez] of Pintor
     (crea  [Les_Menines][El_Gran_Consell])
     (nacionalitat  "Espanyola")
    )

    ([Eugène_Delacroix] of Pintor
         (crea  [La_Llibertat_guiant_al_poble][L'Educació_d'Aquil·les][La_Tragedia_d'Hamlet][L'Alè_de_la_Revolució])
         (nacionalitat  "Francesa")
    )

    ([Francisco_de_Goya] of Pintor
         (crea  [El_tres_de_maig_de_1808][El_Brindis_dels_Patriotes])
         (nacionalitat  "Espanyola")
    )

    ([Jacques-Louis_David] of Pintor
        (crea  [El_jurament_dels_Horacis][La_mort_de_Sòcrates][El_Triomf_d'Aquiles][La_Coronació_de_Carlomagne])
        (nacionalitat  "Francesa")
    )

    ([Jean-Honoré_Fragonard] of Pintor
         (crea  [El_gronxador])
         (nacionalitat  "Francesa")
    )

    ([Peter_Paul_Rubens] of Pintor
         (crea  [El_rapte_de_Prosèrpina][El_Pacte_dels_Herois])
         (nacionalitat  "Flamenca")
    )

    ([Rembrandt_van_Rijn] of Pintor
         (crea  [La_Ronda_de_Nit])
         (nacionalitat  "Holandesa")
    )

    ([Vincent_Van_Gogh] of Pintor
         (crea  [La_nit_estrellada])
         (nacionalitat  "Holandesa")
    )

    ([Édouard_Manet] of Pintor
         (crea  [El_dinar_campestre])
         (nacionalitat  "Francesa")
    )

    ([Pieter_de_Hooch] of Pintor
         (crea  [El_Mercat])
         (nacionalitat  "Holandesa")
    )

    ([Caspar_David_Friedrich] of Pintor
         (crea  [La_Tempesta])
         (nacionalitat  "Alemanya")
    )

    ([Gustave_Courbet] of Pintor
        (crea  [La_Gran_Bouffée][El_Riu_en_Flames][La_Promesa_de_Llibertat][L'Últim_Ressò_d'Àtila])
        (nacionalitat  "Francesa")
    )

    ([Théodore_Géricault] of Pintor
         (crea  [A_Dos_passes_de_La_Guerra][La_Victòria_de_Zama])
         (nacionalitat  "Francesa")
    )

    ([Angelica_Kauffmann] of Pintor
         (crea  [El_Fill_de_La_Cultura][El_Cicle_dels_Herois])
         (nacionalitat  "Suïssa")
    )
    ([John_Trumbull] of Pintor
         (crea [La_Declaració_d'Independència])
         (nacionalitat  "Estatunidenca")
    )

    ([Andrea_Mantegna] of Pintor
         (crea  [El_Triomf_de_la_Virtut])
         (nacionalitat  "Italiana")
    )

    ([Antonio_Canova] of Pintor
         (crea  [El_Somni_dels_Déus][La_Flamma_de_la_Llibertat])
         (nacionalitat  "Italiana")
    )

    ([Luca_Giordano] of Pintor
         (crea  [Les_Carretas_d'Alba][El_Somni_d'un_Rei])
         (nacionalitat  "Italiana")
    )

    ([Claude_Monet] of Pintor
         (crea  [L'Horitzó_d'Argent])
         (nacionalitat  "Francesa")
    )
     ([Bartolomé_Esteban_Murillo] of Pintor
         (crea  [El_Cant_dels_Angels][El_Somni_dels_Justos])
         (nacionalitat  "Espanyola")
    )

    ([Jean-Baptiste_Pater] of Pintor
         (crea  [L'Escena_del_Bosc][La_Dansa_dels_Serfs][La_Meditació_d'Hèrcules])
         (nacionalitat  "Francesa")
    )

    ([William_Sadler] of Pintor
         (crea  [La_Batalla_de_Waterloo][El_Llamp_del_Destí])
         (nacionalitat  "Irlandesa")
    )

    ([Matthias_Stom] of Pintor
         (crea  [El_Tempteig_de_Sant_Antoni][La_Contemplació_Divina])
         (nacionalitat  "Holandesa")
    )

    ([Ivan_Aivazovsky] of Pintor
         (crea  [El_Port_d'Alba][L'Aurora_de_l'Oceà])
         (nacionalitat  "Russa")
    )

    ([Camille_Corot] of Pintor
         (crea  [L'Alé_dels_Camps][Els_Camps_de_Primavera])
         (nacionalitat  "Francesa")
    )

    ([Sebastiano_Ricci] of Pintor
     (crea  [El_Déu_del_Mar][La_Visió_del_Sant][El_Rei_del_Nord])
     (nacionalitat  "Italiana")
    )

    ([Paul_Cézanne] of Pintor
         (crea  [La_Posta_de_Sol][El_Jardí_Seren])
         (nacionalitat  "Francesa")
    )
    ([Peter_Nicolai_Arbo] of Pintor
         (crea  [La_Batalla_de_Ragnarök] [El_Baladreig_de_Loki])
         (nacionalitat  "Noruega")
    )
    ([Carl_Loewe] of Pintor
         (crea  [El_Viatge_d'Odin])
         (nacionalitat  "Alemanya")
    )
    ([Henry_Fuseli] of Pintor
         (crea  [Thor_i_la_Serp])
         (nacionalitat  "Suïssa")
    )
    ([Johan_Fredrik_Eckersberg] of Pintor
         (crea  [El_Cant_dels_Víking] [Els_Nans_d'Alviss])
         (nacionalitat  "Noruega")
    )
    ([Constantin_Hansen] of Pintor
         (crea  [La_Creació_dels_Mons])
         (nacionalitat  "Dinamarca")
    )
    ([Jens_Juel] of Pintor
         (crea  [El_Sacrifici_d'Odin])
         (nacionalitat  "Dinamarca")
    )
    ([August_Malmström] of Pintor
         (crea  [Freya_i_els_Gats])
         (nacionalitat  "Suècia")
    )
    ([Nicolai_Abildgaard] of Pintor
         (crea  [Els_Déus_d'Asgard])
         (nacionalitat  "Dinamarca")
    )
    ([Odilon_Redon] of Pintor
         (crea  [La_Travessia_de_l'Ànima])
         (nacionalitat  "Francesa")
    )

    ([Joaquim_Mir] of Pintor
            (crea  [La_Pau_dels_Justos])
            (nacionalitat  "Catalana")
    )
    ([Edvard_Munch] of Pintor
         (crea  [El_Ball_de_la_Vida])
         (nacionalitat  "Noruega")
    )

    ([Hubert_Robert] of Pintor
         (crea  [La_Festa_del_Poble])
         (nacionalitat  "Francesa")
    )
    ([Benjamin_West] of Pintor
         (crea  [El_Consell_dels_Patriotes])
         (nacionalitat  "Estatunidenca")
    )
    ([Franz_Russ] of Pintor
         (crea  [Els_Dracs_de_la_Batalla])
         (nacionalitat  "Austríaca")
    )
    ([Franz_von_Lenbach] of Pintor
         (crea  [La_Mà_del_Destí])
         (nacionalitat  "Alemanya")
    )
    ;; Salas
    ([Sala1] of Sala
         (conté  [La_Ronda_de_Nit] [La_nit_estrellada] [La_Tempesta] 
         [L'Horitzó_d'Argent][El_Port_d'Alba] [L'Aurora_de_l'Oceà] 
         [La_Posta_de_Sol] [El_Jardí_Seren])
         (porta_a   [Sala2] [Sala3] [Sala4] [Sala5] [Sala6][Sala7])
         (temàtica  "Paisatges i emocions")
    )

    ([Sala2] of Sala
         (conté  [El_dinar_campestre] [El_gronxador] [Les_Menines] [El_Mercat] 
         [La_Gran_Bouffée] [Les_Carretas_d'Alba][L'Escena_del_Bosc] [La_Dansa_dels_Serfs] 
         [L'Alé_dels_Camps] [Els_Camps_de_Primavera] [El_Ball_de_la_Vida] [La_Festa_del_Poble])
         (porta_a  [Sala1] [Sala3] [Sala4][Sala5][Sala6][Sala7])
         (temàtica  "Vida quotidiana")
    )

    ([Sala3] of Sala
         (conté  [El_jurament_dels_Horacis] [El_rapte_de_Prosèrpina] [La_mort_de_Sòcrates] 
         [El_Fill_de_La_Cultura] [El_Somni_dels_Déus] [El_Triomf_d'Aquiles]
         [El_Triomf_de_la_Virtut][L'Educació_d'Aquil·les] [El_Cicle_dels_Herois] [La_Meditació_d'Hèrcules])
         (porta_a  [Sala1] [Sala2] [Sala4][Sala5][Sala6][Sala7])
         (temàtica  "Cultura grecorromana")
    )

    ([Sala4] of Sala
         (conté  [La_Llibertat_guiant_al_poble] [El_Brindis_dels_Patriotes] [El_Llamp_del_Destí] 
         [El_Riu_en_Flames] [La_Promesa_de_Llibertat][La_Flamma_de_la_Llibertat]
         [El_Pacte_dels_Herois][La_Declaració_d'Independència]
         [El_Somni_d'un_Rei][El_Gran_Consell] [L'Alè_de_la_Revolució] [El_Consell_dels_Patriotes]
         )
         (porta_a  [Sala1] [Sala2] [Sala3][Sala5][Sala6][Sala7])
         (temàtica  "Història política")
    )
    ([Sala5] of Sala
         (conté  [El_Cant_dels_Angels] [El_Tempteig_de_Sant_Antoni] [El_Déu_del_Mar] 
         [La_Contemplació_Divina] [La_Visió_del_Sant][El_Somni_dels_Justos] 
         [La_Travessia_de_l'Ànima] [La_Pau_dels_Justos])
         (porta_a  [Sala1] [Sala2] [Sala3] [Sala4][Sala6][Sala7])
         (temàtica  "Espiritualitat")
    )
    ([Sala6] of Sala
         (conté  [El_tres_de_maig_de_1808] [A_Dos_passes_de_La_Guerra] 
         [La_Batalla_de_Waterloo][La_Victòria_de_Zama]
         [El_Rei_del_Nord][L'Últim_Ressò_d'Àtila][La_Tragedia_d'Hamlet]
         [La_Coronació_de_Carlomagne] [Els_Dracs_de_la_Batalla] [La_Mà_del_Destí]
         )
         (porta_a  [Sala1] [Sala2] [Sala3][Sala5][Sala4][Sala7])
         (temàtica  "Història militar")
    )
    ([Sala7] of Sala
         (conté  [La_Batalla_de_Ragnarök] [El_Viatge_d'Odin] [Thor_i_la_Serp]
          [El_Cant_dels_Víking] [La_Creació_dels_Mons] [El_Sacrifici_d'Odin] 
          [Freya_i_els_Gats] [Els_Déus_d'Asgard] [El_Baladreig_de_Loki] 
          [Els_Nans_d'Alviss])
         (porta_a [Sala1] [Sala2] [Sala3][Sala4][Sala5][Sala6]  )
         (temàtica  "Mitologia nórdica")
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
    (multislot preferencies_estil (type STRING))
    (multislot preferencies_temàtica (type STRING))
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
        (case 4 then (bind ?estil "Història política"))
        (case 5 then (bind ?estil "Espiritualitat"))
        (case 6 then (bind ?estil "Història política"))
        (case 7 then (bind ?estil "Història militar"))
        (case 8 then (bind ?estil "Mitologia nórdica"))
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
    (modify ?v (preferencies_estil ?prefs))
    (retract ?f)
)

(defrule recopilacio-informacio-visitant::consultar-preferencies-temàtica
    ?v <- (visita)
    ?f <- (tematiques preguntar)
    =>
    (bind ?temes (create$ "Vida quotidiana" "Paisatges i emocions" "Cultura grecorromana" "Història política" "Espiritualitat" "Història militar" "Mitologia nórdica"))
    (bind $?pref-indexs (pregunta-multiresposta "Seleccioneu les vostres temàtiques preferides:" ?temes))
    (bind ?prefs (create$))
    (foreach ?pref-i $?pref-indexs
        (bind ?prefs (create$ ?prefs (mapa-num-temàtica ?pref-i)))
    )
    (modify ?v (preferencies_temàtica ?prefs))
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
    (visita (num_persones ?np) (num_nens ?nn) (familia ?fam) (num_dies ?nd) (hores_visita ?hd) (nivell_cultural ?nc) (preferencies_estil ?pe) (preferencies_temàtica ?pt))
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
    (send [instVisitant] put-preferencies_estil ?pe)
    (send [instVisitant] put-preferencies_temàtica ?pt)
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

;a los cuadros se les da una puntuación por visitante y los añadimos al recorrido según esta
(defrule inferir-dades::crear-solucio
    ; (declare (salience 10))
    (not (obres-valorades))
    =>
    (assert (obres-valorades (quadres-recomanats)))
)


(defrule inferir-dades::valorar-nivell
    ;(declare (salience 2))
    (object (is-a Visitant) (name [instVisitant]) (coneixement ?coneixement) (preferencies_estil ?prestil) (preferencies_temàtica ?prtematica)) 
    ?rec <- (object (is-a quadres-recomanats) (nom-obra ?obra) (valoracio ?val))
    ?cont <- (object (is-a Obra_de_Arte) (rellevància ?rel) (temàtica ?tem) (estil ?estil))
    (test (eq (instance-name ?cont) (instance-name ?obra)))
    (not (valorat ?cont ?coneixement))  ; Verifica que no se haya valorado previamente
    ?ov <- (obres-valorades (quadres-recomanats $?llista))
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

    (if (eq ?tem  ?prtematica) then
        (bind ?val (+ ?val 100))  ; Sumar 100 si la temática coincide
    )
    (if (eq ?estil ?prestil) then
        (bind ?val (+ ?val 50))  ; Sumar 50 si el estilo coincide
    )
    ; Actualizar la valoración de la obra recomendada
    (send ?rec put-valoracio ?val)
    (assert (valorat ?cont ?coneixement))

    (retract ?ov)
    (assert (obres-valorades (quadres-recomanats $?llista ?rec)))
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
        (bind ?actual (ordenar-sales $?recs $?temps))
        (bind ?obra (nth$ 1 ?actual)) ; Extraer la obra de ?actual
        (bind ?t (nth$ 2 ?actual))    ; Extraer el tiempo de ?actual

        ; Encontrar el índice de la obra en la lista original
        (bind ?idx (member ?obra $?recs))
        (if ?idx then
            
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
