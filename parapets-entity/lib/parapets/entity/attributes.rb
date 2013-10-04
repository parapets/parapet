require 'virtus'

module Parapets
  module Entity
    module Attributes
      extend ActiveSupport::Concern

      included do
        include Virtus.model
        extend VirtusHacks

        attribute :id, String, coerce: false
      end

      module VirtusHacks
        def finalize_attributes!
          if @pending_attributes
            self.attribute_set.finalize
          end
        end

        def new(*attributes)
          self.finalize_attributes!
          super
        end

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

