#!/bin/bash

printf "setupATLAS\n"
setupATLAS

printf "\tSETTING UP: LCG_104c_ATLAS_6\n"
printf "lsetup \"lcgenv -p LCG_104c_ATLAS_6 x86_64-el9-gcc13-opt gcc\""
lsetup "lcgenv -p LCG_104c_ATLAS_6 x86_64-el9-gcc13-opt gcc"

