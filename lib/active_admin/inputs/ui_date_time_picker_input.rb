module ActiveAdmin
  module Inputs
    class UiDateTimePickerInput < ::Formtastic::Inputs::DatePickerInput
      def input_html_options
        options = super
        options[:class] = [options[:class], "ui-datetime-picker"].compact.join(' ')
        options
      end
    end
  end
end
