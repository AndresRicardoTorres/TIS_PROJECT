class ParamLevel
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  
  embedded_in :parameter
end
