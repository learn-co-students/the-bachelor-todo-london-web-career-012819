require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |s, array|

    if s.to_s == season
      x = 0
      while x < array.length
        if array[x]["status"] == "Winner"
          winner = array[x]["name"]
        end
        x += 1
      end
    end
  end
  x = winner.split
  x[0]
end

def get_contestant_name(data, occupation)
  # code here
  contestant = ""
  data.each do |s, array|
    array.each do |x|
      if x["occupation"] == occupation
        contestant = x["name"]
      end
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |s, array|
    array.each do |x|
      if x["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |s, array|
    array.each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  running = 0
  data.each do |s, array|
    if s.to_s == season
      array.each do |x|
        count += 1
        running += x["age"].to_f
      end
    end
  end
  (running / count).round
end


# hash = {
#    "season 19":[
#       {
#          "name":"Ashley Iaconetti",
#          "age":"26",
#          "hometown":"Great Falls, Virginia",
#          "occupation":"Nanny/Freelance Journalist",
#          "status":""
#       },
#       {
#          "name":"Becca Tilley",
#          "age":"26",
#          "hometown":"Shreveport, Louisiana[b]",
#          "occupation":"Chiropractic Assistant",
#          "status":""
#       }
#    ],
#    "season 10":[
#       {
#          "name":"Tessa Horst",
#          "age":"26",
#          "hometown":"San Francisco, CA",
#          "occupation":"Social Worker",
#          "status":"Winner"
#       },
#       {
#          "name":"Bevin Nicole Powers",
#          "age":"28",
#          "hometown":"Palo Alto, CA",
#          "occupation":"Assistant",
#          "status":"Week 8"
#       }
#     ]
# }

data = JSON.parse(File.read('spec/fixtures/contestants.json'))
#get_contestant_name(data, "occupation")
get_average_age_for_season(data, "season 10")
