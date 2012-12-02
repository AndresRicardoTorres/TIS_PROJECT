class Parameter
  include Mongoid::Document
  field :name, type: String 
  field :description, type: String
  field :value, type: Float
  
  embeds_one :param_section 
  embeds_one :param_level
end
