########################
# NYC PIGEON ORGANIZER #
########################

# The following data on NYC pidgeons has been collected from around the city.

pidgeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# Use the collected data above and rebuild it into the example hash below 
# that displays the individual attributes of each bird organized by name.

# pidgeon_list = {
#   "Theo" => {
#     :colors => ["Purple", "Grey"],
#     :gender => "Male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :colors => ["Purple", "Grey"],
#     :gender => "Male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :colors => ["Purple"],
#     :gender => "Male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :colors => ["Grey", "White"],
#     :gender => "Female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :colors => ["Brown", "White"],
#     :gender => "Female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :colors => ["White"],
#     :gender => "Male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :colors => ["Brown", "White"],
#     :gender => "Male",
#     :lives => "Central Park"
#   }
# }