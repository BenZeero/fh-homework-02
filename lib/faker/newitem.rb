
module Faker
  class Newitem < Base
    class << self

      def classification_name
        fetch('newitem.classifications')
      end

      def type_name
        fetch('newitem.f_nfi')
      end
    end
  end
end