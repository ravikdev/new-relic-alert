# count-value = {
#    "0" = {
#         name = "value-1-alert-foreach"
#     },
#     # For first key 0 we passing name(key value pair)
#    "1" = {
#         name = "value-2-alert-foreach"
#     },
#    "2" = {
#         name = "value-3-alert-foreach"
#     }
# }

count-value = {
   "0" = {
        name = "value-1-alert-foreach"
        incident_preference = "PER_CONDITION"
    },
   "1" = {
        name = "value-2-alert-foreach"
        incident_preference = "PER_POLICY"

    },
   "2" = {
        name = "value-3-alert-foreach"
        incident_preference = "PER_CONDITION"

    }
}