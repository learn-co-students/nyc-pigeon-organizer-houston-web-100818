require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |key, value|
    value.each do |char, array|
      array.each do |name|
        if !pigeon_list.key?(name)
          #pigeon_list = {"Theo" => {:color => ["purple"]}}
          pigeon_list[name] = {key => [char.to_s]}

        else
          if pigeon_list[name].key?(key)
            if !pigeon_list[name][key].include?(char.to_s)
              #pigeon_list = {"Theo" => {:color => ["purple","grey"]}}
              pigeon_list[name][key] << char.to_s                                
            end
          else
            pigeon_list[name][key] = [char.to_s]
          end

        end        
      end
    end
  end
  pigeon_list
end
