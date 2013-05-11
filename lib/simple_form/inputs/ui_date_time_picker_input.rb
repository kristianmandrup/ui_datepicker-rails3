require 'simple_form/inputs/ui_date_picker_input'

module SimpleForm
  module Inputs
    class UiDateTimePickerInput < UiDatePickerInput
      def input_html_classes
        super.push("ui-datetime-picker")
      end
    end
  end
end
