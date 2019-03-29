require 'pry'

# holiday_supplies = {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies| 
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  supply = []
  holiday_hash[:winter].each do |holiday, supplies| 
    supply << supplies 
  end
  supply.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday_name, supplies|
      puts "  #{holiday_name.to_s.split("_").collect { |element| element.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end 
  end 

end

def all_holidays_with_bbq(holiday_hash)


end







