#!/usr/bin/env racket
#lang racket/base

(define result 1)
(do ((i 1 (+ 1 i)))
    ((> i 1000000000))
    (set! result i)
)
(display result) (newline)
