#!/bin/bash

(time ./code) 2>&1|grep user|awk '{print "C: " $2}'
(time java Code) 2>&1|grep user|awk '{print "Java: " $2}'
(time ./code_rs) 2>&1|grep user|awk '{print "Rust: " $2}'
(time ./code.scm) 2>&1|grep user|awk '{print "Guile: " $2}'
(time ./code.R) 2>&1|grep user|awk '{print "R: " $2}'
(time ./code.m) 2>&1|grep user|awk '{print "Octave: " $2}'
(time ./code.pl) 2>&1|grep user|awk '{print "Perl: " $2}'
(time ./code.py) 2>&1|grep user|awk '{print "Python: " $2}'
(time ./code-smarter.py) 2>&1|grep user|awk '{print "Python-range: " $2}'
(time ./code.rb) 2>&1|grep user|awk '{print "Ruby: " $2}'
(time ./code.tcl) 2>&1|grep user|awk '{print "Tcl: " $2}'
