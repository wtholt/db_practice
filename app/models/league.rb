class League < ActiveRecord::Base
  has_many :teams, dependent: :destroy
end
