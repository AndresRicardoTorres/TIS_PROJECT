class BusinessLogicAssociatedParameter
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :label, type: String
  field :value, type: Float
  field :level, type: String
  field :section, type: String
  
  has_many :estimations, :autosave => true
  # belongs_to :estimation
end
