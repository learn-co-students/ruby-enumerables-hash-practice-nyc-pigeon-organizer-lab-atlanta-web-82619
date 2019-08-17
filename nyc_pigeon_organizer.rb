require "pry"
def nyc_pigeon_organizer(data)
  dem_pidgeys = {}
  data.each do |pidgey_property, hash|
    hash.each do |pidgey_attribute, array|
      array.each do |pidgey|
        
        if !dem_pidgeys.has_key?(pidgey)
          dem_pidgeys[pidgey] = {}
        end
        
        if !dem_pidgeys[pidgey].has_key?(pidgey_property)
          dem_pidgeys[pidgey][pidgey_property] = []
        end
        
        if !dem_pidgeys[pidgey][pidgey_property].include?(pidgey_attribute)
          dem_pidgeys[pidgey][pidgey_property] << pidgey_attribute.to_s
        end
      end
    end
  end
  dem_pidgeys
  #binding.pry
end
