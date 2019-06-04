require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"].downcase == "winner"
      return contestants["name"].split(" ").first
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
    # binding.pry
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_of_ages = 0
  num_of_contestants = 0
  data[season].each do |contestants|
    sum_of_ages += contestants["age"].to_i
    num_of_contestants += 1
    # binding.pry
  end
  (sum_of_ages.to_f/num_of_contestants).round
end
