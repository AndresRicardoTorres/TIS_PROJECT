class ParamSection
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  
  embedded_in :parameter#, :inverse_of => :section #, :class_name => "Estimation", 
end
