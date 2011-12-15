module ActiveAdmin
  module Inputs
    class UiDatePickerInput < ::ActiveAdmin::Inputs::DatepickerInput
      def input_html_options
        options = super
        options[:class] = [options[:class], "ui-date-picker"].compact.join(' ')
        options
      end
    end
  end
end
