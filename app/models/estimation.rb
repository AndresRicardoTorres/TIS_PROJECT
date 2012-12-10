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
  
  belongs_to :business_logic_associated_parameter
  belongs_to :code_gen_help_parameter
  belongs_to :dev_exp_parameter
  belongs_to :view_type_parameter
  belongs_to :user_history
  
  # has_one :business_logic_associated_parameter, :autosave => true
end
