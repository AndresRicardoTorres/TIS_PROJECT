class ViewType
  include Mongoid::Document
  field :name, type: String
  field :low, type: Float
  field :medium, type: Float
  field :high, type: Float
  
  belongs_to :estimation
end
