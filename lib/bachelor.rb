require 'pry'

def get_first_name_of_season_winner(data, season)
    data[season].each do |data_hash|
      if data_hash["status"].downcase == "winner"
          return data_hash["name"].split(" ").first
        end
      end
    end


def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  arr = []
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        arr << contestants
      end
    end
  end
  arr.count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0
  arr = []
  data[season].each do |data_hash|
    age_sum += (data_hash["age"]).to_i
    arr << data_hash
  end
  average = (age_sum / arr.count.to_f).round(0)
  average

end
