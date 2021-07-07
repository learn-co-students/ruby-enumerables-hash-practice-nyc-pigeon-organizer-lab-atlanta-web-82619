def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  
  data.each do |color_name, color_hash|
    color_hash.each do |color, name_array|
      name_array.each do |name|
        if pigeon_hash[name] == nil
          pigeon_hash[name] = {}
          pigeon_hash[name][color_name] = []
        else
          pigeon_hash[name][color_name] = []
        end
      end
    end
  end
  
  pigeon_hash.each do |listed_names, values|
    values.each do |pigeon_hash_values, array|
      data.each do |color_name, color_hash|
        color_hash.each do |color, name_array|
          name_array.each do |pigeon|
            if pigeon == listed_names && pigeon_hash_values == color_name
              pigeon_hash[listed_names][pigeon_hash_values] << color.to_s
            end
          end
        end
      end
    end
  end
  return pigeon_hash
end