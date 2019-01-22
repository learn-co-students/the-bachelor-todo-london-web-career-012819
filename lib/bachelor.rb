require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  name = data[season][0]["name"].split(" ")
  first_name = name[0]


end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, player_array|
    player_array.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end

  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  number_of_contestants = 0

  data.each do |season, player_array|
    player_array.each do |hash|
      if hash["hometown"] == hometown
        number_of_contestants += 1
      end
    end
  end

  number_of_contestants
end

def get_occupation(data, hometown)

  data.each do |season, player_array|
    player_array.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
  # code here
end

def get_average_age_for_season(data, season)
  # code here
  number_of_people = 0
  total_age = 0

  data[season].each do |hash|
      total_age += hash["age"].to_f
      number_of_people += 1
  end

  return (total_age / number_of_people).round

end










#
