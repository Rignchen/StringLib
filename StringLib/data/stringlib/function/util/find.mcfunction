##########################################################################################################
##                                              HOW TO USE                                              ##
##########################################################################################################
## 1. Set the following data in the 'stringlib:input find' data storage:                                ##
##    - String: Original string                                                                         ##
##    - Find: String you want to search for within the original string                                  ##
## 2. Run this function with the 'stringlib:input find' data storage                                    ##
##                                                                                                      ##
## Output: Start index of the first occurrence of the string (No output if nothing is found)            ##
##         Example:                                                                                     ##
##                 - String: "Hello World!"                                                             ##
##                 - Find: "World"                                                                      ##
##                 => Output: 6                                                                         ##
##                                                                                                      ##
## The output is found in the 'stringlib:output find' data storage                                      ##
##########################################################################################################

# Search for 'Find' inside 'String'
data modify storage stringlib:temp data.String set from storage stringlib:input find.String
execute store result score #StringLib.FindLength StringLib run data get storage stringlib:input find.Find
execute store result score #StringLib.CharsTotal StringLib run data get storage stringlib:temp data.String
scoreboard players operation #StringLib.CharsTotal StringLib -= #StringLib.FindLength StringLib
scoreboard players set #StringLib.Index StringLib 1
function stringlib:zprivate/find/main
data remove storage stringlib:temp data
