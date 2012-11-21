class Metric
  include Mongoid::Document
  field :name, type: String
  field :value, type: Float
  field :weight, type: Float
  field :quantity, type: Float
  field :pessimistic_value, type: Float
  field :optimistic_value, type: Float
  field :probable_value, type: Float
  
  belongs_to :estimation
end
