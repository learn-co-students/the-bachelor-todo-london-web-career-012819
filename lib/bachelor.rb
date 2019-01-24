require"pry"
def get_first_name_of_season_winner(data, season)
first_name = ""
  data[season].each do |attribute|
       if attribute["status"] == "Winner"
         first_name = attribute["name"].split.first
       end
         end
return first_name
end

def get_contestant_name(data, occupation)
  first_name = ""
    data.each do |attribute|
          #binding.pry
         if attribute["occupation"] == occupation
           name = attribute["name"]
         end
           end
  return name
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
