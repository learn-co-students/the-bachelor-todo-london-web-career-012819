# data is a hash
#
require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seasons_num, contestant_info|
    if seasons_num.to_s == season
      contestant_info.each do |key|
        if key["status"] === "Winner"
          return key["name"].split(' ').first
        else
          return "No Winner"
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  person = nil
  data.each do |seasons_num, contestant_info|
    contestant_info.each do |key|
      if key["occupation"] == occupation
        person = key["name"]
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  array = []
  data.each do |seasons_num, contestant_info|
    contestant_info.each do |key|
      array << key["hometown"]

    end
  end

  array.each do |x|
    if x == hometown
      counter += 1
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons_num, contestant_info|
    contestant_info.each do |key|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  age_int = []
  data.each do |seasons_num, contestant_info|
    if seasons_num.to_s == season
      contestant_info.each do |key|
        age_array << key["age"].to_s
      end
    end
  end

  age_array.each do |x|
    age_int << x.to_i
  end
  average = (age_int.sum.to_f / age_int.length.to_f).round
end
