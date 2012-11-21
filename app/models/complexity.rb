class Complexity
  include Mongoid::Document
  field :name, type: String
  field :very_high_value, type: Float
  field :high_value, type: Float
  field :mdium_value, type: Float
  field :low_value, type: Float
  
  belongs_to :estimation
end
