# get data from the macro:
# - $(String): The string to split
# - $(SplitStart): Start of the split
# - $(SplitStop): End of the split
# output storage: stringlib:output split

$data modify storage stringlib:output split prepend from storage stringlib:input split.String $(SplitEnd) -1
$data modify storage stringlib:temp data.String set from storage stringlib:input split.String 0 $(SplitStart)

