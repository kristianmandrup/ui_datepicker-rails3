module SimpleForm
  module Inputs
    class UiDateTimePickerInput < UiDatePickerInput
      def css_class
        "ui-datetime-picker"
      end      
    end
  end
end