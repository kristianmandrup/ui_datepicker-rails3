module SimpleForm
  module Inputs
    class UiDatePickerInput < Base
      def input
        @builder.text_field(attribute_name, input_html_options)
      end

      protected

      include DateUtil::Localize

      def input_html_options
        super.merge(date_picker_options(object.send(attribute_name)))
      end

      def date_picker_options(value = nil)
        {:value => localized(value)}
      end

      def input_html_classes
        super.push("ui-date-picker")
      end
    end
  end
end
