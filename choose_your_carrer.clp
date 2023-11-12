(defrule p1
 ?p <- (start)
 =>
(printout t "Are you interested in working with computers? ")
 (assert (1a (read)))
 (retract ?p))

(defrule p2
 (1a no)
 =>
 (printout t "Are you interested in technology-related fields without extensive programming? ")
 (assert (2b (read))))

(defrule p3
 (1a no)
 (2b no)
 =>
 (printout t "Consider roles in technical writing, documentation, or UX design within the technology field." crlf))

(defrule p4
 (1a no)
 (2b yes)
 =>
 (printout t "Explore roles in technology management, IT strategy or project management." crlf))

(defrule p5
 (1a yes)
 =>
 (printout t "Do you enjoy solving problems and writing code? ")
 (assert (2a (read))))

(defrule p6
 (1a yes)
 (2a yes)
 =>
 (printout t "Are you interested in working on S/W development? ")
 (assert (3a (read))))

(defrule p7
 (1a yes)
 (2a no)
 =>
 (printout t "Are you interested in working with Computer systems and Networks? ")
 (assert (3b (read))))

(defrule p8
 (2a yes)
 (3a yes)
=>
 (assert (2ay_3ay yes)))

(defrule p9
 (1a yes)
 (2ay_3ay yes)
=>
 (printout t "Consider specializing in areas like S/W development, application programming or S/W engineering." crlf))

(defrule p10
(2a yes)
(3a no)
=>
(assert (2ay_3an yes)))

(defrule p11
(1a yes)
(2ay_3an yes)
=>
(printout t "Explore like BA, PM or technical writing within the computer science field." crlf))



(defrule p12
(2a no)
(3b yes)
=>
(assert (2an_3by yes)))

(defrule p13
(1a yes)
(2an_3by yes)
=>
(printout t "Explore roles in Network Administration, Cybersecurity or System Administration." crlf))


(defrule p14
(2a no)
(3b no)
=>
(assert (2an_3bn yes)))

(defrule p15
(1a yes)
(2an_3bn yes)
=>
(printout t "Consider roles like IT support, Db Administration or IT Counselling." crlf))

(deffacts startup
 (start))