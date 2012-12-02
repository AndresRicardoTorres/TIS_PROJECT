class UserHistory
  include Mongoid::Document
  field :cod, type: String
  field :name, type: String
  field :actors, type: String
  field :dependence, type: String
  field :priotity, type: Integer
  field :iteration, type: String
  field :description, type: String
  field :comments, type: String
  field :true_time, type: Float
  field :creation_date, type: Date
  field :modification_date, type: Date
  
  belongs_to :project
end
