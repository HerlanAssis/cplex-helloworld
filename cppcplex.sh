#!/bin/bash
cppfile=$1
concert_include='/opt/ibm/ILOG/CPLEX_Studio1210/concert/include'
cplex_lib='/opt/ibm/ILOG/CPLEX_Studio1210/cplex/lib/x86-64_linux/static_pic'
cplex_include='/opt/ibm/ILOG/CPLEX_Studio1210/cplex/include'
concert_lib='/opt/ibm/ILOG/CPLEX_Studio1210/concert/lib/x86-64_linux/static_pic'

g++ $cppfile \
-DIL_STD \
-I${cplex_include} \
-I${concert_include} \
-L${cplex_lib} \
-L${concert_lib} \
-lilocplex \
-lconcert \
-lcplex \
-lm \
-lpthread \
-ldl