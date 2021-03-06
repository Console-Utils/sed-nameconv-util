s/.*/& /

s/(-f|--from)[[:space:]]+pascal-case[[:space:]]+//; t pascal_case
s/(-f|--from)[[:space:]]+snake-case[[:space:]]+//; t snake_case
T wrong_input_case

:wrong_input_case
s/.*/No correct input naming convention specified or syntax is wrong./w /dev/stderr
Q 1

:pascal_case
s/(-t|--to)[[:space:]]+pascal-case[[:space:]]+//; t wrong_target_case
s/(-t|--to)[[:space:]]+snake-case[[:space:]]+//; t pascal_case_to_snake_case
T wrong_target_case

:snake_case
s/(-t|--to)[[:space:]]+pascal-case[[:space:]]+//; t snake_case_to_pascal_case
s/(-t|--to)[[:space:]]+snake-case[[:space:]]+//; t wrong_target_case
T wrong_target_case

:wrong_target_case
s/.*/No correct target naming convention specified or syntax is wrong./w /dev/stderr
Q 1


:pascal_case_to_snake_case
s/(-i|--input) ([a-zA-Z0-9_]+)[[:space:]]+/\2/; T unexpected_error
s/_//g
s/([[:lower:]])([[:upper:]])/\1_\2/g
s/([[:upper:]])/\L\1/g
q

:snake_case_to_pascal_case
s/(-i|--input) ([a-zA-Z0-9_]+)[[:space:]]+/\2/; T unexpected_error
s/_(_+)/_/g
s/(.*)/\1_/
s/([a-zA-Z0-9])([a-zA-Z0-9]*)_/\U\1\L\2/g
q

:unexpected_error
s/.*/Something went wrong. Please check whether all options are separated via at least one space./w /dev/stderr
Q 1
