module Formtastic::Inputs
  class UiDateTimePickerInput < UiDatePickerInput

    def format
      input_options[:format] || '%d %b %Y %H:%M'
    end

    def css_class
      "ui-datetime-picker"
    end
  end
end