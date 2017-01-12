# butnot
code for a series of experiments on polar adjectives and constructions they participate in

input: data from jq outtake

getnarrow takes a 2+2 window around target words 
getsentence a longer

produce table files (found in data sister directory) with target word - <tab> - context of word (including word itself)

tabulate then takes those and produces for every 10k lines an ouput of every item seen from the list

those are now in table.list and tablenarrow.list

