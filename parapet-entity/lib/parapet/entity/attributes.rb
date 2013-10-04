require 'virtus'
require 'inflecto' # Required by virtus to finalize some constants

module Parapet
  module Entity
    module Attributes
      extend ActiveSupport::Concern

      included do
        include Virtus.model
        extend VirtusHacks

        attribute :id, String, coerce: false
      end

      # Some hacks required to make Virtus work as needed
      module VirtusHacks
        # Finalizes virtus attributes if needed
        def finalize_attributes!
          if @pending_attributes
            self.attribute_set.finalize
          end
        end

        # Make sure all attributes are finalized before instanciating an object
        def new(*attributes)
          self.finalize_attributes!
          super
        end

        # Catch soft references of classes not yet loaded
        # This allow's to do things like:
        #   class Book < Parapets::Entity::Base
        #     attribute :author, 'Author'
        #   end
        #
        def attribute(name,type,options={})
          if type.kind_of?(String)
            options[:finalize] = false
            @pending_attributes = true
          end

          super
        end

      end
    end
  end
end

