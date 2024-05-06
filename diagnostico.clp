(defrule pregunta-fiebre
    =>
    (printout t "¿Tiene fiebre? (si/no): ")
    (assert (respuesta-fiebre (read)))
)

(defrule fiebre-si
    (respuesta-fiebre si)
    =>
    (printout t "¿Tiene dolor de garganta? (si/no): ")
    (assert (respuesta-dolor-garganta (read)))
)

(defrule fiebre-no
    (respuesta-fiebre no)
    =>
    (printout t "¿Congestion Nasal? (si/no): ")
    (assert (respuesta-congestion-nasal2 (read)))
)

(defrule congestión-nasal2-si
    (respuesta-congestión-nasal2 si)
    =>
    (printout t "Resfriado" crlf)
)

(defrule congestión-nasal2-no
    (respuesta-congestión-nasal2 no)
    =>
    (printout t "Asma" crlf)
)

(defrule dolor-garganta-si
    (respuesta-dolor-garganta si)
    =>
    (printout t "Gripe" crlf)
)

(defrule dolor-garganta-no
    (respuesta-dolor-garganta no)
    =>
    (printout t "¿Tos? (si/no): ")
    (assert (respuesta-tos (read)))
)

(defrule tos-si
    (respuesta-tos si)
    =>
    (printout t "¿Congestion Nasal? (si/no): ")
    (assert (respuesta-congestion-nasal (read)))
)

(defrule tos-no
    (respuesta-tos no)
    =>
    (printout t "¿Falta de gusto? (si/no): ")
    (assert (respuesta-falta-gusto (read)))
)

(defrule falta-gusto-si
    (respuesta-falta-gusto si)
    =>
    (printout t "COVID-19" crlf)
)

(defrule falta-gusto-no
    (respuesta-falta-gusto no)
    =>
    (printout t "Influenza" crlf)
)

(defrule congestion-nasal-si
    (respuesta-congestion-nasal si)
    =>
    (printout t "¿Dolor Muscular? (si/no): ")
    (assert (respuesta-dolor-muscular (read)))
)

(defrule congestion-nasal-no
    (respuesta-congestion-nasal no)
    =>
    (printout t "Influenza" crlf)
)

(defrule dolor-muscular-si
    (respuesta-dolor-muscular si)
    =>
    (printout t "Influenza" crlf)
)

(defrule dolor-muscular-no
    (respuesta-dolor-muscular no)
    =>
    (printout t "¿Dificultad respiratoria? (si/no): ")
    (assert (respuesta-dificultad-respiratoria (read)))
)

(defrule dificultad-respiratoria-si
    (respuesta-dificultad-respiratoria si)
    =>
    (printout t "Bronquitis" crlf)
)

(defrule dificultad-respiratoria-no
    (respuesta-dificultad-respiratoria no)
    =>
    (printout t "Asma" crlf)
)

