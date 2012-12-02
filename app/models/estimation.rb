class Estimation
  include Mongoid::Document
  field :total_metrics, type: Float
  field :total_complexity, type: Float
  field :view_type_factor, type: Float
  field :percentage_reuse, type: Float
  field :total_web_points, type: Float
  field :effort, type: Float
  
  # has_many :parameters 
  embeds_many :metric_parameters
  accepts_nested_attributes_for :metric_parameters
end
