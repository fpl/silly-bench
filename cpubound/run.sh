(time ./code_gcc) 2>&1|grep user|awk '{print "GCC: " $2}'
(time ./code_clang) 2>&1|grep user|awk '{print "Clang: " $2}'
(time ./code_rs) 2>&1|grep user|awk '{print "Rust: " $2}'