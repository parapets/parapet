require "parapet/entity/attributes"
require "parapet/entity/validations"

module Parapet
  module Entity
    class Base
      include Entity::Attributes
      include Entity::Validations
    end
  end
end
