---
  tags: hashes, iteration
  languages: ruby
---

# NYC Pigeon Organizer

### Skills: Hashes, Iteration, Sorting

## Instructions

You are given the following collected data on New York City pigeons in the form of a hash.

```ruby
pigeon_data = {
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
```

1. Iterate over the hash above, collecting each pigeon by name and insert it
as the key of a new hash where each name holds the attributes for that bird. 
Your output should match the hash below:

```ruby
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => "male",
    :lives => "Subway"
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => "male",
    :lives => "Library"
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => "male",
    :lives => "Central Park"
  },
  "Ms .K" => {
    :color => ["grey", "white"],
    :gender => "female",
    :lives => "Central Park"
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => "female",
    :lives => "Subway"
  },
  "Andrew" => {
    :color => ["white"],
    :gender => "male",
    :lives => "City Hall"
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => "male",
    :lives => "Central Park"
  }
}
```