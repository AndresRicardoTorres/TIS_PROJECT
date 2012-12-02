class Project
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  has_many :user_histories
  
  has_many :modulos
  belongs_to :user
end
