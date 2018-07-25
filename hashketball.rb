require 'pry'
def game_hash
 hash = {
        home:{:team_name => "Brooklyn Nets",
                :colors => [ "Black", "White"],
                :players => { 
                          
                        "Alan Anderson" =>{
                                          :number => 0,
                                          :shoe => 16,
                                          :points => 22,
                                          :rebounds => 12,
                                          :assists => 12,
                                          :steals => 3,
                                          :blocks => 1,
                                          :slam_dunks => 1
                                        },
                         "Reggie Evans" =>{
                                          :number => 30,
                                          :shoe => 14,
                                          :points => 12,
                                          :rebounds => 12,
                                          :assists => 12,
                                          :steals => 12,
                                          :blocks => 12,
                                          :slam_dunks => 7
                                        },
                         "Brook Lopez" =>{
                                          :number => 11,
                                          :shoe => 17,
                                          :points => 17,
                                          :rebounds => 19,
                                          :assists => 10,
                                          :steals => 3,
                                          :blocks => 1,
                                        :slam_dunks => 15
                                        },
                        "Mason Plumlee" =>{
                                          :number => 1,
                                          :shoe => 19,
                                          :points => 26,
                                          :rebounds => 12,
                                          :assists => 6,
                                          :steals => 3,
                                          :blocks => 8,
                                          :slam_dunks => 5
                                        },
                         "Jason Terry" => {
                                          :number => 31,
                                          :shoe => 15,
                                          :points => 19,
                                          :rebounds => 2,
                                          :assists => 2,
                                          :steals => 4,
                                          :blocks => 11,
                                          :slam_dunks => 1
                                        } 
                  
                }
          
        },
          away:{:team_name => "Charlotte Hornets",
                :colors => [ "Turquoise", "Purple"],
                :players => { 
                          
                        "Jeff Adrien" =>{
                                          :number => 4,
                                          :shoe => 18,
                                          :points => 10,
                                          :rebounds => 1,
                                          :assists => 1,
                                          :steals => 2,
                                          :blocks => 7,
                                          :slam_dunks => 2
                                        },
                         "Bismak Biyombo" =>{
                                          :number => 0,
                                          :shoe => 16,
                                          :points => 12,
                                          :rebounds => 4,
                                          :assists => 7,
                                          :steals => 7,
                                          :blocks => 15,
                                        :slam_dunks => 10
                                        },
                         "DeSagna Diop" => {
                                          :number => 2,
                                          :shoe => 14,
                                          :points => 24,
                                          :rebounds => 12,
                                          :assists => 12,
                                          :steals => 4,
                                          :blocks => 5,
                                          :slam_dunks => 5
                                         },
                        "Ben Gordon" =>{
                                          :number => 8,
                                          :shoe => 15,
                                          :points => 33,
                                          :rebounds => 3,
                                          :assists => 2,
                                          :steals => 1,
                                          :blocks => 1,
                                          :slam_dunks => 0
                                         },
                         "Brendan Haywood" => {
                                          :number => 33,
                                          :shoe => 15,
                                          :points => 6,
                                          :rebounds => 12,
                                          :assists => 12,
                                          :steals => 22,
                                          :blocks => 5,
                                         :slam_dunks => 12
                                        } 
                  
                }
          
        }
 } 
end

def num_points_scored(player_name)
game_hash.each do |key1,value1|
    if value1[:players][player_name] != nil 
    score = value1[:players][player_name][:points]
  end
    # value1.each do |key2,value2|
    #   if key2 == :players
    #     value2.each do |key3,valu3|
    #       if key3 == player_name 
    #       valu3.each do |key4,value4|
    #         if key4 == :points
    #           score = value4
    #         end
    #       end
    #     end
    #   end
    # end
  # end
 end
 score 
end


def shoe_size (player_name)
  shoe_s = 0  
  game_hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :players
        value2.each do |key3,value3|
          if key3 == player_name 
          value3.each do |key4,value4|
            if key4 == :shoe 
              shoe_s = value4
            end
          end
        end
      end
    end
   end
 end
 shoe_s 
end


def team_colors(team)
  right_team = "" 
  colors = ""  
  game_hash.each do |key1,value1|
    value1.each do |key2,value2|
      if value2 == team
        right_team = key1
      end
      if key2 == :colors && right_team == key1
       colors = value2
      end
   end
 end
 colors  
end

def team_names
  teams_arr = []
  game_hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :team_name
        teams_arr.push(value2)
      end
    end
  end
  teams_arr
end

def player_numbers(team)
  right_team = ""
  right_tier =""
  all_numbers_arr = []
  game_hash.each do |key1,value1|
    value1.each do |key2,value2|
      if value2 == team
        right_team = value2
        right_tier = key1
      end
        if key2 == :players && right_team == team && right_tier == key1
          value2.each do |key3,value3|
            value3.each do|key4,value4|
              if key4 == :number
                all_numbers_arr.push(value4)
              end
            
            end
          end
        end
      end
  end
  all_numbers_arr.sort 
end

def player_stats(player)
  given_players_stats = {}
  game_hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :players
       value2.each do |key3,value3|
         if key3 == player
          given_players_stats = value3
         end
       end
      end
    end
  end
  given_players_stats
end

def big_shoe_rebounds
biggest_shoe = 0   
biggest_rebounds = 0 
player_with_biggest_shoe = ""
  
  game_hash.each do |key1,value1|
    value1.each do |key2,value2|
      if key2 == :players
       value2.each do |key3,value3|
         value3.each do |key4,value4|
           if key4 == :shoe && value4 > biggest_shoe
             biggest_shoe = value4
             player_with_biggest_shoe = key3
           end
           
           if key4 == :rebounds && player_with_biggest_shoe == key3 
             biggest_rebounds = value4
           end
         end
       end
      end
    end
  end
  biggest_rebounds
end
