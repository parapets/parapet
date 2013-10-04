require 'classes/address'

class Person < Parapet::Entity::Base

  attribute :first_name, String
  attribute :last_name, String
  attribute :address, Address

end

