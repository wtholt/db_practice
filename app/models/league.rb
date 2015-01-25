class League < ActiveRecord::Base
  has_many :teams, dependent: :destroy
  has_many :players
end
