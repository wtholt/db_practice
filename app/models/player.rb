class Player < ActiveRecord::Base
  belongs_to :team
  POSITIONS = [
    ["GK", "Goalkeeper"],
    ["DF", "Defender"],
    ["MID", "Midfielder"],
    ["FWD", "Forward"],
  ]
end
