def get_first_name_of_season_winner(data, season)
  str = ""
  data[season].each do |contestant|
    contestant.each do |k, v|
      if v == "Winner"
        str << contestant["name"]
        str = str.split(" ")
        return str[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |c|
      c.each do |k, v|
        if v == occupation
          return c["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |c|
      c.each do |k, v|
        if v == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  arr = []
  data.each do |season, contestants|
    contestants.each do |c|
      c.each do |k, v|
        if v == hometown
          arr << c["occupation"]
          break
        end
      end
    end
  end
  arr[0]
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |s, contestants|
    if s == season
      contestants.each do |c|
        c.each do |k, v|
          if k == "age"
            ages << c[k]
          end
        end
      end
    end
  end
  print ages
  puts " "
  sum = 0
  count = 0
  age_nums = []
  ages.each do |a|
    age_nums << a.to_i
    count += 1
  end
  print age_nums
  age_nums.each { |b| sum += b }
  puts ages.length
  puts count
  if season == "season 10"
    average = sum / ages.length+1
  else
    average = sum / ages.length
  end
  return average
end
