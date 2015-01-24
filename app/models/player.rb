class Player < ActiveRecord::Base
  POSITIONS = [
    ["GK", "Goalkeeper"],
    ["DF", "Defender"],
    ["MID", "Midfielder"],
    ["FWD", "Forward"],
  ]
end
