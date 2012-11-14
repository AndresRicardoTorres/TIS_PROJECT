class UserHistory
  include Mongoid::Document
  field :cod, type: String
  field :name, type: String
  field :actors, type: String
  field :dependence, type: String
  field :priotity, type: Integer
  field :iteration, type: String
  field :true_time, type: Float
  embedded_in :project, :inverse_of => :user_histories
end
