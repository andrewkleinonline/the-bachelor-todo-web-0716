require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  #binding.pry
  winner = ""

  data[season].each do |contestant, attributes|
    #binding.pry
    if contestant["status"] == "Winner"
      winner = contestant["name"]
    end
  end

  winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  contestant_with_occupation = ""

  data.each do |season, contestants|
    #binding.pry
    contestants.each do |attributes|
      if attributes["occupation"] == occupation
        contestant_with_occupation = attributes["name"]
      end
    end
  end

  contestant_with_occupation
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0

  data.each do |season, contestants|

    contestants.each do |attributes|
      if attributes["hometown"] == hometown
        hometown_count += 1
      end
    end
  end

  hometown_count
end

def get_occupation(data, hometown)
  # code here

  occupation_from_hometown = ""

  data.each do |season, contestants|
    contestants.each do |attributes|
      if (attributes["hometown"] == hometown) && (occupation_from_hometown == "")
        occupation_from_hometown = attributes["occupation"]
      end
    end
  end

  occupation_from_hometown
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0.0
  data[season].each do |contestant|
    #binding.pry
    total_age += contestant["age"].to_f
  end

  average_age = (total_age/(data[season].length.to_f)).round
end



