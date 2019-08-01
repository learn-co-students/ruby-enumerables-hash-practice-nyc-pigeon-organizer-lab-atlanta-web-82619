## NYC Pigeon Organizer

## Learning Goals

- Iterate over nested hashes
- Sort and manipulate hashes

## Introduction

Being able to navigate data is a critical programming skill. Sometimes, data we
need isn't in an ideal structure and we need to reorganize it. In this lab,
we'll be doing just that - taking a hash, reorganizing the data, and returning
that newly structured data as a _new_ hash.

## Instructions

![NYC Pigeon](https://curriculum-content.s3.amazonaws.com/ruby-enumerables/pigeon-organizer/Image_12_PIGEON.png)

You are helping a research group study pigeons in New York City. You are given
the following collected data on New York City pigeons in the form of a hash:

```ruby
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
```

The data above is organized by attributes - `:color`, `:gender`, and `:lives`,
each a hash. Within these hashes are arrays of pigeon names.

We want this data, but in a different structure. Rather than sorting by
attributes, your task is to create a hash where _pigeon names_ are the keys,
with each name pointing to a hash of their attributes.

Iterate over the hash above, collecting each pigeon by name and insert it as the
**key** of a new hash. Each of these hashes should have `:color`, `:gender`, and
`:lives` keys assigned to arrays of info about that particular pigeon. Your
output should look something like the hash below:

```ruby
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}
```

Write your code in the provided `nyc_pigeon_organizer` method. The tests in this
lab will use this method, passing in the original `pigeon_data` hash. Use
`learn` and the test results to guide your progress.

## Alternate Data Set

The goal here is to implement a process for converting _any_ hash data that is
in the original structure. The final tests in this lab use a alternate set of
data to specifically test for this:

```ruby
pigeon_data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
}
```

Even though the names are different, the hash follows the same format as our
original `pigeon_data`, so passing this hash into the `nyc_pigeon_organizer`
should result in a new hash with "Luca" and "Lola" as the top level keys,
pointing to hashes with their particular attributes.

## Conclusion

Building programs requires data. Whether it is a set of numbers, user input,
account information, or info scraped from websites, we need data to make our
programs useful. Data, however, is not always organized in the way we want it.
Being able to reorganize our data to make it even more useful is a skill we
you will frequently use as you build more and more complex applications.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/nyc-pigeon-organizer' title='NYC Pigeon Organizer'>NYC Pigeon Organizer</a> on Learn.co and start learning to code for free.</p>
