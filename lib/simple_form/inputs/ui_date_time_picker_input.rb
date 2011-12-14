require 'simple_form/inputs/ui_date_picker_input'

module SimpleForm
  module Inputs
    class UiDateTimePickerInput < UiDatePickerInput
      def css_class
        "ui-datetime-picker"
      end      
    end
  end
end