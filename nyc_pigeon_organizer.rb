def nyc_pigeon_organizer(data)
  # write your code here!
  list = {}
  data.each_pair do |attribute, value_list|
    value_list.each_pair do |value, name_list|
      name_list.each_with_index do |name, index|
        list[name] = {} if not list[name]
        list[name][attribute] = [] if not list[name][attribute]
        list[name][attribute].push(value.to_s)
      end
    end
  end
  
  return list
end
