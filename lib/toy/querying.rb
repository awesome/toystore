module Toy
  module Querying
    extend ActiveSupport::Concern

    module ClassMethods
      def get(id)
        key = store_key(id)
        value = adapter[key]
        logger.debug("ToyStore GET #{key.inspect} #{value.inspect}")
        load(value)
      end

      def get!(id)
        get(id) || raise(Toy::NotFound.new(id))
      end

      def get_multi(*ids)
        ids.flatten.map { |id| get(id) }
      end

      def get_or_new(id)
        get(id) || new(:id => id)
      end

      def get_or_create(id)
        get(id) || create(:id => id)
      end

      def key?(id)
        key = store_key(id)
        value = adapter.key?(key)
        logger.debug("ToyStore KEY #{key.inspect} #{value.inspect}")
        value
      end
      alias :has_key? :key?

      def load(attrs)
        return nil if attrs.nil?
        allocate.initialize_from_database(attrs)
      end
    end
  end
end