#!/usr/bin/scheme --script
(define result 1)
(do ((i 1 (1+ i)))
    ((> i 1000000000))
    (set! result i)
)
(display result) (newline)
