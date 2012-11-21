class Project
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  embeds_many :user_histories
  
  has_many :modulos
end
