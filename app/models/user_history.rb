class UserHistory
  include Mongoid::Document
  field :identifier, type: String
  field :author, type: String
  field :name, type: String
  field :actors, type: String
  field :dependence, type: String
  field :priority, type: String
  field :iteration, type: Integer
  field :description, type: String
  field :comments, type: String
  field :true_time, type: Float
  field :estimation_time, type: Float
  field :creation_date, type: Date
  field :modification_date, type: Date
  
  belongs_to :project
  has_one :estimation
end
