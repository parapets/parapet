require "parapets/entity/attributes"
require "parapets/entity/validations"

module Parapets
  module Entity
    class Base
      include Entity::Attributes
      include Entity::Validations
    end
  end
end
