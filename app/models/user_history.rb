class UserHistory
  include Mongoid::Document
  field :id, type: PrimaryKey
  field :name, type: String
  field :actors, type: String
  field :dependence, type: String
  field :priotity, type: Integer
  field :iteration, type: String
  field :true_time, type: Decimal
end
