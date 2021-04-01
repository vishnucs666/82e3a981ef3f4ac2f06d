class User
  require 'autoinc'
  include Mongoid::Document
  include Mongoid::Autoinc
  include Mongoid::Timestamps
  field :firstName, type: String
  field :lastName, type: String
  field :email, type: String
  increments :_id
end
