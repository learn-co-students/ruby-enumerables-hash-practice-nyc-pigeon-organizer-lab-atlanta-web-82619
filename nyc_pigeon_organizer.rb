
pigeons = {
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

def nyc_pigeon_organizer(data)

  names = []
  pigeon_hash = {}

  data.each do |attribute, items|
    items.each do |feature, arr|
      arr.each do |name|
        names << name if !names.include?(name)
      end
    end
  end
  
  names.each do |nombre|
    pigeon_hash[nombre] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_hash[nombre][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          pigeon_hash[name][attribute] << feature.to_s if name == nombre
        end
      end
    end
  end
  
  pigeon_hash

end

nyc_pigeon_organizer(pigeons)
