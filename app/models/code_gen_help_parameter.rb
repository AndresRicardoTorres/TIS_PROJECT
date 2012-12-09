class CodeGenHelpParameter
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :label, type: String
  field :value, type: Float
  field :level, type: String
  field :section, type: String
end
