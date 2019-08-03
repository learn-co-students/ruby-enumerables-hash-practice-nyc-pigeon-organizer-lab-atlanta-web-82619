def nyc_pigeon_organizer(data)
  result = {}
  data.each do |categories, attributes|
    attributes.each do |attribute, names|
      names.each do |name|
        result[name] = {
            color: [],
            gender: [],
            lives: []
          }
      end
    end
  end
  birds = result.keys
  birds.each do |bird|
    data.each do |categories, attributes|
      attributes.each do |attribute, names|
        names.each do |name|
          if name == bird
            result[name][categories].push(attribute.to_s)
          end
        end
      end
    end
  end
  return result
end
