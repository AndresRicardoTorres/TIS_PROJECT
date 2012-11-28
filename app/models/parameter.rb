class Parameter
  include Mongoid::Document
  field :value, type: Float
  field :description, type: String
  
  embeds_one :param_section
  embeds_one :param_category
  embeds_one :param_level
end
