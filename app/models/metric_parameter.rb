class MetricParameter
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :value, type: Float
  field :weight, type: Float
  field :quantity, type: Float
  field :optimistic_value, type: Float
  field :probable_value, type: Float
  field :pessimistic_value, type: Float
  
  # embeds_one :param_section
  embedded_in :estimation, :inverse_of => :metric_parameters
end
