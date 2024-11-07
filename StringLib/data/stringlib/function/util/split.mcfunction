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


