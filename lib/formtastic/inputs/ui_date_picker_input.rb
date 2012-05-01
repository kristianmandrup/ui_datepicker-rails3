require 'formtastic/inputs/ui_date_picker_input'

module Formtastic::Inputs
  class UiDatePickerInput < Formtastic::Inputs::StringInput
    def to_html
      input_wrapping do
        label_html <<
          builder.text_field(input_name, input_html_options)
      end
    end

    def format
      input_options[:format] || '%d %b %Y'
    end

    def value
      input_options[:value] || object.send(method).try(:strftime, format)
    end

    def css_class
      "ui-date-picker"
    end

    def input_html_options
      new_class = [super[:class], css_class].compact.join(" ")
      super.update(:class => new_class, :value => localized(value))
    end
    
    def localized value
      value.nil? ? nil : I18n.localize(object.send(method))
    end    
  end
end