##########################################################################################################
##                                              HOW TO USE                                              ##
##########################################################################################################
## 1. Set the following data in the 'stringlib:input split' data storage:                               ##
##    - String: Original string                                                                         ##
##    - Separator: String you want to replace                                                           ##
##    - n: How many times should the string get splited                                                 ##
##        - Unset or 0: All                                                                             ##
##        - Positive: First n                                                                           ##
##        - Negative: Last -n                                                                           ##
## 2. Run this function                                                                                 ##
##                                                                                                      ##
## Output: String with all the 'Find' instances replaced by 'Replace'                                   ##
##         Example:                                                                                     ##
##                 - String: "Hello World !"                                                            ##
##                 - Separator: " "                                                                     ##
##                 - Amount: 1                                                                          ##
##                 => Output: ["Hello", "World !"]                                                      ##
##                                                                                                      ##
##                 - String: "Hello World !"                                                            ##
##                 - Separator: " "                                                                     ##
##                 - Amount: 0                                                                          ##
##                 => Output: ["Hello", "World", "!"]                                                   ##
##                                                                                                      ##
##                 - String: "2 + 2 + 4 = 8"                                                            ##
##                 - Separator: "+"                                                                     ##
##                 - Amount: -1                                                                         ##
##                 => Output: ["2 + 2 ", " 4 = 8"]                                                      ##
##                                                                                                      ##
## Return value: Number of texts in the output storage                                                  ##
##                                                                                                      ##
## The output is found in the 'stringlib:output split' data storage                                     ##
##########################################################################################################

# Get the position where the separator are located
data modify storage stringlib:input split.Find set from storage stringlib:input split.Separator
execute store result score #StringLib.SplitAmount StringLib run function stringlib:util/find with storage stringlib:input split
scoreboard players operation #StringLib.RemainingSplits StringLib = #StringLib.SplitAmount StringLib
data remove storage stringlib:input split.Find

# Empty the output
data modify storage stringlib:output find set value []

# Get the list of required variables
data modify storage stringlib:temp data.String set from storage stringlib:input split.String
data modify storage stringlib:temp data.SplitIndexes set from storage stringlib:output find

# Get separator length
execute store result score #StringLib.FindLength StringLib run data get storage stringlib:input split.Separator

# Split the string
execute if score #StringLib.RemainingSplits StringLib matches 0 run data modify storage stringlib:output split set value [$(String)]
execute unless score #StringLib.RemainingSplits StringLib matches 0 run function stringlib:zprivate/split/main

# Return
scoreboard players add #StringLib.SplitAmount StringLib 1
return run scoreboard players get #StringLib.SplitAmount StringLib

